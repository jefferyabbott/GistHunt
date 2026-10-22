import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:provider/provider.dart';
import '../themes/font_size_provider.dart';
import '../themes/tab_size_provider.dart';
import '../themes/theme_provider.dart';
import '../screens/login_screen.dart';
import '../data/gist_organization_service.dart';
import '../data/export_settings_service.dart';
import 'user_profile_dialog.dart';
import 'package:gisthunt/l10n/app_localizations.dart';

class SettingsDrawer extends StatefulWidget {
  final String? profileUrl;
  final String? username;

  const SettingsDrawer({
    super.key,
    this.profileUrl,
    this.username,
  });

  @override
  State<SettingsDrawer> createState() => _SettingsDrawerState();
}

class _SettingsDrawerState extends State<SettingsDrawer> {
  final storage = const FlutterSecureStorage();
  static const _macosChannel = MethodChannel('com.gisthunt/macos');
  bool _launchAtLoginEnabled = false;

  @override
  void initState() {
    super.initState();
    if (Platform.isMacOS) {
      _loadLaunchAtLoginStatus();
    }
  }

  Future<void> _loadLaunchAtLoginStatus() async {
    try {
      final enabled = await _macosChannel.invokeMethod<bool>('isLaunchAtLoginEnabled');
      if (mounted) {
        setState(() {
          _launchAtLoginEnabled = enabled ?? false;
        });
      }
    } catch (e) {
      // Not supported on this platform; leave the toggle off.
    }
  }

