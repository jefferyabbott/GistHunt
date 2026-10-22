// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get signIn => 'Sign in with GitHub';

  @override
  String get search => 'Search';

  @override
  String get allLanguages => 'All Languages';

  @override
  String get darkMode => 'DARK MODE';

  @override
  String get theme => 'Theme';

  @override
  String get lightTheme => 'Light';

  @override
  String get darkTheme => 'Dark';

  @override
  String get systemTheme => 'System';

  @override
  String get fontSize => 'Font Size';

  @override
  String get logout => 'Logout';

  @override
  String get account => 'Account';

  @override
  String get system => 'System';

  @override
  String get display => 'Display';

  @override
  String get deleteGist => 'Delete Gist';

  @override
  String get confirmDelete => 'Are you sure you want to delete this gist?';

  @override
  String get permanent => 'This action cannot be undone.';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get filename => 'Filename';

  @override
  String get description => 'Description (optional)';

  @override
  String get public => 'Public';

  @override
  String get created => 'created:';

  @override
  String get lastUpdated => 'Last updated:';

  @override
  String get loadingGists => 'Loading Gists...';

  @override
  String get noGistsYet => 'No gists yet';

  @override
  String get noMatchingGists => 'No matching gists found';

  @override
  String get createFirstGist =>
      'Create your first gist by tapping the + button below';

  @override
  String get adjustSearch => 'Try adjusting your search or language filter';

  @override
  String get scrollToTop => 'Scroll to top';

  @override
  String get createNewGist => 'Create new gist';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => 'Quit';

  @override
  String get star => 'Star';

  @override
  String get unstar => 'Unstar';

  @override
  String get starred => 'Starred';

  @override
  String get fork => 'Fork';

  @override
  String get forked => 'Forked';

  @override
  String get forkSuccess => 'Gist forked successfully!';

  @override
  String get publicGists => 'Public Gists';

  @override
  String get browsePublicGists => 'Browse Public Gists';

  @override
  String get errorStarring => 'Error starring gist';

  @override
  String get errorForking => 'Error forking gist';

  @override
  String get loadMore => 'Load More';

  @override
  String get noPublicGists => 'No public gists found';

  @override
  String get starredGists => 'Starred Gists';

  @override
  String get myGists => 'My Gists';

  @override
  String get share => 'Share';

  @override
  String get shareGist => 'Share Gist';

  @override
  String get exportFile => 'Export as File';

  @override
  String get generateQRCode => 'Generate QR Code';

  @override
  String get copyEmbedCode => 'Copy Embed Code';

  @override
  String get copyGistUrl => 'Copy Gist URL';

  @override
  String get moreActions => 'More Actions';

  @override
  String get exportSuccess => 'Gist exported successfully';

  @override
  String get exportError => 'Error exporting gist';

  @override
  String get embedCodeCopied => 'Embed code copied to clipboard';

  @override
  String get urlCopied => 'URL copied to clipboard';

  @override
  String get qrCodeTitle => 'QR Code';

  @override
  String get scanToOpen => 'Scan to open gist';

  @override
  String get searchPublicGistsHint => 'Search or @username';

  @override
  String get close => 'Close';

  @override
  String get clear => 'Clear';

  @override
  String get tryDifferentSearch => 'Try a different search term';

  @override
  String showingGistsFromUser(int count) {
    return 'Showing $count gists from user';
  }

  @override
  String foundInLoadedGists(int count) {
    return 'Found $count in loaded gists. Use @username to fetch all gists from a user.';
  }

  @override
  String get raw => 'Raw';

  @override
  String get preview => 'Preview';

  @override
  String get sortBy => 'Sort by';

  @override
  String get sortDateNewest => 'Date (Newest)';

  @override
  String get sortDateOldest => 'Date (Oldest)';

  @override
  String get sortNameAsc => 'Name (A-Z)';

  @override
  String get sortNameDesc => 'Name (Z-A)';

  @override
  String get sortLanguage => 'Language';

  @override
  String get sortStars => 'Stars';

  @override
  String get pin => 'Pin';

  @override
  String get unpin => 'Unpin';

  @override
  String get pinned => 'Pinned';

  @override
  String get archive => 'Archive';

  @override
  String get unarchive => 'Unarchive';

  @override
  String get archived => 'Archived';

  @override
  String get showArchived => 'Show Archived';

  @override
  String get hideArchived => 'Hide Archived';

  @override
  String get gistPinned => 'Gist pinned';

  @override
  String get gistUnpinned => 'Gist unpinned';

  @override
  String get gistArchived => 'Gist archived';

  @override
  String get gistUnarchived => 'Gist unarchived';

  @override
  String get organize => 'Organize';

  @override
  String get exportCurrentFile => 'Export Selected File';

  @override
  String get exportAllFiles => 'Export All Files';

  @override
  String get shareCurrentFile => 'Share Selected File';

  @override
  String get shareAllFiles => 'Share All Files';

  @override
  String get deleteSelectedFile => 'Delete Selected File';

  @override
  String get deleteAllFiles => 'Delete Entire Gist';

  @override
  String get exportAllSuccess => 'All files exported to';

  @override
  String filesExported(int count) {
    return '$count files exported';
  }

  @override
  String get openInFinderAfterExport => 'Open Finder after file export';

  @override
  String get ok => 'OK';

  @override
  String get open => 'Open';

  @override
  String get discard => 'Discard';

  @override
  String errorWithDetails(String error) {
    return 'Error: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Error loading content: $statusCode';
  }

  @override
  String get noDescription => 'No description';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count more files',
      one: '1 more file',
    );
    return '... and $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Created: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Updated: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Last updated: $time';
  }

  @override
  String get deleteFile => 'Delete File';

  @override
  String deleteFileMessage(String fileName) {
    return 'You are about to permanently delete the file \"$fileName\".';
  }

  @override
  String get deleteGistMessage =>
      'You are about to permanently delete this gist.';

  @override
  String get deleteEntireGistMessage =>
      'You are about to permanently delete this entire gist and all its files.';

  @override
  String get conflictResolution => 'Conflict Resolution';

  @override
  String get allConflictsResolved => 'All conflicts resolved!';

  @override
  String conflictProgress(int current, int total) {
    return 'Conflict $current of $total';
  }

  @override
  String get previousConflict => 'Previous conflict';

  @override
  String get nextConflict => 'Next conflict';

  @override
  String get conflictExplanation =>
      'This gist was modified both locally and remotely. Choose which version to keep.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Your Local Version';

  @override
  String get remoteVersionGitHub => 'Remote Version (GitHub)';

  @override
  String get chooseResolution => 'Choose Resolution:';

  @override
  String get keepMyLocalChanges => 'Keep My Local Changes';

  @override
  String get keepMyLocalChangesDescription =>
      'Overwrite the remote version with your local changes';

  @override
  String get keepRemoteVersion => 'Keep Remote Version';

  @override
  String get keepRemoteVersionDescription =>
      'Discard your local changes and use the GitHub version';

  @override
  String get discardLocalChanges => 'Discard Local Changes';

  @override
  String get discardLocalChangesDescription =>
      'Remove this operation from the sync queue';

  @override
  String get modifiedUnknown => 'Modified: unknown';

  @override
  String modifiedAt(String time) {
    return 'Modified: $time';
  }

  @override
  String get filesLabel => 'Files:';

  @override
  String get fileDeletedLabel => 'deleted';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count chars',
      one: '1 char',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Just now';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes ago',
      one: '1 minute ago',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hours ago',
      one: '1 hour ago',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days ago',
      one: '1 day ago',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Keep Local Changes?';

  @override
  String get keepLocalChangesMessage =>
      'This will overwrite the remote version with your local changes. This action cannot be undone.';

  @override
  String get keepLocal => 'Keep Local';

  @override
  String get keepRemoteVersionTitle => 'Keep Remote Version?';

  @override
  String get keepRemoteVersionMessage =>
      'This will discard your local changes and keep the remote version. This action cannot be undone.';

  @override
  String get keepRemote => 'Keep Remote';

  @override
  String get discardChangesTitle => 'Discard Changes?';

  @override
  String get discardChangesMessage =>
      'This will remove your local changes without syncing them. This action cannot be undone.';

  @override
  String get gistMustHaveOneFile => 'Gist must have at least one file';

  @override
  String errorCreatingGist(String error) {
    return 'Error creating gist: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist saved offline. Will sync when connected.';

  @override
  String errorSavingGist(String error) {
    return 'Error saving gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'Changes saved offline. Will sync when connected.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Do you want to delete only \"$fileName\" or the entire gist?';
  }

  @override
  String errorDeleting(String error) {
    return 'Error deleting: $error';
  }

  @override
  String get addFile => 'Add file';

  @override
  String get removeFile => 'Remove file';

  @override
  String newFileNumbered(int number) {
    return 'New file $number';
  }

  @override
  String get newGist => 'New Gist';

  @override
  String get filenameHint => 'e.g., script.py';

  @override
  String get offlineNoCachedGists =>
      'You are offline. No cached gists available.';

  @override
  String get syncStatus => 'Sync Status';

  @override
  String get syncing => 'Syncing...';

  @override
  String pendingCountLabel(int count) {
    return 'Pending: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Conflicts: $count';
  }

  @override
  String get operationsLabel => 'Operations:';

  @override
  String get resolveConflicts => 'Resolve Conflicts';

  @override
  String get willSyncWhenRestored =>
      'Will sync automatically when connection is restored';

  @override
  String get syncNow => 'Sync Now';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get offlineChangesWillSync =>
      'You are offline. Changes will sync when connected.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pending',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Error loading public gists: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Error searching: $error';
  }

  @override
  String byAuthor(String author) {
    return 'by $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Error signing in: $error';
  }

  @override
  String get connectingToGitHub => 'Connecting to GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Error setting launch at login: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Error quitting app: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Error logging out: $error';
  }

  @override
  String get tabSize => 'Tab Size';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spaces',
      one: '1 space',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tab key will insert $count spaces',
      one: 'Tab key will insert 1 space',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'Error loading user profile';

  @override
  String get followers => 'Followers';

  @override
  String get following => 'Following';

  @override
  String get repos => 'Repos';

  @override
  String get gists => 'Gists';

  @override
  String joinedDate(String date) {
    return 'Joined $date';
  }

  @override
  String viewUserGists(String username) {
    return 'View $username\'s Gists';
  }

  @override
  String get openLink => 'Open Link';

  @override
  String openLinkConfirmation(String url) {
    return 'Do you want to open this link in your browser?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Could not open link';

  @override
  String get noFollowersFound => 'No followers found';

  @override
  String get noFollowingFound => 'No following found';

  @override
  String errorLoadingFollowers(String error) {
    return 'Error loading followers: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Error loading following: $error';
  }

  @override
  String get deleteIsPermanent =>
      'This action is permanent and cannot be undone.';

  @override
  String typeToConfirm(String text) {
    return 'Type \"$text\" to confirm:';
  }

  @override
  String typeExactly(String text) {
    return 'Please type \"$text\" exactly';
  }

  @override
  String fileDeleted(String fileName) {
    return 'File \"$fileName\" deleted';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Error deleting file: $error';
  }

  @override
  String get gistDeleted => 'Gist deleted';

  @override
  String errorDeletingGist(String error) {
    return 'Error deleting gist: $error';
  }

  @override
  String get noFilesAvailable => 'No files available';

  @override
  String get fileDataNotAvailable => 'File data not available';

  @override
  String get copied => 'Copied!';

  @override
  String get copyToClipboard => 'Copy to clipboard';

  @override
  String get contentCopiedToClipboard => 'Content copied to clipboard';

  @override
  String get copyGistContentToClipboard => 'Copy gist content to clipboard';

  @override
  String get internetNotAvailable => 'Internet connection not available';

  @override
  String get editGist => 'Edit gist';
}

