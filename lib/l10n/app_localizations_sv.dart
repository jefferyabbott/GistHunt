// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get signIn => 'Logga in med GitHub';

  @override
  String get search => 'Sök';

  @override
  String get allLanguages => 'Alla språk';

  @override
  String get darkMode => 'MÖRKT LÄGE';

  @override
  String get theme => 'Tema';

  @override
  String get lightTheme => 'Ljust';

  @override
  String get darkTheme => 'Mörkt';

  @override
  String get systemTheme => 'System';

  @override
  String get fontSize => 'Teckenstorlek';

  @override
  String get logout => 'Logga ut';

  @override
  String get account => 'Konto';

  @override
  String get system => 'System';

  @override
  String get display => 'Visning';

  @override
  String get deleteGist => 'Ta bort Gist';

  @override
  String get confirmDelete => 'Är du säker på att du vill ta bort denna gist?';

  @override
  String get permanent => 'Denna åtgärd kan inte ångras.';

  @override
  String get cancel => 'Avbryt';

  @override
  String get delete => 'Ta bort';

  @override
  String get filename => 'Filnamn';

  @override
  String get description => 'Beskrivning (valfritt)';

  @override
  String get public => 'Offentlig';

  @override
  String get created => 'skapad:';

  @override
  String get lastUpdated => 'Senast uppdaterad:';

  @override
  String get loadingGists => 'Laddar Gists...';

  @override
  String get noGistsYet => 'Inga gists än';

  @override
  String get noMatchingGists => 'Inga matchande gists hittades';

  @override
  String get createFirstGist =>
      'Skapa din första gist genom att trycka på +-knappen nedan';

  @override
  String get adjustSearch => 'Försök justera din sökning eller språkfilter';

  @override
  String get scrollToTop => 'Rulla till toppen';

  @override
  String get createNewGist => 'Skapa ny gist';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => 'Avsluta';

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
  String get sortBy => 'Sortera efter';

  @override
  String get sortDateNewest => 'Datum (Nyast)';

  @override
  String get sortDateOldest => 'Datum (Äldst)';

  @override
  String get sortNameAsc => 'Namn (A-Z)';

  @override
  String get sortNameDesc => 'Namn (A-Z)';

  @override
  String get sortLanguage => 'Språk';

  @override
  String get sortStars => 'Stjärnor';

  @override
  String get pin => 'Pin';

  @override
  String get unpin => 'Upphängd';

  @override
  String get pinned => 'Pinnad';

  @override
  String get archive => 'Arkivera';

  @override
  String get unarchive => 'Återarkivera';

  @override
  String get archived => 'Arkiverad';

  @override
  String get showArchived => 'Visa Arkiverade';

  @override
  String get hideArchived => 'Dölj Arkiverade';

  @override
  String get gistPinned => 'Gist har pinnats';

  @override
  String get gistUnpinned => 'Gisten är nu uppintrad';

  @override
  String get gistArchived => 'Gist arkiverad';

  @override
  String get gistUnarchived => 'Gist återarkiverad';

  @override
  String get organize => 'Organisera';

  @override
  String get exportCurrentFile => 'Exportera vald fil';

  @override
  String get exportAllFiles => 'Eksportera alla filer';

  @override
  String get shareCurrentFile => 'Delad fil';

  @override
  String get shareAllFiles => 'Del alla filer';

  @override
  String get deleteSelectedFile => 'Radera vald fil';

  @override
  String get deleteAllFiles => 'Radera hela gist';

  @override
  String get exportAllSuccess => 'Alla filer exporterade till';

  @override
  String filesExported(int count) {
    return '$count filer exporterade';
  }

  @override
  String get openInFinderAfterExport => 'Öppna Finder efter filexport';

  @override
  String get ok => 'OK';

  @override
  String get open => 'Öppna';

  @override
  String get discard => 'Ångra';

  @override
  String errorWithDetails(String error) {
    return 'Fel: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Kunde inte ladda innehåll: $statusCode';
  }

  @override
  String get noDescription => 'Ingen beskrivning';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fler filer',
      one: '1 ytterligare fil',
    );
    return '... och $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Skapad: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Uppdaterad: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Senast uppdaterad: $time';
  }

  @override
  String get deleteFile => 'Radera fil';

  @override
  String deleteFileMessage(String fileName) {
    return 'Du är på väg att permanent radera filen \"$fileName\".';
  }

  @override
  String get deleteGistMessage =>
      'Du är på väg att permanent radera detta gist.';

  @override
  String get deleteEntireGistMessage =>
      'Du är på väg att permanent radera hela denna gist och alla dess filer.';

  @override
  String get conflictResolution => 'Konfliktlösning';

  @override
  String get allConflictsResolved => 'Alla konflikter lösta!';

  @override
  String conflictProgress(int current, int total) {
    return 'Konflikt $current av $total';
  }

  @override
  String get previousConflict => 'Föregående konflikt';

  @override
  String get nextConflict => 'Nästa konflikt';

  @override
  String get conflictExplanation =>
      'Den här gisten har ändrats både lokalt och på distans. Välj vilken version du vill behålla.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Din lokala version';

  @override
  String get remoteVersionGitHub => 'Fjärrversion (GitHub)';

  @override
  String get chooseResolution => 'Välj lösning:';

  @override
  String get keepMyLocalChanges => 'Behåll mina lokala ändringar';

  @override
  String get keepMyLocalChangesDescription =>
      'Ersätt den fjärranslutna versionen med dina lokala ändringar';

  @override
  String get keepRemoteVersion => 'Behåll fjärrversionen';

  @override
  String get keepRemoteVersionDescription =>
      'Återställ till GitHub-versionen och kassera lokala ändringar';

  @override
  String get discardLocalChanges => 'Ångra lokala ändringar';

  @override
  String get discardLocalChangesDescription =>
      'Ta bort denna operation från synkkön';

  @override
  String get modifiedUnknown => 'Modifierad: okänt';

  @override
  String modifiedAt(String time) {
    return 'Ändrad: $time';
  }

  @override
  String get filesLabel => 'Filer:';

  @override
  String get fileDeletedLabel => 'raderad';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tecken',
      one: '1 tecken',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Just nu';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuter sedan',
      one: '1 minut sedan',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count timmar sedan',
      one: '1 timme sedan',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar sedan',
      one: '1 dag sedan',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Behåll lokala ändringar?';

  @override
  String get keepLocalChangesMessage =>
      'Detta kommer att skriva över den fjärranslutna versionen med dina lokala ändringar. Åtgärden kan inte ångras.';

  @override
  String get keepLocal => 'Behåll lokalt';

  @override
  String get keepRemoteVersionTitle => 'Behåll fjärrversionen?';

  @override
  String get keepRemoteVersionMessage =>
      'Detta kommer att radera dina lokala ändringar och behålla den fjärranslutna versionen. Åtgärden kan inte ångras.';

  @override
  String get keepRemote => 'Behåll fjärrkopia';

  @override
  String get discardChangesTitle => 'Kassera ändringar?';

  @override
  String get discardChangesMessage =>
      'Detta kommer att ta bort dina lokala ändringar utan att synkronisera dem. Åtgärden kan inte ångras.';

  @override
  String get gistMustHaveOneFile => 'Gist måste innehålla minst en fil';

  @override
  String errorCreatingGist(String error) {
    return 'Fel vid skapande av gist: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist sparad offline. Synkroniseras när du är ansluten.';

  @override
  String errorSavingGist(String error) {
    return 'Fel vid sparande av gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'Ändringar sparade offline. Synkroniseras när du är ansluten.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Vill du bara ta bort \"$fileName\" eller hela gistet?';
  }

  @override
  String errorDeleting(String error) {
    return 'Fel vid radering: $error';
  }

  @override
  String get addFile => 'Lägg till fil';

  @override
  String get removeFile => 'Ta bort fil';

  @override
  String newFileNumbered(int number) {
    return 'Ny fil $number';
  }

  @override
  String get newGist => 'Nytt Gist';

  @override
  String get filenameHint => 't.ex. script.py';

  @override
  String get offlineNoCachedGists =>
      'Du är offline. Inga sparade gists tillgängliga.';

  @override
  String get syncStatus => 'Synkroniseringsstatus';

  @override
  String get syncing => 'Synkroniserar...';

  @override
  String pendingCountLabel(int count) {
    return 'Pågående: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Konflikter: $count';
  }

  @override
  String get operationsLabel => 'Åtgärder:';

  @override
  String get resolveConflicts => 'Lös konflikter';

  @override
  String get willSyncWhenRestored =>
      'Synkroniseras automatiskt när anslutningen är återställd';

  @override
  String get syncNow => 'Synkronisera nu';

  @override
  String get selectLanguage => 'Välj språk';

  @override
  String get offlineChangesWillSync =>
      'Du är offline. Ändringar synkroniseras när du är ansluten.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pågående',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Kunde inte ladda publika gists: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Fel vid sökning: $error';
  }

  @override
  String byAuthor(String author) {
    return 'av $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Fel vid inloggning: $error';
  }

  @override
  String get connectingToGitHub => 'Ansluter till GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Fel vid inställning av start vid inloggning: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Fel vid avslutning av appen: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Fel vid utloggning: $error';
  }

  @override
  String get tabSize => 'Tabstorlek';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blanksteg',
      one: '1 blanksteg',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blanksteg',
      one: '1 blanksteg',
    );
    return 'Tab-tangenten infogar $_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'Kunde inte ladda användarprofilen';

  @override
  String get followers => 'Följare';

  @override
  String get following => 'Följer';

  @override
  String get repos => 'Repos';

  @override
  String get gists => 'Gists';

  @override
  String joinedDate(String date) {
    return 'Gick med $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Visa ${username}s gists';
  }

  @override
  String get openLink => 'Öppna länk';

  @override
  String openLinkConfirmation(String url) {
    return 'Vill du öppna länken $url i din webbläsare?';
  }

  @override
  String get couldNotOpenLink => 'Kunde inte öppna länk';

  @override
  String get noFollowersFound => 'Inga följare hittades';

  @override
  String get noFollowingFound => 'Ingen följer du';

  @override
  String errorLoadingFollowers(String error) {
    return 'Kunde inte ladda följare: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Kunde inte ladda följare: $error';
  }

  @override
  String get deleteIsPermanent =>
      'Denna åtgärd är permanent och kan inte ångras.';

  @override
  String typeToConfirm(String text) {
    return 'Skriv \"$text\" för att bekräfta:';
  }

  @override
  String typeExactly(String text) {
    return 'Skriv \"$text\" exakt';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Filen \"$fileName\" raderad';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Fel vid radering av fil: $error';
  }

  @override
  String get gistDeleted => 'Gist borttaget';

  @override
  String errorDeletingGist(String error) {
    return 'Fel vid radering av gist: $error';
  }

  @override
  String get noFilesAvailable => 'Inga filer tillgängliga';

  @override
  String get fileDataNotAvailable => 'Filinformation saknas';

  @override
  String get copied => 'Kopierat!';

  @override
  String get copyToClipboard => 'Kopiera till urklipp';

  @override
  String get contentCopiedToClipboard => 'Innehållet kopierades till urklipp';

  @override
  String get copyGistContentToClipboard => 'Kopiera gist-innehåll till urklipp';

  @override
  String get internetNotAvailable => 'Ingen internetanslutning';

  @override
  String get editGist => 'Redigera gist';
}
