import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_no.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('ca'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('en', 'AU'),
    Locale('en', 'CA'),
    Locale('en', 'GB'),
    Locale('es'),
    Locale('es', 'ES'),
    Locale('es', 'MX'),
    Locale('fi'),
    Locale('fr'),
    Locale('fr', 'CA'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('id'),
    Locale('it'),
    Locale('he'),
    Locale('ja'),
    Locale('ko'),
    Locale('ms'),
    Locale('nl'),
    Locale('no'),
    Locale('pl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('pt', 'PT'),
    Locale('ro'),
    Locale('ru'),
    Locale('sk'),
    Locale('sv'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  ];

  /// GitHub sign in button text
  ///
  /// In en, this message translates to:
  /// **'Sign in with GitHub'**
  String get signIn;

  /// Search functionality label
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// Language filter option
  ///
  /// In en, this message translates to:
  /// **'All Languages'**
  String get allLanguages;

  /// Dark mode toggle label
  ///
  /// In en, this message translates to:
  /// **'DARK MODE'**
  String get darkMode;

  /// Theme selection label
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// Light theme option
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get lightTheme;

  /// Dark theme option
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get darkTheme;

  /// System theme option
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get systemTheme;

  /// Font size adjustment label
  ///
  /// In en, this message translates to:
  /// **'Font Size'**
  String get fontSize;

  /// Logout button text
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// Account section header
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// System section header
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// Display section header
  ///
  /// In en, this message translates to:
  /// **'Display'**
  String get display;

  /// Delete gist button text
  ///
  /// In en, this message translates to:
  /// **'Delete Gist'**
  String get deleteGist;

  /// Delete confirmation message
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this gist?'**
  String get confirmDelete;

  /// Warning about permanent action
  ///
  /// In en, this message translates to:
  /// **'This action cannot be undone.'**
  String get permanent;

  /// Cancel button text
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Delete confirmation button
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// Filename input label
  ///
  /// In en, this message translates to:
  /// **'Filename'**
  String get filename;

  /// Description input label
  ///
  /// In en, this message translates to:
  /// **'Description (optional)'**
  String get description;

  /// Public visibility option
  ///
  /// In en, this message translates to:
  /// **'Public'**
  String get public;

  /// Creation date label
  ///
  /// In en, this message translates to:
  /// **'created:'**
  String get created;

  /// Last update timestamp label
  ///
  /// In en, this message translates to:
  /// **'Last updated:'**
  String get lastUpdated;

  /// Loading message on first launch
  ///
  /// In en, this message translates to:
  /// **'Loading Gists...'**
  String get loadingGists;

  /// Empty state message when user has no gists
  ///
  /// In en, this message translates to:
  /// **'No gists yet'**
  String get noGistsYet;

  /// Empty state message when search returns no results
  ///
  /// In en, this message translates to:
  /// **'No matching gists found'**
  String get noMatchingGists;

  /// Instruction for creating first gist
  ///
  /// In en, this message translates to:
  /// **'Create your first gist by tapping the + button below'**
  String get createFirstGist;

  /// Suggestion when no search results found
  ///
  /// In en, this message translates to:
  /// **'Try adjusting your search or language filter'**
  String get adjustSearch;

  /// Accessibility label for scroll to top button
  ///
  /// In en, this message translates to:
  /// **'Scroll to top'**
  String get scrollToTop;

  /// Accessibility label for create new gist button
  ///
  /// In en, this message translates to:
  /// **'Create new gist'**
  String get createNewGist;

  /// Option to start app when user logs in
  ///
  /// In en, this message translates to:
  /// **'Launch at Login'**
  String get launchAtLogin;

  /// Quit application button text
  ///
  /// In en, this message translates to:
  /// **'Quit'**
  String get quit;

  /// Star button text
  ///
  /// In en, this message translates to:
  /// **'Star'**
  String get star;

  /// Unstar button text
  ///
  /// In en, this message translates to:
  /// **'Unstar'**
  String get unstar;

  /// Indicates gist is starred
  ///
  /// In en, this message translates to:
  /// **'Starred'**
  String get starred;

  /// Fork button text
  ///
  /// In en, this message translates to:
  /// **'Fork'**
  String get fork;

  /// Indicates gist was forked
  ///
  /// In en, this message translates to:
  /// **'Forked'**
  String get forked;

  /// Success message after forking
  ///
  /// In en, this message translates to:
  /// **'Gist forked successfully!'**
  String get forkSuccess;

  /// Public gists section title
  ///
  /// In en, this message translates to:
  /// **'Public Gists'**
  String get publicGists;

  /// Button to browse public gists
  ///
  /// In en, this message translates to:
  /// **'Browse Public Gists'**
  String get browsePublicGists;

  /// Error message for star operation
  ///
  /// In en, this message translates to:
  /// **'Error starring gist'**
  String get errorStarring;

  /// Error message for fork operation
  ///
  /// In en, this message translates to:
  /// **'Error forking gist'**
  String get errorForking;

  /// Load more button text
  ///
  /// In en, this message translates to:
  /// **'Load More'**
  String get loadMore;

  /// Empty state for public gists
  ///
  /// In en, this message translates to:
  /// **'No public gists found'**
  String get noPublicGists;

  /// Starred gists section title
  ///
  /// In en, this message translates to:
  /// **'Starred Gists'**
  String get starredGists;

  /// My gists section title
  ///
  /// In en, this message translates to:
  /// **'My Gists'**
  String get myGists;

  /// Share button text
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// Share gist action
  ///
  /// In en, this message translates to:
  /// **'Share Gist'**
  String get shareGist;

  /// Export gist as file action
  ///
  /// In en, this message translates to:
  /// **'Export as File'**
  String get exportFile;

  /// Generate QR code action
  ///
  /// In en, this message translates to:
  /// **'Generate QR Code'**
  String get generateQRCode;

  /// Copy embed code action
  ///
  /// In en, this message translates to:
  /// **'Copy Embed Code'**
  String get copyEmbedCode;

  /// Copy gist URL action
  ///
  /// In en, this message translates to:
  /// **'Copy Gist URL'**
  String get copyGistUrl;

  /// More actions menu
  ///
  /// In en, this message translates to:
  /// **'More Actions'**
  String get moreActions;

  /// Export success message
  ///
  /// In en, this message translates to:
  /// **'Gist exported successfully'**
  String get exportSuccess;

  /// Export error message
  ///
  /// In en, this message translates to:
  /// **'Error exporting gist'**
  String get exportError;

  /// Embed code copied message
  ///
  /// In en, this message translates to:
  /// **'Embed code copied to clipboard'**
  String get embedCodeCopied;

  /// URL copied message
  ///
  /// In en, this message translates to:
  /// **'URL copied to clipboard'**
  String get urlCopied;

  /// QR code dialog title
  ///
  /// In en, this message translates to:
  /// **'QR Code'**
  String get qrCodeTitle;

  /// QR code instruction
  ///
  /// In en, this message translates to:
  /// **'Scan to open gist'**
  String get scanToOpen;

  /// Placeholder for public gists search field
  ///
  /// In en, this message translates to:
  /// **'Search or @username'**
  String get searchPublicGistsHint;

  /// Close button text
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// Clear button text
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// Suggestion when search returns no results
  ///
  /// In en, this message translates to:
  /// **'Try a different search term'**
  String get tryDifferentSearch;

  /// Search result count for user gists
  ///
  /// In en, this message translates to:
  /// **'Showing {count} gists from user'**
  String showingGistsFromUser(int count);

  /// Search result count with hint
  ///
  /// In en, this message translates to:
  /// **'Found {count} in loaded gists. Use @username to fetch all gists from a user.'**
  String foundInLoadedGists(int count);

  /// Raw markdown view toggle
  ///
  /// In en, this message translates to:
  /// **'Raw'**
  String get raw;

  /// Rendered markdown preview toggle
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get preview;

  /// Sort options menu label
  ///
  /// In en, this message translates to:
  /// **'Sort by'**
  String get sortBy;

  /// Sort by newest date
  ///
  /// In en, this message translates to:
  /// **'Date (Newest)'**
  String get sortDateNewest;

  /// Sort by oldest date
  ///
  /// In en, this message translates to:
  /// **'Date (Oldest)'**
  String get sortDateOldest;

  /// Sort by name ascending
  ///
  /// In en, this message translates to:
  /// **'Name (A-Z)'**
  String get sortNameAsc;

  /// Sort by name descending
  ///
  /// In en, this message translates to:
  /// **'Name (Z-A)'**
  String get sortNameDesc;

  /// Sort by language
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get sortLanguage;

  /// Sort by star count
  ///
  /// In en, this message translates to:
  /// **'Stars'**
  String get sortStars;

  /// Pin gist action
  ///
  /// In en, this message translates to:
  /// **'Pin'**
  String get pin;

  /// Unpin gist action
  ///
  /// In en, this message translates to:
  /// **'Unpin'**
  String get unpin;

  /// Indicates gist is pinned
  ///
  /// In en, this message translates to:
  /// **'Pinned'**
  String get pinned;

  /// Archive gist action
  ///
  /// In en, this message translates to:
  /// **'Archive'**
  String get archive;

  /// Unarchive gist action
  ///
  /// In en, this message translates to:
  /// **'Unarchive'**
  String get unarchive;

  /// Indicates gist is archived
  ///
  /// In en, this message translates to:
  /// **'Archived'**
  String get archived;

  /// Toggle to show archived gists
  ///
  /// In en, this message translates to:
  /// **'Show Archived'**
  String get showArchived;

  /// Toggle to hide archived gists
  ///
  /// In en, this message translates to:
  /// **'Hide Archived'**
  String get hideArchived;

  /// Confirmation that gist was pinned
  ///
  /// In en, this message translates to:
  /// **'Gist pinned'**
  String get gistPinned;

  /// Confirmation that gist was unpinned
  ///
  /// In en, this message translates to:
  /// **'Gist unpinned'**
  String get gistUnpinned;

  /// Confirmation that gist was archived
  ///
  /// In en, this message translates to:
  /// **'Gist archived'**
  String get gistArchived;

  /// Confirmation that gist was unarchived
  ///
  /// In en, this message translates to:
  /// **'Gist unarchived'**
  String get gistUnarchived;

  /// Organization menu label
  ///
  /// In en, this message translates to:
  /// **'Organize'**
  String get organize;

  /// Export only the selected file
  ///
  /// In en, this message translates to:
  /// **'Export Selected File'**
  String get exportCurrentFile;

  /// Export all files in the gist
  ///
  /// In en, this message translates to:
  /// **'Export All Files'**
  String get exportAllFiles;

  /// Share only the selected file
  ///
  /// In en, this message translates to:
  /// **'Share Selected File'**
  String get shareCurrentFile;

  /// Share all files in the gist
  ///
  /// In en, this message translates to:
  /// **'Share All Files'**
  String get shareAllFiles;

  /// Delete only the selected file
  ///
  /// In en, this message translates to:
  /// **'Delete Selected File'**
  String get deleteSelectedFile;

  /// Delete the entire gist and all files
  ///
  /// In en, this message translates to:
  /// **'Delete Entire Gist'**
  String get deleteAllFiles;

  /// Message when all files exported successfully
  ///
  /// In en, this message translates to:
  /// **'All files exported to'**
  String get exportAllSuccess;

  /// Count of files exported
  ///
  /// In en, this message translates to:
  /// **'{count} files exported'**
  String filesExported(int count);

  /// Setting to reveal exported files in Finder
  ///
  /// In en, this message translates to:
  /// **'Open Finder after file export'**
  String get openInFinderAfterExport;

  /// Generic OK button
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// Button to open a link
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// Button to discard changes
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get discard;

  /// Generic error message with details
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String errorWithDetails(String error);

  /// Error shown when gist file content fails to load, with HTTP status code
  ///
  /// In en, this message translates to:
  /// **'Error loading content: {statusCode}'**
  String errorLoadingContent(int statusCode);

  /// Placeholder shown when a gist has no description
  ///
  /// In en, this message translates to:
  /// **'No description'**
  String get noDescription;

  /// Shown below a truncated file list, with the number of hidden files
  ///
  /// In en, this message translates to:
  /// **'... and {count, plural, =1{1 more file} other{{count} more files}}'**
  String moreFiles(int count);

  /// Gist creation time, e.g. "Created: 2 days ago"
  ///
  /// In en, this message translates to:
  /// **'Created: {time}'**
  String createdTimeAgo(String time);

  /// Gist last update time, e.g. "Updated: 2 days ago"
  ///
  /// In en, this message translates to:
  /// **'Updated: {time}'**
  String updatedTimeAgo(String time);

  /// Gist last update time, e.g. "Last updated: 2 days ago"
  ///
  /// In en, this message translates to:
  /// **'Last updated: {time}'**
  String lastUpdatedTimeAgo(String time);

  /// Title/button for deleting a single file from a gist
  ///
  /// In en, this message translates to:
  /// **'Delete File'**
  String get deleteFile;

  /// Confirmation message before deleting a single file
  ///
  /// In en, this message translates to:
  /// **'You are about to permanently delete the file \"{fileName}\".'**
  String deleteFileMessage(String fileName);

  /// Confirmation message before deleting a single-file gist
  ///
  /// In en, this message translates to:
  /// **'You are about to permanently delete this gist.'**
  String get deleteGistMessage;

  /// Confirmation message before deleting a multi-file gist
  ///
  /// In en, this message translates to:
  /// **'You are about to permanently delete this entire gist and all its files.'**
  String get deleteEntireGistMessage;

  /// Title of the conflict resolution screen
  ///
  /// In en, this message translates to:
  /// **'Conflict Resolution'**
  String get conflictResolution;

  /// Shown when there are no remaining sync conflicts
  ///
  /// In en, this message translates to:
  /// **'All conflicts resolved!'**
  String get allConflictsResolved;

  /// Conflict resolution screen title showing position in the list
  ///
  /// In en, this message translates to:
  /// **'Conflict {current} of {total}'**
  String conflictProgress(int current, int total);

  /// Tooltip for going to the previous conflict
  ///
  /// In en, this message translates to:
  /// **'Previous conflict'**
  String get previousConflict;

  /// Tooltip for going to the next conflict
  ///
  /// In en, this message translates to:
  /// **'Next conflict'**
  String get nextConflict;

  /// Explanation of a sync conflict
  ///
  /// In en, this message translates to:
  /// **'This gist was modified both locally and remotely. Choose which version to keep.'**
  String get conflictExplanation;

  /// Label identifying the conflicting gist by description or ID
  ///
  /// In en, this message translates to:
  /// **'Gist: {name}'**
  String conflictGistLabel(String name);

  /// Header for the local version in a conflict comparison
  ///
  /// In en, this message translates to:
  /// **'Your Local Version'**
  String get yourLocalVersion;

  /// Header for the remote version in a conflict comparison
  ///
  /// In en, this message translates to:
  /// **'Remote Version (GitHub)'**
  String get remoteVersionGitHub;

  /// Heading above conflict resolution options
  ///
  /// In en, this message translates to:
  /// **'Choose Resolution:'**
  String get chooseResolution;

  /// Conflict resolution option to keep local changes
  ///
  /// In en, this message translates to:
  /// **'Keep My Local Changes'**
  String get keepMyLocalChanges;

  /// Description of the keep-local resolution option
  ///
  /// In en, this message translates to:
  /// **'Overwrite the remote version with your local changes'**
  String get keepMyLocalChangesDescription;

  /// Conflict resolution option to keep the remote version
  ///
  /// In en, this message translates to:
  /// **'Keep Remote Version'**
  String get keepRemoteVersion;

  /// Description of the keep-remote resolution option
  ///
  /// In en, this message translates to:
  /// **'Discard your local changes and use the GitHub version'**
  String get keepRemoteVersionDescription;

  /// Conflict resolution option to discard local changes
  ///
  /// In en, this message translates to:
  /// **'Discard Local Changes'**
  String get discardLocalChanges;

  /// Description of the discard resolution option
  ///
  /// In en, this message translates to:
  /// **'Remove this operation from the sync queue'**
  String get discardLocalChangesDescription;

  /// Shown when a version has no modification time
  ///
  /// In en, this message translates to:
  /// **'Modified: unknown'**
  String get modifiedUnknown;

  /// Modification time of a version, e.g. "Modified: 5 minutes ago"
  ///
  /// In en, this message translates to:
  /// **'Modified: {time}'**
  String modifiedAt(String time);

  /// Label above a list of files
  ///
  /// In en, this message translates to:
  /// **'Files:'**
  String get filesLabel;

  /// Marker shown next to a file that was deleted locally
  ///
  /// In en, this message translates to:
  /// **'deleted'**
  String get fileDeletedLabel;

  /// Number of characters in a file
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 char} other{{count} chars}}'**
  String charCount(int count);

  /// Relative time for less than a minute ago
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get justNow;

  /// Relative time in minutes
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 minute ago} other{{count} minutes ago}}'**
  String minutesAgo(int count);

  /// Relative time in hours
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 hour ago} other{{count} hours ago}}'**
  String hoursAgo(int count);

  /// Relative time in days
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 day ago} other{{count} days ago}}'**
  String daysAgo(int count);

  /// Title of the keep-local confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Keep Local Changes?'**
  String get keepLocalChangesTitle;

  /// Body of the keep-local confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'This will overwrite the remote version with your local changes. This action cannot be undone.'**
  String get keepLocalChangesMessage;

  /// Button to confirm keeping local changes
  ///
  /// In en, this message translates to:
  /// **'Keep Local'**
  String get keepLocal;

  /// Title of the keep-remote confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Keep Remote Version?'**
  String get keepRemoteVersionTitle;

  /// Body of the keep-remote confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'This will discard your local changes and keep the remote version. This action cannot be undone.'**
  String get keepRemoteVersionMessage;

  /// Button to confirm keeping the remote version
  ///
  /// In en, this message translates to:
  /// **'Keep Remote'**
  String get keepRemote;

  /// Title of the discard-changes confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Discard Changes?'**
  String get discardChangesTitle;

  /// Body of the discard-changes confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'This will remove your local changes without syncing them. This action cannot be undone.'**
  String get discardChangesMessage;

  /// Error when trying to remove the last file of a gist
  ///
  /// In en, this message translates to:
  /// **'Gist must have at least one file'**
  String get gistMustHaveOneFile;

  /// Error when creating a gist fails
  ///
  /// In en, this message translates to:
  /// **'Error creating gist: {error}'**
  String errorCreatingGist(String error);

  /// Shown when a new gist is queued for sync while offline
  ///
  /// In en, this message translates to:
  /// **'Gist saved offline. Will sync when connected.'**
  String get gistSavedOffline;

  /// Error when saving a gist fails
  ///
  /// In en, this message translates to:
  /// **'Error saving gist: {error}'**
  String errorSavingGist(String error);

  /// Shown when gist edits are queued for sync while offline
  ///
  /// In en, this message translates to:
  /// **'Changes saved offline. Will sync when connected.'**
  String get changesSavedOffline;

  /// Asks whether to delete one file or the whole multi-file gist
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete only \"{fileName}\" or the entire gist?'**
  String deleteFileOrGistPrompt(String fileName);

  /// Error when a delete operation fails
  ///
  /// In en, this message translates to:
  /// **'Error deleting: {error}'**
  String errorDeleting(String error);

  /// Tooltip for adding a file to a gist
  ///
  /// In en, this message translates to:
  /// **'Add file'**
  String get addFile;

  /// Tooltip for removing a file from a gist
  ///
  /// In en, this message translates to:
  /// **'Remove file'**
  String get removeFile;

  /// Placeholder name for an unnamed file in the editor
  ///
  /// In en, this message translates to:
  /// **'New file {number}'**
  String newFileNumbered(int number);

  /// Title of the create gist screen
  ///
  /// In en, this message translates to:
  /// **'New Gist'**
  String get newGist;

  /// Hint text for the filename field
  ///
  /// In en, this message translates to:
  /// **'e.g., script.py'**
  String get filenameHint;

  /// Shown when offline with no cached gists
  ///
  /// In en, this message translates to:
  /// **'You are offline. No cached gists available.'**
  String get offlineNoCachedGists;

  /// Title of the sync status dialog
  ///
  /// In en, this message translates to:
  /// **'Sync Status'**
  String get syncStatus;

  /// Shown while sync is in progress
  ///
  /// In en, this message translates to:
  /// **'Syncing...'**
  String get syncing;

  /// Number of pending sync operations
  ///
  /// In en, this message translates to:
  /// **'Pending: {count}'**
  String pendingCountLabel(int count);

  /// Number of sync conflicts
  ///
  /// In en, this message translates to:
  /// **'Conflicts: {count}'**
  String conflictCountLabel(int count);

  /// Heading above the list of queued sync operations
  ///
  /// In en, this message translates to:
  /// **'Operations:'**
  String get operationsLabel;

  /// Button to open the conflict resolution screen
  ///
  /// In en, this message translates to:
  /// **'Resolve Conflicts'**
  String get resolveConflicts;

  /// Shown when sync is requested while offline
  ///
  /// In en, this message translates to:
  /// **'Will sync automatically when connection is restored'**
  String get willSyncWhenRestored;

  /// Button to sync pending operations now
  ///
  /// In en, this message translates to:
  /// **'Sync Now'**
  String get syncNow;

  /// Tooltip for the language filter menu
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// Offline banner text
  ///
  /// In en, this message translates to:
  /// **'You are offline. Changes will sync when connected.'**
  String get offlineChangesWillSync;

  /// Badge showing number of pending sync operations
  ///
  /// In en, this message translates to:
  /// **'{count, plural, other{{count} pending}}'**
  String pendingBadge(int count);

  /// Error when loading public gists fails
  ///
  /// In en, this message translates to:
  /// **'Error loading public gists: {error}'**
  String errorLoadingPublicGists(String error);

  /// Error when searching fails
  ///
  /// In en, this message translates to:
  /// **'Error searching: {error}'**
  String errorSearching(String error);

  /// Gist author attribution
  ///
  /// In en, this message translates to:
  /// **'by {author}'**
  String byAuthor(String author);

  /// Error when sign in fails
  ///
  /// In en, this message translates to:
  /// **'Error signing in: {error}'**
  String errorSigningIn(String error);

  /// Shown on the sign in button while connecting
  ///
  /// In en, this message translates to:
  /// **'Connecting to GitHub'**
  String get connectingToGitHub;

  /// Error when toggling launch at login fails
  ///
  /// In en, this message translates to:
  /// **'Error setting launch at login: {error}'**
  String errorSettingLaunchAtLogin(String error);

  /// Error when quitting the app fails
  ///
  /// In en, this message translates to:
  /// **'Error quitting app: {error}'**
  String errorQuittingApp(String error);

  /// Error when logging out fails
  ///
  /// In en, this message translates to:
  /// **'Error logging out: {error}'**
  String errorLoggingOut(String error);

  /// Tab size settings section header
  ///
  /// In en, this message translates to:
  /// **'Tab Size'**
  String get tabSize;

  /// Tab size slider label
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 space} other{{count} spaces}}'**
  String tabSizeSpaces(int count);

  /// Explanation of the tab size setting
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Tab key will insert 1 space} other{Tab key will insert {count} spaces}}'**
  String tabKeyWillInsert(int count);

  /// Error when a user profile fails to load
  ///
  /// In en, this message translates to:
  /// **'Error loading user profile'**
  String get errorLoadingUserProfile;

  /// User profile followers stat label
  ///
  /// In en, this message translates to:
  /// **'Followers'**
  String get followers;

  /// User profile following stat label
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get following;

  /// User profile public repositories stat label
  ///
  /// In en, this message translates to:
  /// **'Repos'**
  String get repos;

  /// User profile public gists stat label
  ///
  /// In en, this message translates to:
  /// **'Gists'**
  String get gists;

  /// When the user joined GitHub, e.g. "Joined Jan 2020"
  ///
  /// In en, this message translates to:
  /// **'Joined {date}'**
  String joinedDate(String date);

  /// Button to view a user's gists
  ///
  /// In en, this message translates to:
  /// **'View {username}\'s Gists'**
  String viewUserGists(String username);

  /// Title of the open link confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Open Link'**
  String get openLink;

  /// Body of the open link confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Do you want to open this link in your browser?\n\n{url}'**
  String openLinkConfirmation(String url);

  /// Error when a link cannot be opened
  ///
  /// In en, this message translates to:
  /// **'Could not open link'**
  String get couldNotOpenLink;

  /// Shown when a user has no followers
  ///
  /// In en, this message translates to:
  /// **'No followers found'**
  String get noFollowersFound;

  /// Shown when a user follows nobody
  ///
  /// In en, this message translates to:
  /// **'No following found'**
  String get noFollowingFound;

  /// Error when loading followers fails
  ///
  /// In en, this message translates to:
  /// **'Error loading followers: {error}'**
  String errorLoadingFollowers(String error);

  /// Error when loading followed users fails
  ///
  /// In en, this message translates to:
  /// **'Error loading following: {error}'**
  String errorLoadingFollowing(String error);

  /// Warning in the delete confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'This action is permanent and cannot be undone.'**
  String get deleteIsPermanent;

  /// Instruction to type the confirmation word
  ///
  /// In en, this message translates to:
  /// **'Type \"{text}\" to confirm:'**
  String typeToConfirm(String text);

  /// Validation error when the confirmation word does not match
  ///
  /// In en, this message translates to:
  /// **'Please type \"{text}\" exactly'**
  String typeExactly(String text);

  /// Shown after a file is deleted
  ///
  /// In en, this message translates to:
  /// **'File \"{fileName}\" deleted'**
  String fileDeleted(String fileName);

  /// Error when deleting a file fails
  ///
  /// In en, this message translates to:
  /// **'Error deleting file: {error}'**
  String errorDeletingFile(String error);

  /// Shown after a gist is deleted
  ///
  /// In en, this message translates to:
  /// **'Gist deleted'**
  String get gistDeleted;

  /// Error when deleting a gist fails
  ///
  /// In en, this message translates to:
  /// **'Error deleting gist: {error}'**
  String errorDeletingGist(String error);

  /// Shown when a gist has no files
  ///
  /// In en, this message translates to:
  /// **'No files available'**
  String get noFilesAvailable;

  /// Shown when the selected file data is missing
  ///
  /// In en, this message translates to:
  /// **'File data not available'**
  String get fileDataNotAvailable;

  /// Tooltip after content is copied
  ///
  /// In en, this message translates to:
  /// **'Copied!'**
  String get copied;

  /// Tooltip for the copy button
  ///
  /// In en, this message translates to:
  /// **'Copy to clipboard'**
  String get copyToClipboard;

  /// Accessibility label after content is copied
  ///
  /// In en, this message translates to:
  /// **'Content copied to clipboard'**
  String get contentCopiedToClipboard;

  /// Accessibility label for the copy button
  ///
  /// In en, this message translates to:
  /// **'Copy gist content to clipboard'**
  String get copyGistContentToClipboard;

  /// Shown when content cannot be loaded due to no connection
  ///
  /// In en, this message translates to:
  /// **'Internet connection not available'**
  String get internetNotAvailable;

  /// Accessibility label for the edit button
  ///
  /// In en, this message translates to:
  /// **'Edit gist'**
  String get editGist;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'ca',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'fi',
    'fr',
    'hi',
    'hr',
    'hu',
    'id',
    'it',
    'he',
    'ja',
    'ko',
    'ms',
    'nl',
    'no',
    'pl',
    'pt',
    'ro',
    'ru',
    'sk',
    'sv',
    'th',
    'tr',
    'uk',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'en':
      {
        switch (locale.countryCode) {
          case 'AU':
            return AppLocalizationsEnAu();
          case 'CA':
            return AppLocalizationsEnCa();
          case 'GB':
            return AppLocalizationsEnGb();
        }
        break;
      }
    case 'es':
      {
        switch (locale.countryCode) {
          case 'ES':
            return AppLocalizationsEsEs();
          case 'MX':
            return AppLocalizationsEsMx();
        }
        break;
      }
    case 'fr':
      {
        switch (locale.countryCode) {
          case 'CA':
            return AppLocalizationsFrCa();
        }
        break;
      }
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
          case 'PT':
            return AppLocalizationsPtPt();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fi':
      return AppLocalizationsFi();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'he':
      return AppLocalizationsHe();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'ms':
      return AppLocalizationsMs();
    case 'nl':
      return AppLocalizationsNl();
    case 'no':
      return AppLocalizationsNo();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'sk':
      return AppLocalizationsSk();
    case 'sv':
      return AppLocalizationsSv();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