/// The translations for English, as used in Australia (`en_AU`).
class AppLocalizationsEnAu extends AppLocalizationsEn {
  AppLocalizationsEnAu() : super('en_AU');

  @override
  String get signIn => 'Sign in with GitHub';

  @override
  String get search => 'Search';

  @override
  String get allLanguages => 'All Languages';

  @override
  String get darkMode => 'DARK MODE';

  @override
  String get theme => 'Theme';

  @override
  String get lightTheme => 'Light';

  @override
  String get darkTheme => 'Dark';

  @override
  String get systemTheme => 'System';

  @override
  String get fontSize => 'Font Size';

  @override
  String get logout => 'Logout';

  @override
  String get account => 'Account';

  @override
  String get system => 'System';

  @override
  String get display => 'Display';

  @override
  String get deleteGist => 'Delete Gist';

  @override
  String get confirmDelete => 'Are you sure you want to delete this gist?';

  @override
  String get permanent => 'This action cannot be undone.';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get filename => 'Filename';

  @override
  String get description => 'Description (optional)';

  @override
  String get public => 'Public';

  @override
  String get created => 'created:';

  @override
  String get lastUpdated => 'Last updated:';

  @override
  String get loadingGists => 'Loading Gists...';

  @override
  String get noGistsYet => 'No gists yet';

