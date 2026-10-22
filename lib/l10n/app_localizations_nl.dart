// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get signIn => 'Inloggen met GitHub';

  @override
  String get search => 'Zoeken';

  @override
  String get allLanguages => 'Alle talen';

  @override
  String get darkMode => 'DONKERE MODUS';

  @override
  String get theme => 'Thema';

  @override
  String get lightTheme => 'Licht';

  @override
  String get darkTheme => 'Donker';

  @override
  String get systemTheme => 'Systeem';

  @override
  String get fontSize => 'Lettergrootte';

  @override
  String get logout => 'Uitloggen';

  @override
  String get account => 'Account';

  @override
  String get system => 'Systeem';

  @override
  String get display => 'Weergave';

  @override
  String get deleteGist => 'Gist verwijderen';

  @override
  String get confirmDelete =>
      'Weet je zeker dat je deze gist wilt verwijderen?';

  @override
  String get permanent => 'Deze actie kan niet ongedaan worden gemaakt.';

  @override
  String get cancel => 'Annuleren';

  @override
  String get delete => 'Verwijderen';

  @override
  String get filename => 'Bestandsnaam';

  @override
  String get description => 'Beschrijving (optioneel)';

  @override
  String get public => 'Openbaar';

  @override
  String get created => 'aangemaakt:';

  @override
  String get lastUpdated => 'Laatst bijgewerkt:';

  @override
  String get loadingGists => 'Gists laden...';

  @override
  String get noGistsYet => 'Nog geen gists';

  @override
  String get noMatchingGists => 'Geen overeenkomende gists gevonden';

  @override
  String get createFirstGist =>
      'Maak je eerste gist door op de + knop hieronder te tikken';

  @override
  String get adjustSearch =>
      'Probeer je zoekopdracht of taalfilter aan te passen';

  @override
  String get scrollToTop => 'Scroll naar boven';

  @override
  String get createNewGist => 'Nieuwe gist maken';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => 'Afsluiten';

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
  String get sortBy => 'Sorteer op';

  @override
  String get sortDateNewest => 'Datum (Nieuwste)';

  @override
  String get sortDateOldest => 'Datum (oudste)';

  @override
  String get sortNameAsc => 'Naam (A-Z)';

  @override
  String get sortNameDesc => 'Naam (A-Z)';

  @override
  String get sortLanguage => 'Taal';

  @override
  String get sortStars => 'Sterren';

  @override
  String get pin => 'Pin';

  @override
  String get unpin => 'Onpinnen';

  @override
  String get pinned => 'Pinned';

  @override
  String get archive => 'Archief';

  @override
  String get unarchive => 'Onarchiveren';

  @override
  String get archived => 'Gearchiveerd';

  @override
  String get showArchived => 'Archief weergeven';

  @override
  String get hideArchived => 'Verberg Archiefde';

  @override
  String get gistPinned => 'Gist gepind';

  @override
  String get gistUnpinned => 'Gist ongepind';

  @override
  String get gistArchived => 'Gist is gearchiveerd';

  @override
  String get gistUnarchived => 'Gist ongearchiveerd';

  @override
  String get organize => 'Organiseer';

  @override
  String get exportCurrentFile => 'Export Geselecteerde Bestand';

  @override
  String get exportAllFiles => 'Alle bestanden exporteren';

  @override
  String get shareCurrentFile => 'Deel Geselecteerde Bestand';

  @override
  String get shareAllFiles => 'Deel Alle Bestanden';

  @override
  String get deleteSelectedFile => 'Verwijder geselecteerde bestand';

  @override
  String get deleteAllFiles => 'Verwijder hele gist';

  @override
  String get exportAllSuccess =>
      'Alle bestanden zijn succesvol geëxporteerd naar';

  @override
  String filesExported(int count) {
    return '$count bestanden zijn geëxporteerd';
  }

  @override
  String get openInFinderAfterExport => 'Open Finder na bestandsexport';

  @override
  String get ok => 'OK';

  @override
  String get open => 'Openen';

  @override
  String get discard => 'Annuleren';

  @override
  String errorWithDetails(String error) {
    return 'Fout: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Fout bij het laden van de inhoud: $statusCode';
  }

  @override
  String get noDescription => 'Geen beschrijving';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count extra bestanden',
      one: '1 extra bestand',
    );
    return '... en $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Aangemaakt: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Bijgewerkt: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Laatst bijgewerkt: $time';
  }

  @override
  String get deleteFile => 'Bestand verwijderen';

  @override
  String deleteFileMessage(String fileName) {
    return 'Je staat op het punt het bestand \"$fileName\" permanent te verwijderen.';
  }

  @override
  String get deleteGistMessage =>
      'Je staat op het punt deze gist permanent te verwijderen.';

  @override
  String get deleteEntireGistMessage =>
      'Je staat op het punt deze hele gist en alle bestanden permanent te verwijderen.';

  @override
  String get conflictResolution => 'Conflictoplossing';

  @override
  String get allConflictsResolved => 'Alle conflicten opgelost!';

  @override
  String conflictProgress(int current, int total) {
    return 'Conflict $current van $total';
  }

  @override
  String get previousConflict => 'Vorige conflict';

  @override
  String get nextConflict => 'Volgende conflict';

  @override
  String get conflictExplanation =>
      'Deze gist is zowel lokaal als op afstand gewijzigd. Kies welke versie je wilt behouden.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Je lokale versie';

  @override
  String get remoteVersionGitHub => 'Remote versie (GitHub)';

  @override
  String get chooseResolution => 'Resolutie kiezen:';

  @override
  String get keepMyLocalChanges => 'Behoud mijn lokale wijzigingen';

  @override
  String get keepMyLocalChangesDescription =>
      'Overschrijf de externe versie met je lokale wijzigingen';

  @override
  String get keepRemoteVersion => 'Behoud Remote Versie';

  @override
  String get keepRemoteVersionDescription =>
      'Verwerp lokale wijzigingen en gebruik de GitHub-versie';

  @override
  String get discardLocalChanges => 'Lokale wijzigingen annuleren';

  @override
  String get discardLocalChangesDescription =>
      'Verwijder deze bewerking uit de synchronisatie-wachtrij';

  @override
  String get modifiedUnknown => 'Gewijzigd: onbekend';

  @override
  String modifiedAt(String time) {
    return 'Gewijzigd: $time';
  }

  @override
  String get filesLabel => 'Bestanden:';

  @override
  String get fileDeletedLabel => 'verwijderd';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count karakters',
      one: '1 karakter',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Net nu';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuten geleden',
      one: '1 minuut geleden',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uur geleden',
      one: '1 uur geleden',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagen geleden',
      one: '1 dag geleden',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Lokale wijzigingen behouden?';

  @override
  String get keepLocalChangesMessage =>
      'Dit overschrijft de externe versie met je lokale wijzigingen. Deze actie kan niet ongedaan worden gemaakt.';

  @override
  String get keepLocal => 'Behoud lokaal';

  @override
  String get keepRemoteVersionTitle => 'Remote versie behouden?';

  @override
  String get keepRemoteVersionMessage =>
      'Dit verwijdert je lokale wijzigingen en behoudt de versie op afstand. Deze actie kan niet ongedaan worden gemaakt.';

  @override
  String get keepRemote => 'Remote behouden';

  @override
  String get discardChangesTitle => 'Wijzigingen annuleren?';

  @override
  String get discardChangesMessage =>
      'Je lokale wijzigingen worden verwijderd zonder synchronisatie. Deze actie kan niet ongedaan worden gemaakt.';

  @override
  String get gistMustHaveOneFile => 'Gist moet minstens één bestand bevatten';

  @override
  String errorCreatingGist(String error) {
    return 'Fout bij het maken van gist: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist opgeslagen voor offline gebruik. Wordt gesynchroniseerd zodra er verbinding is.';

  @override
  String errorSavingGist(String error) {
    return 'Fout bij opslaan van gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'Wijzigingen opgeslagen voor offline gebruik. Worden gesynchroniseerd zodra er verbinding is.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Wil je alleen \"$fileName\" verwijderen, of de hele gist?';
  }

  @override
  String errorDeleting(String error) {
    return 'Fout bij verwijderen: $error';
  }

  @override
  String get addFile => 'Bestand toevoegen';

  @override
  String get removeFile => 'Bestand verwijderen';

  @override
  String newFileNumbered(int number) {
    return 'Nieuw bestand $number';
  }

  @override
  String get newGist => 'Nieuwe Gist';

  @override
  String get filenameHint => 'bijv. script.py';

  @override
  String get offlineNoCachedGists =>
      'Je bent offline. Geen opgeslagen gists beschikbaar.';

  @override
  String get syncStatus => 'Synchronisatiestatus';

  @override
  String get syncing => 'Synchroniseren...';

  @override
  String pendingCountLabel(int count) {
    return 'In behandeling: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Conflicten: $count';
  }

  @override
  String get operationsLabel => 'Operaties:';

  @override
  String get resolveConflicts => 'Los conflicten op';

  @override
  String get willSyncWhenRestored =>
      'Synchroniseert automatisch zodra de verbinding is hersteld';

  @override
  String get syncNow => 'Nu synchroniseren';

  @override
  String get selectLanguage => 'Selecteer taal';

  @override
  String get offlineChangesWillSync =>
      'Je bent offline. Wijzigingen worden gesynchroniseerd zodra je verbinding hebt.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count in behandeling',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Fout bij het laden van openbare gists: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Fout bij zoeken: $error';
  }

  @override
  String byAuthor(String author) {
    return 'van $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Fout bij aanmelden: $error';
  }

  @override
  String get connectingToGitHub => 'Verbinden met GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Fout bij instellen van automatisch opstarten: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Fout bij het afsluiten van de app: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Fout bij uitloggen: $error';
  }

  @override
  String get tabSize => 'Tabgrootte';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spaties',
      one: '1 spatie',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spaties invoegen',
      one: '1 spatie invoegen',
    );
    return 'Tabtoets zal $_temp0';
  }

  @override
  String get errorLoadingUserProfile =>
      'Fout bij het laden van gebruikersprofiel';

  @override
  String get followers => 'Volgers';

  @override
  String get following => 'Volgt';

  @override
  String get repos => 'Repos';

  @override
  String get gists => 'Gists';

  @override
  String joinedDate(String date) {
    return 'Lid geworden in $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Gists van $username bekijken';
  }

  @override
  String get openLink => 'Link openen';

  @override
  String openLinkConfirmation(String url) {
    return 'Wil je deze link in je browser openen?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Kon link niet openen';

  @override
  String get noFollowersFound => 'Geen volgers gevonden';

  @override
  String get noFollowingFound => 'Geen gevolgden gevonden';

  @override
  String errorLoadingFollowers(String error) {
    return 'Fout bij het laden van volgers: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Fout bij het laden van volgers: $error';
  }

  @override
  String get deleteIsPermanent =>
      'Deze actie is permanent en kan niet ongedaan gemaakt worden.';

  @override
  String typeToConfirm(String text) {
    return 'Typ \"$text\" om te bevestigen:';
  }

  @override
  String typeExactly(String text) {
    return 'Typ \"$text\" precies';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Bestand \"$fileName\" verwijderd';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Fout bij verwijderen bestand: $error';
  }

  @override
  String get gistDeleted => 'Gist verwijderd';

  @override
  String errorDeletingGist(String error) {
    return 'Fout bij verwijderen van gist: $error';
  }

  @override
  String get noFilesAvailable => 'Geen bestanden beschikbaar';

  @override
  String get fileDataNotAvailable => 'Gegevens van bestand niet beschikbaar';

  @override
  String get copied => 'Gekopieerd!';

  @override
  String get copyToClipboard => 'Kopiëren naar klembord';

  @override
  String get contentCopiedToClipboard => 'Content gekopieerd naar het klembord';

  @override
  String get copyGistContentToClipboard => 'Kopieer gist-inhoud naar klembord';

  @override
  String get internetNotAvailable => 'Geen internetverbinding beschikbaar';

  @override
  String get editGist => 'Bewerk gist';
}
