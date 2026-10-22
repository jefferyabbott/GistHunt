import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gisthunt/l10n/app_localizations.dart';
import '../data/gist_social_service.dart';

class UserProfileDialog {
  static final GistSocialService _socialService = GistSocialService();

  static Future<void> show(
    BuildContext context,
    String username, {
    void Function(String username)? onViewGists,
  }) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      final profile = await _socialService.getUserProfile(username);
      if (!context.mounted) return;

      Navigator.pop(context); // Close loading dialog

      if (profile != null) {
        _showProfileSheet(context, profile, onViewGists: onViewGists);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorLoadingUserProfile)),
        );
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.errorWithDetails('$e'))),
        );
      }
    }
  }

  static void _showProfileSheet(
    BuildContext context,
    Map<String, dynamic> profile, {
    void Function(String username)? onViewGists,
  }) {
    final login = profile['login'] as String? ?? 'Unknown';
    final name = profile['name'] as String?;
    final bio = profile['bio'] as String?;
    final avatarUrl = profile['avatar_url'] as String?;
    final location = profile['location'] as String?;
    final company = profile['company'] as String?;
    final blog = profile['blog'] as String?;
    final followers = profile['followers'] as int? ?? 0;
    final following = profile['following'] as int? ?? 0;
    final publicRepos = profile['public_repos'] as int? ?? 0;
    final publicGists = profile['public_gists'] as int? ?? 0;
    final createdAt = profile['created_at'] as String?;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.6,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        expand: false,
        builder: (context, scrollController) => SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Avatar
                if (avatarUrl != null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: CachedNetworkImage(
                      imageUrl: avatarUrl,
                      width: 100,
                      height: 100,
                      placeholder: (context, url) => const SizedBox(
                        width: 100,
                        height: 100,
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.person, size: 100),
                    ),
                  ),
                const SizedBox(height: 16),

                // Name and login
                if (name != null)
                  Text(
                    name,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                Text(
                  '@$login',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
                const SizedBox(height: 12),

                // Bio
                if (bio != null && bio.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      bio,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                const SizedBox(height: 16),

                // Stats
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildClickableStatColumn(
                      context,
                      AppLocalizations.of(context)!.followers,
                      followers,
                      () => _showUserList(
                          context, login, AppLocalizations.of(context)!.followers, true),
                    ),
                    _buildClickableStatColumn(
                      context,
                      AppLocalizations.of(context)!.following,
                      following,
                      () => _showUserList(
                          context, login, AppLocalizations.of(context)!.following, false),
                    ),
                    _buildStatColumn(context, AppLocalizations.of(context)!.repos, publicRepos),
                    _buildStatColumn(context, AppLocalizations.of(context)!.gists, publicGists),
                  ],
                ),
                const SizedBox(height: 20),

                // Additional info
                if (location != null && location.isNotEmpty)
                  _buildInfoRow(context, Icons.location_on, location),
                if (company != null && company.isNotEmpty)
                  _buildInfoRow(context, Icons.business, company),
                if (blog != null && blog.isNotEmpty)
                  _buildClickableInfoRow(
                    context,
                    Icons.link,
                    blog,
                    () => _confirmOpenUrl(context, blog),
                  ),
                if (createdAt != null)
                  _buildInfoRow(
                    context,
                    Icons.calendar_today,
                    AppLocalizations.of(context)!.joinedDate(_formatJoinDate(createdAt)),
                  ),

                const SizedBox(height: 20),

                // View gists button (optional)
                if (onViewGists != null)
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                      onViewGists(login);
                    },
                    icon: const Icon(Icons.code),
                    label: Text(AppLocalizations.of(context)!.viewUserGists(login)),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _buildStatColumn(BuildContext context, String label, int value) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }

  static Widget _buildClickableStatColumn(
    BuildContext context,
    String label,
    int value,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: value > 0 ? onTap : null,
      child: Column(
        children: [
          Text(
            value.toString(),
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: value > 0
                      ? Theme.of(context).colorScheme.primary
                      : null,
                  decoration: value > 0 ? TextDecoration.underline : null,
                ),
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  static Widget _buildInfoRow(BuildContext context, IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 16, color: Theme.of(context).colorScheme.primary),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildClickableInfoRow(
    BuildContext context,
    IconData icon,
    String text,
    VoidCallback onTap,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 16, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      decoration: TextDecoration.underline,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Future<void> _confirmOpenUrl(BuildContext context, String url) async {
    // Ensure URL has a scheme
    String urlToOpen = url;
    if (!url.startsWith('http://') && !url.startsWith('https://')) {
      urlToOpen = 'https://$url';
    }

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.openLink),
        content: Text(AppLocalizations.of(context)!.openLinkConfirmation(urlToOpen)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(AppLocalizations.of(context)!.open),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      final uri = Uri.parse(urlToOpen);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(AppLocalizations.of(context)!.couldNotOpenLink)),
          );
        }
      }
    }
  }

  static Future<void> _showUserList(
    BuildContext context,
    String username,
    String title,
    bool isFollowers,
  ) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      final users = isFollowers
          ? await _socialService.getUserFollowers(username)
          : await _socialService.getUserFollowing(username);

      if (!context.mounted) return;
      Navigator.pop(context); // Close loading dialog

      if (users.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(isFollowers
                  ? AppLocalizations.of(context)!.noFollowersFound
                  : AppLocalizations.of(context)!.noFollowingFound)),
        );
        return;
      }

      _showUserListDialog(context, title, users);
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(isFollowers
                  ? AppLocalizations.of(context)!.errorLoadingFollowers('$e')
                  : AppLocalizations.of(context)!.errorLoadingFollowing('$e'))),
        );
      }
    }
  }

  static void _showUserListDialog(
    BuildContext context,
    String title,
    List<Map<String, dynamic>> users,
  ) {
    // Capture the root navigator now; this context is gone once the modals close.
    final navigator = Navigator.of(context, rootNavigator: true);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (sheetContext) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        expand: false,
        builder: (context, scrollController) => Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '(${users.length})',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(sheetContext),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            // User list
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  final login = user['login'] as String? ?? 'Unknown';
                  final avatarUrl = user['avatar_url'] as String?;

                  return ListTile(
                    leading: avatarUrl != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              imageUrl: avatarUrl,
                              width: 40,
                              height: 40,
                              placeholder: (context, url) => const SizedBox(
                                width: 40,
                                height: 40,
                                child: CircularProgressIndicator(strokeWidth: 2),
                              ),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.person),
                            ),
                          )
                        : const Icon(Icons.person),
                    title: Text(
                      login,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () async {
                      // Grab the root context before popping; the sheet's own context won't survive.
                      final navContext = navigator.context;

                      navigator.pop(); // Close the user list
                      navigator.pop(); // Close the original profile sheet

                      final profile = await _socialService.getUserProfile(login);
                      if (profile != null && navContext.mounted) {
                        _showProfileSheet(navContext, profile);
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  static String _formatJoinDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      final months = [
        'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
        'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
      ];
      return '${months[date.month - 1]} ${date.year}';
    } catch (e) {
      return dateString;
    }
  }
}