  @override
  String get noMatchingGists => 'No matching gists found';

  @override
  String get createFirstGist =>
      'Create your first gist by tapping the + button below';

  @override
  String get adjustSearch => 'Try adjusting your search or language filter';

  @override
  String get scrollToTop => 'Scroll to top';

  @override
  String get createNewGist => 'Create new gist';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => 'Quit';

  @override
  String get star => 'Star';

  @override
  String get unstar => 'Unstar';

  @override
  String get starred => 'Starred';

  @override
  String get fork => 'Fork';

  @override
  String get forked => 'Forked';

  @override
  String get forkSuccess => 'Gist forked successfully!';

  @override
  String get publicGists => 'Public Gists';

  @override
  String get browsePublicGists => 'Browse Public Gists';

  @override
  String get errorStarring => 'Error starring gist';

  @override
  String get errorForking => 'Error forking gist';

  @override
  String get loadMore => 'Load More';

  @override
  String get noPublicGists => 'No public gists found';

  @override
  String get starredGists => 'Starred Gists';

  @override
  String get myGists => 'My Gists';

  @override
  String get share => 'Share';

  @override
  String get shareGist => 'Share Gist';

  @override
  String get exportFile => 'Export as File';

  @override
  String get generateQRCode => 'Generate QR Code';

