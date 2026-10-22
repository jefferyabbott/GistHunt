// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get signIn => 'Log ind med GitHub';

  @override
  String get search => 'Søg';

  @override
  String get allLanguages => 'Alle sprog';

  @override
  String get darkMode => 'MØRK TILSTAND';

  @override
  String get theme => 'Tema';

  @override
  String get lightTheme => 'Lys';

  @override
  String get darkTheme => 'Mørk';

  @override
  String get systemTheme => 'System';

  @override
  String get fontSize => 'Skriftstørrelse';

  @override
  String get logout => 'Log ud';

  @override
  String get account => 'Konto';

  @override
  String get system => 'System';

  @override
  String get display => 'Visning';

  @override
  String get deleteGist => 'Slet Gist';

  @override
  String get confirmDelete => 'Er du sikker på, at du vil slette denne gist?';

  @override
  String get permanent => 'Denne handling kan ikke fortrydes.';

  @override
  String get cancel => 'Annuller';

  @override
  String get delete => 'Slet';

  @override
  String get filename => 'Filnavn';

  @override
  String get description => 'Beskrivelse (valgfri)';

  @override
  String get public => 'Offentlig';

  @override
  String get created => 'oprettet:';

  @override
  String get lastUpdated => 'Sidst opdateret:';

  @override
  String get loadingGists => 'Indlæser Gists...';

  @override
  String get noGistsYet => 'Ingen gists endnu';

  @override
  String get noMatchingGists => 'Ingen matchende gists fundet';

  @override
  String get createFirstGist =>
      'Opret din første gist ved at trykke på +-knappen nedenfor';

  @override
  String get adjustSearch => 'Prøv at justere din søgning eller sprogfilter';

  @override
  String get scrollToTop => 'Rul til toppen';

  @override
  String get createNewGist => 'Opret ny gist';

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
  String get sortBy => 'Sortér efter';

  @override
  String get sortDateNewest => 'Dato (Nyeste)';

  @override
  String get sortDateOldest => 'Dato (Ældst)';

  @override
  String get sortNameAsc => 'Navn (A-Z)';

  @override
  String get sortNameDesc => 'Navn (A-Z)';

  @override
  String get sortLanguage => 'Sprog';

  @override
  String get sortStars => 'Stjerner';

  @override
  String get pin => 'Pin';

  @override
  String get unpin => 'Udpin';

  @override
  String get pinned => 'Pindet';

  @override
  String get archive => 'Arkivér';

  @override
  String get unarchive => 'Udgrav';

  @override
  String get archived => 'Arkiveret';

  @override
  String get showArchived => 'Vis Arkiveret';

  @override
  String get hideArchived => 'Skjul Arkiveret';

  @override
  String get gistPinned => 'Gist pinnet';

  @override
  String get gistUnpinned => 'Gist blev ikke fastgjort';

  @override
  String get gistArchived => 'Gist arkiveret';

  @override
  String get gistUnarchived => 'Gist blev ikke arkiveret';

  @override
  String get organize => 'Organiser';

  @override
  String get exportCurrentFile => 'Udgå med valgt fil';

  @override
  String get exportAllFiles => 'Eksport Alle Filere';

  @override
  String get shareCurrentFile => 'Del af valgt fil';

  @override
  String get shareAllFiles => 'Del alle filer';

  @override
  String get deleteSelectedFile => 'Slet valgt fil';

  @override
  String get deleteAllFiles => 'Slet hele gist';

  @override
  String get exportAllSuccess => 'Alle filer eksporteret til';

  @override
  String filesExported(int count) {
    return '$count filer eksporteret';
  }

  @override
  String get openInFinderAfterExport => 'Åbn Finder efter fil eksport';

  @override
  String get ok => 'OK';

  @override
  String get open => 'Åbn';

  @override
  String get discard => 'Kassér';

  @override
  String errorWithDetails(String error) {
    return 'Fejl: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Kunne ikke indlæse indhold: $statusCode';
  }

  @override
  String get noDescription => 'Ingen beskrivelse';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count flere filer',
      one: '1 mere fil',
    );
    return '... og $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Oprettet: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Opdateret: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Sidst opdateret: $time';
  }

  @override
  String get deleteFile => 'Slet fil';

  @override
  String deleteFileMessage(String fileName) {
    return 'Du er ved at slette filen \"$fileName\" permanent.';
  }

  @override
  String get deleteGistMessage => 'Du er ved at slette denne gist permanent.';

  @override
  String get deleteEntireGistMessage =>
      'Du er ved at slette hele denne gist og alle dens filer permanent.';

  @override
  String get conflictResolution => 'Konfliktløsning';

  @override
  String get allConflictsResolved => 'Alle konflikter løst!';

  @override
  String conflictProgress(int current, int total) {
    return 'Konflikt $current ud af $total';
  }

  @override
  String get previousConflict => 'Forrige konflikt';

  @override
  String get nextConflict => 'Næste konflikt';

  @override
  String get conflictExplanation =>
      'Denne gist er blevet ændret både lokalt og eksternt. Vælg hvilken version du vil beholde.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Din lokale version';

  @override
  String get remoteVersionGitHub => 'Fjernversion (GitHub)';

  @override
  String get chooseResolution => 'Vælg løsning:';

  @override
  String get keepMyLocalChanges => 'Behold mine lokale ændringer';

  @override
  String get keepMyLocalChangesDescription =>
      'Overskriv den eksterne version med dine lokale ændringer';

  @override
  String get keepRemoteVersion => 'Behold fjernversionen';

  @override
  String get keepRemoteVersionDescription =>
      'Kassér dine lokale ændringer og brug GitHub-versionen';

  @override
  String get discardLocalChanges => 'Kassér lokale ændringer';

  @override
  String get discardLocalChangesDescription =>
      'Fjern denne handling fra synkroniseringskøen';

  @override
  String get modifiedUnknown => 'Ændret: ukendt';

  @override
  String modifiedAt(String time) {
    return 'Ændret: $time';
  }

  @override
  String get filesLabel => 'Filer:';

  @override
  String get fileDeletedLabel => 'slettet';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tegn',
      one: '1 tegn',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Nu';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutter siden',
      one: '1 minut siden',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count timer siden',
      one: '1 time siden',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dage siden',
      one: '1 dag siden',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Behold lokale ændringer?';

  @override
  String get keepLocalChangesMessage =>
      'Dette vil overskrive den eksterne version med dine lokale ændringer. Handlingen kan ikke fortrydes.';

  @override
  String get keepLocal => 'Behold lokale ændringer';

  @override
  String get keepRemoteVersionTitle => 'Behold fjernversionen?';

  @override
  String get keepRemoteVersionMessage =>
      'Dette vil kassere dine lokale ændringer og beholde den eksterne version. Denne handling kan ikke fortrydes.';

  @override
  String get keepRemote => 'Behold fjernversionen';

  @override
  String get discardChangesTitle => 'Fortab ændringer?';

  @override
  String get discardChangesMessage =>
      'Dette vil fjerne dine lokale ændringer uden at synkronisere dem. Handlingen kan ikke fortrydes.';

  @override
  String get gistMustHaveOneFile => 'Gist skal indeholde mindst én fil';

  @override
  String errorCreatingGist(String error) {
    return 'Fejl ved oprettelse af gist: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist gemt offline. Synkroniseres når der er forbindelse.';

  @override
  String errorSavingGist(String error) {
    return 'Fejl ved lagring af gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'Ændringer gemt offline. Synkroniseres når der er forbindelse.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Vil du slette kun \"$fileName\" eller hele gisten?';
  }

  @override
  String errorDeleting(String error) {
    return 'Fejl ved sletning: $error';
  }

  @override
  String get addFile => 'Tilføj fil';

  @override
  String get removeFile => 'Fjern fil';

  @override
  String newFileNumbered(int number) {
    return 'Ny fil $number';
  }

  @override
  String get newGist => 'Ny Gist';

  @override
  String get filenameHint => 'f.eks. script.py';

  @override
  String get offlineNoCachedGists =>
      'Du er offline. Ingen gemte gists tilgængelige.';

  @override
  String get syncStatus => 'Synkroniseringsstatus';

  @override
  String get syncing => 'Synkroniserer...';

  @override
  String pendingCountLabel(int count) {
    return 'Afventende: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Konflikter: $count';
  }

  @override
  String get operationsLabel => 'Operationer:';

  @override
  String get resolveConflicts => 'Løs konflikter';

  @override
  String get willSyncWhenRestored =>
      'Synkroniseres automatisk, når forbindelsen er genoprettet';

  @override
  String get syncNow => 'Synkroniser nu';

  @override
  String get selectLanguage => 'Vælg sprog';

  @override
  String get offlineChangesWillSync =>
      'Du er offline. Ændringer synkroniseres, når du er online.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count afventende',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Kunne ikke indlæse offentlige gists: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Fejl under søgning: $error';
  }

  @override
  String byAuthor(String author) {
    return 'af $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Fejl under login: $error';
  }

  @override
  String get connectingToGitHub => 'Tilslutter til GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Fejl ved indstilling af start ved login: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Fejl ved lukning af app: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Fejl under udtjekning: $error';
  }

  @override
  String get tabSize => 'Tabstørrelse';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mellemrum',
      one: '1 mellemrum',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tab-tasten indsætter $count mellemrum',
      one: 'Tab-tasten indsætter 1 mellemrum',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'Kunne ikke indlæse brugerprofil';

  @override
  String get followers => 'Følgere';

  @override
  String get following => 'Følger';

  @override
  String get repos => 'Repositories';

  @override
  String get gists => 'Gists';

  @override
  String joinedDate(String date) {
    return 'Tilsluttet $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Vis $username\'s Gists';
  }

  @override
  String get openLink => 'Åbn link';

  @override
  String openLinkConfirmation(String url) {
    return 'Vil du åbne dette link i din browser?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Kunne ikke åbne link';

  @override
  String get noFollowersFound => 'Ingen følgere fundet';

  @override
  String get noFollowingFound => 'Ingen fulgte fundet';

  @override
  String errorLoadingFollowers(String error) {
    return 'Kunne ikke indlæse følgere: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Fejl ved indlæsning af følgere: $error';
  }

  @override
  String get deleteIsPermanent =>
      'Denne handling er permanent og kan ikke fortrydes.';

  @override
  String typeToConfirm(String text) {
    return 'Skriv \"$text\" for at bekræfte:';
  }

  @override
  String typeExactly(String text) {
    return 'Indtast \"$text\" præcis som vist';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Filen \"$fileName\" blev slettet';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Fejl under sletning af fil: $error';
  }

  @override
  String get gistDeleted => 'Gist slettet';

  @override
  String errorDeletingGist(String error) {
    return 'Fejl ved sletning af gist: $error';
  }

  @override
  String get noFilesAvailable => 'Ingen filer tilgængelige';

  @override
  String get fileDataNotAvailable => 'Fildata ikke tilgængelig';

  @override
  String get copied => 'Kopieret!';

  @override
  String get copyToClipboard => 'Kopier til udklipsholder';

  @override
  String get contentCopiedToClipboard => 'Indhold kopieret til udklipsholder';

  @override
  String get copyGistContentToClipboard =>
      'Kopier Gist-indhold til udklipsholder';

  @override
  String get internetNotAvailable => 'Ingen internetforbindelse';

  @override
  String get editGist => 'Rediger Gist';
}