  Future<void> _setLaunchAtLogin(bool enabled) async {
    try {
      await _macosChannel.invokeMethod('setLaunchAtLogin', enabled);
      if (mounted) {
        setState(() {
          _launchAtLoginEnabled = enabled;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorSettingLaunchAtLogin('$e'))),
        );
      }
    }
  }

  Future<void> _handleQuit() async {
    try {
      await _macosChannel.invokeMethod('quitApp');
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorQuittingApp('$e'))),
        );
      }
    }
  }

  Future<void> _handleLogout() async {
    try {
      await storage.delete(key: 'github_token');
      if (mounted) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (route) => false,
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorLoggingOut('$e'))),
        );
      }
    }
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 8, top: 16),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
        ),
      ),
    );
  }

  Widget _buildSettingsTile({
    required IconData icon,
    required String title,
    Widget? trailing,
    VoidCallback? onTap,
    Color? iconColor,
    Color? textColor,
  }) {
    final defaultColor = Theme.of(context).colorScheme.onSurface;
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 4),
      leading: Icon(
        icon,
        color: iconColor ?? defaultColor.withValues(alpha: 0.8),
        size: 22,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: textColor ?? defaultColor,
          fontSize: 15,
        ),
      ),
      trailing: trailing,
      onTap: onTap,
      dense: true,
      visualDensity: const VisualDensity(vertical: -1),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDark = themeProvider.isDarkMode;
    final colorScheme = Theme.of(context).colorScheme;

    final screenHeight = MediaQuery.of(context).size.height;
    final isCompact = screenHeight < 750;
    final avatarRadius = isCompact ? 40.0 : 50.0;
    final imageSize = avatarRadius * 2;

    return Drawer(
      backgroundColor: colorScheme.surface,
      width: 320,
      child: SafeArea(
        child: Column(
          children: [
            // Profile section
            if (widget.profileUrl != null) ...[
              const SizedBox(height: 24),
              GestureDetector(
                onTap: widget.username != null
                    ? () => UserProfileDialog.show(context, widget.username!)
                    : null,
                child: CircleAvatar(
                  radius: avatarRadius,
                  backgroundColor: colorScheme.primary.withValues(alpha: 0.1),
                  child: ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: widget.profileUrl!,
                      width: imageSize,
                      height: imageSize,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const CircularProgressIndicator(),
                      errorWidget: (context, url, error) => const Icon(Icons.person),
                    ),
                  ),
                ),
              ),
              if (widget.username != null) ...[
                const SizedBox(height: 12),
                GestureDetector(
                  onTap: () => UserProfileDialog.show(context, widget.username!),
                  child: Text(
                    widget.username!,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 16),
            ] else ...[
              const SizedBox(height: 16),
            ],

            // Scrollable settings content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Appearance section
                    _buildSectionHeader(AppLocalizations.of(context)!.theme),
                    Container(
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Consumer<ThemeProvider>(
                        builder: (context, themeProvider, _) {
                          return Column(
                            children: [
                              _buildThemeOption(
                                AppLocalizations.of(context)!.lightTheme,
                                Icons.light_mode_outlined,
                                AppThemeMode.light,
                                themeProvider,
                                isFirst: true,
                              ),
                              _buildDivider(),
                              _buildThemeOption(
                                AppLocalizations.of(context)!.darkTheme,
                                Icons.dark_mode_outlined,
                                AppThemeMode.dark,
                                themeProvider,
                              ),
                              _buildDivider(),
                              _buildThemeOption(
                                AppLocalizations.of(context)!.systemTheme,
                                Icons.settings_brightness_outlined,
                                AppThemeMode.system,
                                themeProvider,
                                isLast: true,
                              ),
                            ],
                          );
                        },
                      ),
                    ),

                    // Font Size section
                    _buildSectionHeader(AppLocalizations.of(context)!.fontSize),
                    Container(
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Consumer<FontSizeProvider>(
                        builder: (context, fontSizeProvider, _) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'A',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: colorScheme.onSurface.withValues(alpha: 0.6),
                                    ),
                                  ),
                                  Expanded(
                                    child: Slider(
                                      value: fontSizeProvider.fontSize,
                                      min: fontSizeProvider.minFontSize,
                                      max: fontSizeProvider.maxFontSize,
                                      divisions: 28,
                                      onChanged: (value) => fontSizeProvider.setFontSize(value),
                                    ),
                                  ),
                                  Text(
                                    'A',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: colorScheme.onSurface.withValues(alpha: 0.6),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Container(
                                height: isCompact ? 100 : 120,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: colorScheme.outline.withValues(alpha: 0.2),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: HighlightView(
                                    'function hello() {\n  console.log("Preview");\n}',
                                    language: 'javascript',
                                    theme: isDark ? monokaiSublimeTheme : githubTheme,
                                    padding: const EdgeInsets.all(12),
                                    textStyle: TextStyle(
                                      fontFamily: 'JetBrainsMono',
                                      fontSize: fontSizeProvider.fontSize,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),

                    // Tab Size section
                    _buildSectionHeader(AppLocalizations.of(context)!.tabSize),
                    Container(
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Consumer<TabSizeProvider>(
                        builder: (context, tabSizeProvider, _) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.space_bar, size: 20),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Slider(
                                      value: tabSizeProvider.tabSize.toDouble(),
                                      min: tabSizeProvider.minTabSize.toDouble(),
                                      max: tabSizeProvider.maxTabSize.toDouble(),
                                      divisions: (tabSizeProvider.maxTabSize - tabSizeProvider.minTabSize),
                                      label: AppLocalizations.of(context)!.tabSizeSpaces(tabSizeProvider.tabSize),
                                      onChanged: (value) => tabSizeProvider.setTabSize(value.toInt()),
                                    ),
                                  ),
                                  Text(
                                    '${tabSizeProvider.tabSize}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                AppLocalizations.of(context)!.tabKeyWillInsert(tabSizeProvider.tabSize),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: colorScheme.onSurface.withValues(alpha: 0.6),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),

                    // Display section
                    _buildSectionHeader(AppLocalizations.of(context)!.display),
                    Container(
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          ListenableBuilder(
                            listenable: GistOrganizationService(),
                            builder: (context, _) {
                              final organizationService = GistOrganizationService();
                              return _buildSettingsTile(
                                icon: Icons.archive_outlined,
                                title: AppLocalizations.of(context)!.showArchived,
                                trailing: Switch.adaptive(
                                  value: organizationService.showArchived,
                                  onChanged: (value) {
                                    organizationService.setShowArchived(value);
                                  },
                                ),
                              );
                            },
                          ),
                          if (Platform.isMacOS) ...[
                            _buildDivider(),
                            ListenableBuilder(
                              listenable: ExportSettingsService(),
                              builder: (context, _) {
                                final exportService = ExportSettingsService();
                                return _buildSettingsTile(
                                  icon: Icons.folder_open_outlined,
                                  title: AppLocalizations.of(context)!.openInFinderAfterExport,
                                  trailing: Switch.adaptive(
                                    value: exportService.revealInFinder,
                                    onChanged: (value) {
                                      exportService.setRevealInFinder(value);
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ],
                      ),
                    ),

                    // Account section
                    _buildSectionHeader(AppLocalizations.of(context)!.account),
                    Container(
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: _buildSettingsTile(
                        icon: Icons.logout_outlined,
                        title: AppLocalizations.of(context)!.logout,
                        onTap: _handleLogout,
                      ),
                    ),

                    // System section (macOS only)
                    if (Platform.isMacOS) ...[
                      _buildSectionHeader(AppLocalizations.of(context)!.system),
                      Container(
                        decoration: BoxDecoration(
                          color: colorScheme.surfaceContainerHighest,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            _buildSettingsTile(
                              icon: Icons.login_outlined,
                              title: AppLocalizations.of(context)!.launchAtLogin,
                              trailing: Switch.adaptive(
                                value: _launchAtLoginEnabled,
                                onChanged: _setLaunchAtLogin,
                              ),
                            ),
                            _buildDivider(),
                            _buildSettingsTile(
                              icon: Icons.power_settings_new_outlined,
                              title: AppLocalizations.of(context)!.quit,
                              onTap: _handleQuit,
                              iconColor: colorScheme.error,
                              textColor: colorScheme.error,
                            ),
                          ],
                        ),
                      ),
                    ],

                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThemeOption(
    String title,
    IconData icon,
    AppThemeMode mode,
    ThemeProvider themeProvider, {
    bool isFirst = false,
    bool isLast = false,
  }) {
    final isSelected = themeProvider.themeMode == mode;
    return InkWell(
      onTap: () => themeProvider.setThemeMode(mode),
      borderRadius: BorderRadius.vertical(
        top: isFirst ? const Radius.circular(12) : Radius.zero,
        bottom: isLast ? const Radius.circular(12) : Radius.zero,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontSize: 15),
              ),
            ),
            if (isSelected)
              Icon(
                Icons.check,
                size: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 1,
      indent: 16,
      endIndent: 16,
      color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
    );
  }
}