  @override
  String get copyEmbedCode => 'Copy Embed Code';

  @override
  String get copyGistUrl => 'Copy Gist URL';

  @override
  String get moreActions => 'More Actions';

  @override
  String get exportSuccess => 'Gist exported successfully';

  @override
  String get exportError => 'Error exporting gist';

  @override
  String get embedCodeCopied => 'Embed code copied to clipboard';

  @override
  String get urlCopied => 'URL copied to clipboard';

  @override
  String get qrCodeTitle => 'QR Code';

  @override
  String get scanToOpen => 'Scan to open gist';

  @override
  String get searchPublicGistsHint => 'Search or @username';

  @override
  String get close => 'Close';

  @override
  String get clear => 'Clear';

  @override
  String get tryDifferentSearch => 'Try a different search term';

  @override
  String showingGistsFromUser(int count) {
    return 'Showing $count gists from user';
  }

  @override
  String foundInLoadedGists(int count) {
    return 'Found $count in loaded gists. Use @username to fetch all gists from a user.';
  }

  @override
  String get raw => 'Raw';

  @override
  String get preview => 'Preview';

  @override
  String get sortBy => 'Sort by';

  @override
  String get sortDateNewest => 'Date (Newest)';

  @override
  String get sortDateOldest => 'Date (Oldest)';

  @override
  String get sortNameAsc => 'Name (A-Z)';

  @override
  String get sortNameDesc => 'Name (Z-A)';

  @override
  String get sortLanguage => 'Language';

  @override
  String get sortStars => 'Stars';

