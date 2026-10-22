// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get signIn => 'Mit GitHub anmelden';

  @override
  String get search => 'Suchen';

  @override
  String get allLanguages => 'Alle Sprachen';

  @override
  String get darkMode => 'DUNKLER MODUS';

  @override
  String get theme => 'Thema';

  @override
  String get lightTheme => 'Hell';

  @override
  String get darkTheme => 'Dunkel';

  @override
  String get systemTheme => 'System';

  @override
  String get fontSize => 'Schriftgröße';

  @override
  String get logout => 'Abmelden';

  @override
  String get account => 'Konto';

  @override
  String get system => 'System';

  @override
  String get display => 'Anzeige';

  @override
  String get deleteGist => 'Gist löschen';

  @override
  String get confirmDelete =>
      'Sind Sie sicher, dass Sie diesen Gist löschen möchten?';

  @override
  String get permanent => 'Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get delete => 'Löschen';

  @override
  String get filename => 'Dateiname';

  @override
  String get description => 'Beschreibung (optional)';

  @override
  String get public => 'Öffentlich';

  @override
  String get created => 'erstellt:';

  @override
  String get lastUpdated => 'Zuletzt aktualisiert:';

  @override
  String get loadingGists => 'Lade Gists...';

  @override
  String get noGistsYet => 'Noch keine Gists';

  @override
  String get noMatchingGists => 'Keine passenden Gists gefunden';

  @override
  String get createFirstGist =>
      'Erstellen Sie Ihren ersten Gist, indem Sie auf die Schaltfläche + unten tippen';

  @override
  String get adjustSearch =>
      'Versuchen Sie, Ihre Suche oder Ihren Sprachfilter anzupassen';

  @override
  String get scrollToTop => 'Nach oben scrollen';

  @override
  String get createNewGist => 'Neuen Gist erstellen';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => 'Beenden';

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
  String get sortBy => 'Sortieren nach';

  @override
  String get sortDateNewest => 'Datum (Neuestes)';

  @override
  String get sortDateOldest => 'Datum (Ältestes)';

  @override
  String get sortNameAsc => 'Name (A-Z)';

  @override
  String get sortNameDesc => 'Name (A-Z)';

  @override
  String get sortLanguage => 'Sprache';

  @override
  String get sortStars => 'Sterne';

  @override
  String get pin => 'Pin';

  @override
  String get unpin => 'Unpin';

  @override
  String get pinned => 'Pinsiert';

  @override
  String get archive => 'Archivieren';

  @override
  String get unarchive => 'Unarchivieren';

  @override
  String get archived => 'Archiviert';

  @override
  String get showArchived => 'Archiv anzeigen';

  @override
  String get hideArchived => 'Versteckte Archivierten';

  @override
  String get gistPinned => 'Gist gepinnt';

  @override
  String get gistUnpinned => 'Gist entpinnnt';

  @override
  String get gistArchived => 'Gist archiviert';

  @override
  String get gistUnarchived => 'Gist wurde wieder archiviert';

  @override
  String get organize => 'Ordnern';

  @override
  String get exportCurrentFile => 'Exportierte Datei';

  @override
  String get exportAllFiles => 'Alle Dateien exportieren';

  @override
  String get shareCurrentFile => 'Teilen Sie das ausgewählte Datei';

  @override
  String get shareAllFiles => 'Alle Dateien teilen';

  @override
  String get deleteSelectedFile => 'Löschen des ausgewählten Dateisystems';

  @override
  String get deleteAllFiles => 'Lösche den gesamten Gist';

  @override
  String get exportAllSuccess => 'Alle Dateien wurden exportiert in';

  @override
  String filesExported(int count) {
    return '$count Dateien exportiert';
  }

  @override
  String get openInFinderAfterExport => 'Öffne Finder nach Dateiexport';

  @override
  String get ok => 'OK';

  @override
  String get open => 'Öffnen';

  @override
  String get discard => 'Verwerfen';

  @override
  String errorWithDetails(String error) {
    return 'Fehler: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Fehler beim Laden des Inhalts: $statusCode';
  }

  @override
  String get noDescription => 'Keine Beschreibung';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count weitere Dateien',
      one: '1 weitere Datei',
    );
    return '... und $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Erstellt: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Geupdated: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Zuletzt aktualisiert: $time';
  }

  @override
  String get deleteFile => 'Datei löschen';

  @override
  String deleteFileMessage(String fileName) {
    return 'Sie sind im Begriff, die Datei \"$fileName\" dauerhaft zu löschen.';
  }

  @override
  String get deleteGistMessage =>
      'Du bist im Begriff, dieses Gist dauerhaft zu löschen.';

  @override
  String get deleteEntireGistMessage =>
      'Du bist im Begriff, diesen gesamten Gist und alle seine Dateien dauerhaft zu löschen.';

  @override
  String get conflictResolution => 'Konfliktlösung';

  @override
  String get allConflictsResolved => 'Alle Konflikte behoben!';

  @override
  String conflictProgress(int current, int total) {
    return 'Konflikt $current von $total';
  }

  @override
  String get previousConflict => 'Vorheriger Konflikt';

  @override
  String get nextConflict => 'Nächster Konflikt';

  @override
  String get conflictExplanation =>
      'Dieser Gist wurde sowohl lokal als auch remote geändert. Wähle die Version, die du behalten möchtest.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Ihre lokale Version';

  @override
  String get remoteVersionGitHub => 'Remote Version (GitHub)';

  @override
  String get chooseResolution => 'Konfliktlösung wählen:';

  @override
  String get keepMyLocalChanges => 'Meine lokalen Änderungen beibehalten';

  @override
  String get keepMyLocalChangesDescription =>
      'Überschreiben Sie die Remote-Version mit Ihren lokalen Änderungen';

  @override
  String get keepRemoteVersion => 'Remote-Version beibehalten';

  @override
  String get keepRemoteVersionDescription =>
      'Verwerfe deine lokalen Änderungen und verwende die GitHub-Version';

  @override
  String get discardLocalChanges => 'Lokale Änderungen verwerfen';

  @override
  String get discardLocalChangesDescription =>
      'Operation aus der Synchronisationswarteschlange entfernen';

  @override
  String get modifiedUnknown => 'Geändert: unbekannt';

  @override
  String modifiedAt(String time) {
    return 'Geändert: $time';
  }

  @override
  String get filesLabel => 'Dateien:';

  @override
  String get fileDeletedLabel => 'gelöscht';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Zeichen',
      one: '1 Zeichen',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Gerade jetzt';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Minuten ago',
      one: 'vor 1 Minute',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vor $count Stunden',
      one: 'vor 1 Stunde',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vor $count Tagen',
      one: 'vor 1 Tag',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Lokale Änderungen beibehalten?';

  @override
  String get keepLocalChangesMessage =>
      'Ihre lokalen Änderungen überschreiben die Remote-Version. Dieser Vorgang kann nicht rückgängig gemacht werden.';

  @override
  String get keepLocal => 'Lokale Änderungen beibehalten';

  @override
  String get keepRemoteVersionTitle => 'Remote-Version beibehalten?';

  @override
  String get keepRemoteVersionMessage =>
      'Ihre lokalen Änderungen werden verworfen und die Remote-Version beibehalten. Dieser Vorgang kann nicht rückgängig gemacht werden.';

  @override
  String get keepRemote => 'Remote behalten';

  @override
  String get discardChangesTitle => 'Änderungen verwerfen?';

  @override
  String get discardChangesMessage =>
      'Ihre lokalen Änderungen werden verworfen und nicht synchronisiert. Dieser Vorgang kann nicht rückgängig gemacht werden.';

  @override
  String get gistMustHaveOneFile =>
      'Ein Gist muss mindestens eine Datei enthalten';

  @override
  String errorCreatingGist(String error) {
    return 'Fehler beim Erstellen des Gists: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist offline gespeichert. Wird synchronisiert, sobald eine Verbindung besteht.';

  @override
  String errorSavingGist(String error) {
    return 'Fehler beim Speichern des Gists: $error';
  }

  @override
  String get changesSavedOffline =>
      'Änderungen offline gespeichert. Werden synchronisiert, sobald eine Verbindung besteht.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Möchten Sie nur \"$fileName\" löschen oder den gesamten Gist?';
  }

  @override
  String errorDeleting(String error) {
    return 'Fehler beim Löschen: $error';
  }

  @override
  String get addFile => 'Datei hinzufügen';

  @override
  String get removeFile => 'Datei entfernen';

  @override
  String newFileNumbered(int number) {
    return 'Neue Datei $number';
  }

  @override
  String get newGist => 'Neuer Gist';

  @override
  String get filenameHint => 'z.B. script.py';

  @override
  String get offlineNoCachedGists =>
      'Sie sind offline. Keine zwischengespeicherten Gists verfügbar.';

  @override
  String get syncStatus => 'Synchronisierungsstatus';

  @override
  String get syncing => 'Synchronisiere…';

  @override
  String pendingCountLabel(int count) {
    return 'Ausstehende: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Konflikte: $count';
  }

  @override
  String get operationsLabel => 'Operationen:';

  @override
  String get resolveConflicts => 'Konflikte lösen';

  @override
  String get willSyncWhenRestored =>
      'Wird automatisch synchronisiert, sobald die Verbindung wiederhergestellt ist';

  @override
  String get syncNow => 'Jetzt synchronisieren';

  @override
  String get selectLanguage => 'Sprache auswählen';

  @override
  String get offlineChangesWillSync =>
      'Sie sind offline. Änderungen werden synchronisiert, sobald Sie verbunden sind.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ausstehend',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Fehler beim Laden öffentlicher Gists: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Fehler bei der Suche: $error';
  }

  @override
  String byAuthor(String author) {
    return 'von $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Fehler beim Anmelden: $error';
  }

  @override
  String get connectingToGitHub => 'Verbinde mit GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Fehler beim Setzen des automatischen Starts: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Fehler beim Beenden der App: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Fehler beim Abmelden: $error';
  }

  @override
  String get tabSize => 'Tab-Größe';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Leerzeichen',
      one: '1 Leerzeichen',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tab-Taste fügt $count Leerzeichen ein',
      one: 'Tab-Taste fügt 1 Leerzeichen ein',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'Fehler beim Laden des Benutzerprofils';

  @override
  String get followers => 'Follower';

  @override
  String get following => 'Folgt';

  @override
  String get repos => 'Repos';

  @override
  String get gists => 'Gists';

  @override
  String joinedDate(String date) {
    return 'Beigetreten am $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Gists von $username anzeigen';
  }

  @override
  String get openLink => 'Link öffnen';

  @override
  String openLinkConfirmation(String url) {
    return 'Möchten Sie diesen Link in Ihrem Browser öffnen?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Link konnte nicht geöffnet werden';

  @override
  String get noFollowersFound => 'Keine Follower gefunden';

  @override
  String get noFollowingFound => 'Keine Folgen gefunden';

  @override
  String errorLoadingFollowers(String error) {
    return 'Fehler beim Laden der Follower: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Fehler beim Laden der Folgenden: $error';
  }

  @override
  String get deleteIsPermanent =>
      'Diese Aktion ist dauerhaft und kann nicht rückgängig gemacht werden.';

  @override
  String typeToConfirm(String text) {
    return 'Geben Sie \"$text\" ein, um zu bestätigen:';
  }

  @override
  String typeExactly(String text) {
    return 'Bitte geben Sie \"$text\" genau so ein';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Datei \"$fileName\" gelöscht';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Fehler beim Löschen der Datei: $error';
  }

  @override
  String get gistDeleted => 'Gist gelöscht';

  @override
  String errorDeletingGist(String error) {
    return 'Fehler beim Löschen des Gists: $error';
  }

  @override
  String get noFilesAvailable => 'Keine Dateien verfügbar';

  @override
  String get fileDataNotAvailable => 'Dateiinformationen nicht verfügbar';

  @override
  String get copied => 'Kopiert!';

  @override
  String get copyToClipboard => 'In die Zwischenablage kopieren';

  @override
  String get contentCopiedToClipboard => 'Inhalt in Zwischenablage kopiert';

  @override
  String get copyGistContentToClipboard =>
      'Gist-Inhalt in die Zwischenablage kopieren';

  @override
  String get internetNotAvailable => 'Keine Internetverbindung verfügbar';

  @override
  String get editGist => 'Gist bearbeiten';
}