  @override
  String get pin => 'Pin';

  @override
  String get unpin => 'Unpin';

  @override
  String get pinned => 'Pinned';

  @override
  String get archive => 'Archive';

  @override
  String get unarchive => 'Unarchive';

  @override
  String get archived => 'Archived';

  @override
  String get showArchived => 'Show Archived';

  @override
  String get hideArchived => 'Hide Archived';

  @override
  String get gistPinned => 'Gist pinned';

  @override
  String get gistUnpinned => 'Gist unpinned';

  @override
  String get gistArchived => 'Gist archived';

  @override
  String get gistUnarchived => 'Gist unarchived';

  @override
  String get organize => 'Organise';

  @override
  String get exportCurrentFile => 'Export Selected File';

  @override
  String get exportAllFiles => 'Export All Files';

  @override
  String get shareCurrentFile => 'Share Selected File';

  @override
  String get shareAllFiles => 'Share All Files';

  @override
  String get deleteSelectedFile => 'Delete Selected File';

  @override
  String get deleteAllFiles => 'Delete Entire Gist';

  @override
  String get exportAllSuccess => 'All files exported to';

  @override
  String filesExported(int count) {
    return '$count files exported';
  }

  @override
  String get openInFinderAfterExport => 'Open Finder after file export';
}

/// The translations for English, as used in Canada (`en_CA`).
class AppLocalizationsEnCa extends AppLocalizationsEn {
  AppLocalizationsEnCa() : super('en_CA');

  @override
  String get signIn => 'Sign in with GitHub';

  @override
  String get search => 'Search';

  @override
  String get allLanguages => 'All Languages';

  @override
  String get darkMode => 'DARK MODE';

  @override
  String get theme => 'Theme';

  @override
  String get lightTheme => 'Light';

  @override
  String get darkTheme => 'Dark';

  @override
  String get systemTheme => 'System';

  @override
  String get fontSize => 'Font Size';

  @override
  String get logout => 'Logout';

  @override
  String get account => 'Account';

  @override
  String get system => 'System';

  @override
  String get display => 'Display';

  @override
  String get deleteGist => 'Delete Gist';

  @override
  String get confirmDelete => 'Are you sure you want to delete this gist?';

  @override
  String get permanent => 'This action cannot be undone.';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get filename => 'Filename';

  @override
  String get description => 'Description (optional)';

  @override
  String get public => 'Public';

  @override
  String get created => 'created:';

  @override
  String get lastUpdated => 'Last updated:';

  @override
  String get loadingGists => 'Loading Gists...';

  @override
  String get noGistsYet => 'No gists yet';

  @override
  String get noMatchingGists => 'No matching gists found';

  @override
  String get createFirstGist =>
      'Create your first gist by tapping the + button below';

  @override
  String get adjustSearch => 'Try adjusting your search or language filter';

  @override
  String get scrollToTop => 'Scroll to top';

  @override
  String get createNewGist => 'Create new gist';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => 'Quit';

  @override
  String get star => 'Star';

  @override
  String get unstar => 'Unstar';

  @override
  String get starred => 'Starred';

  @override
  String get fork => 'Fork';

  @override
  String get forked => 'Forked';

  @override
  String get forkSuccess => 'Gist forked successfully!';

  @override
  String get publicGists => 'Public Gists';

  @override
  String get browsePublicGists => 'Browse Public Gists';

  @override
  String get errorStarring => 'Error starring gist';

  @override
  String get errorForking => 'Error forking gist';

  @override
  String get loadMore => 'Load More';

  @override
  String get noPublicGists => 'No public gists found';

  @override
  String get starredGists => 'Starred Gists';

  @override
  String get myGists => 'My Gists';

  @override
  String get share => 'Share';

  @override
  String get shareGist => 'Share Gist';

  @override
  String get exportFile => 'Export as File';

  @override
  String get generateQRCode => 'Generate QR Code';

  @override
  String get copyEmbedCode => 'Copy Embed Code';

  @override
  String get copyGistUrl => 'Copy Gist URL';

  @override
  String get moreActions => 'More Actions';

  @override
  String get exportSuccess => 'Gist exported successfully';

  @override
  String get exportError => 'Error exporting gist';

  @override
  String get embedCodeCopied => 'Embed code copied to clipboard';

  @override
  String get urlCopied => 'URL copied to clipboard';

  @override
  String get qrCodeTitle => 'QR Code';

  @override
  String get scanToOpen => 'Scan to open gist';

  @override
  String get searchPublicGistsHint => 'Search or @username';

  @override
  String get close => 'Close';

  @override
  String get clear => 'Clear';

  @override
  String get tryDifferentSearch => 'Try a different search term';

  @override
  String showingGistsFromUser(int count) {
    return 'Showing $count gists from user';
  }

  @override
  String foundInLoadedGists(int count) {
    return 'Found $count in loaded gists. Use @username to fetch all gists from a user.';
  }

  @override
  String get raw => 'Raw';

  @override
  String get preview => 'Preview';

  @override
  String get sortBy => 'Sort by';

  @override
  String get sortDateNewest => 'Date (Newest)';

  @override
  String get sortDateOldest => 'Date (Oldest)';

  @override
  String get sortNameAsc => 'Name (A-Z)';

  @override
  String get sortNameDesc => 'Name (Z-A)';

  @override
  String get sortLanguage => 'Language';

  @override
  String get sortStars => 'Stars';

  @override
  String get pin => 'Pin';

  @override
  String get unpin => 'Unpin';

  @override
  String get pinned => 'Pinned';

  @override
  String get archive => 'Archive';

  @override
  String get unarchive => 'Unarchive';

  @override
  String get archived => 'Archived';

  @override
  String get showArchived => 'Show Archived';

  @override
  String get hideArchived => 'Hide Archived';

  @override
  String get gistPinned => 'Gist pinned';

  @override
  String get gistUnpinned => 'Gist unpinned';

  @override
  String get gistArchived => 'Gist archived';

  @override
  String get gistUnarchived => 'Gist unarchived';

  @override
  String get organize => 'Organize';

  @override
  String get exportCurrentFile => 'Export Selected File';

  @override
  String get exportAllFiles => 'Export All Files';

  @override
  String get shareCurrentFile => 'Share Selected File';

  @override
  String get shareAllFiles => 'Share All Files';

  @override
  String get deleteSelectedFile => 'Delete Selected File';

  @override
  String get deleteAllFiles => 'Delete Entire Gist';

  @override
  String get exportAllSuccess => 'All files exported to';

  @override
  String filesExported(int count) {
    return '$count files exported';
  }

  @override
  String get openInFinderAfterExport => 'Open Finder after file export';
}

/// The translations for English, as used in the United Kingdom (`en_GB`).
class AppLocalizationsEnGb extends AppLocalizationsEn {
  AppLocalizationsEnGb() : super('en_GB');

  @override
  String get signIn => 'Sign in with GitHub';

  @override
  String get search => 'Search';

  @override
  String get allLanguages => 'All Languages';

  @override
  String get darkMode => 'DARK MODE';

  @override
  String get theme => 'Theme';

  @override
  String get lightTheme => 'Light';

  @override
  String get darkTheme => 'Dark';

  @override
  String get systemTheme => 'System';

  @override
  String get fontSize => 'Font Size';

  @override
  String get logout => 'Logout';

  @override
  String get account => 'Account';

  @override
  String get system => 'System';

  @override
  String get display => 'Display';

  @override
  String get deleteGist => 'Delete Gist';

  @override
  String get confirmDelete => 'Are you sure you want to delete this gist?';

  @override
  String get permanent => 'This action cannot be undone.';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get filename => 'Filename';

  @override
  String get description => 'Description (optional)';

  @override
  String get public => 'Public';

  @override
  String get created => 'created:';

  @override
  String get lastUpdated => 'Last updated:';

  @override
  String get loadingGists => 'Loading Gists...';

  @override
  String get noGistsYet => 'No gists yet';

  @override
  String get noMatchingGists => 'No matching gists found';

  @override
  String get createFirstGist =>
      'Create your first gist by tapping the + button below';

  @override
  String get adjustSearch => 'Try adjusting your search or language filter';

  @override
  String get scrollToTop => 'Scroll to top';

  @override
  String get createNewGist => 'Create new gist';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => 'Quit';

  @override
  String get star => 'Star';

  @override
  String get unstar => 'Unstar';

  @override
  String get starred => 'Starred';

  @override
  String get fork => 'Fork';

  @override
  String get forked => 'Forked';

  @override
  String get forkSuccess => 'Gist forked successfully!';

  @override
  String get publicGists => 'Public Gists';

  @override
  String get browsePublicGists => 'Browse Public Gists';

  @override
  String get errorStarring => 'Error starring gist';

  @override
  String get errorForking => 'Error forking gist';

  @override
  String get loadMore => 'Load More';

  @override
  String get noPublicGists => 'No public gists found';

  @override
  String get starredGists => 'Starred Gists';

  @override
  String get myGists => 'My Gists';

  @override
  String get share => 'Share';

  @override
  String get shareGist => 'Share Gist';

  @override
  String get exportFile => 'Export as File';

  @override
  String get generateQRCode => 'Generate QR Code';

  @override
  String get copyEmbedCode => 'Copy Embed Code';

  @override
  String get copyGistUrl => 'Copy Gist URL';

  @override
  String get moreActions => 'More Actions';

  @override
  String get exportSuccess => 'Gist exported successfully';

  @override
  String get exportError => 'Error exporting gist';

  @override
  String get embedCodeCopied => 'Embed code copied to clipboard';

  @override
  String get urlCopied => 'URL copied to clipboard';

  @override
  String get qrCodeTitle => 'QR Code';

  @override
  String get scanToOpen => 'Scan to open gist';

  @override
  String get searchPublicGistsHint => 'Search or @username';

  @override
  String get close => 'Close';

  @override
  String get clear => 'Clear';

  @override
  String get tryDifferentSearch => 'Try a different search term';

  @override
  String showingGistsFromUser(int count) {
    return 'Showing $count gists from user';
  }

  @override
  String foundInLoadedGists(int count) {
    return 'Found $count in loaded gists. Use @username to fetch all gists from a user.';
  }

  @override
  String get raw => 'Raw';

  @override
  String get preview => 'Preview';

  @override
  String get sortBy => 'Sort by';

  @override
  String get sortDateNewest => 'Date (Newest)';

  @override
  String get sortDateOldest => 'Date (Oldest)';

  @override
  String get sortNameAsc => 'Name (A-Z)';

  @override
  String get sortNameDesc => 'Name (Z-A)';

  @override
  String get sortLanguage => 'Language';

  @override
  String get sortStars => 'Stars';

  @override
  String get pin => 'Pin';

  @override
  String get unpin => 'Unpin';

  @override
  String get pinned => 'Pinned';

  @override
  String get archive => 'Archive';

  @override
  String get unarchive => 'Unarchive';

  @override
  String get archived => 'Archived';

  @override
  String get showArchived => 'Show Archived';

  @override
  String get hideArchived => 'Hide Archived';

  @override
  String get gistPinned => 'Gist pinned';

  @override
  String get gistUnpinned => 'Gist unpinned';

  @override
  String get gistArchived => 'Gist archived';

  @override
  String get gistUnarchived => 'Gist unarchived';

  @override
  String get organize => 'Organise';

  @override
  String get exportCurrentFile => 'Export Selected File';

  @override
  String get exportAllFiles => 'Export All Files';

  @override
  String get shareCurrentFile => 'Share Selected File';

  @override
  String get shareAllFiles => 'Share All Files';

  @override
  String get deleteSelectedFile => 'Delete Selected File';

  @override
  String get deleteAllFiles => 'Delete Entire Gist';

  @override
  String get exportAllSuccess => 'All files exported to';

  @override
  String filesExported(int count) {
    return '$count files exported';
  }

  @override
  String get openInFinderAfterExport => 'Open Finder after file export';
}
