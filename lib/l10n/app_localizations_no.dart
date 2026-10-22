// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get signIn => 'Logg inn med GitHub';

  @override
  String get search => 'Søk';

  @override
  String get allLanguages => 'Alle språk';

  @override
  String get darkMode => 'MØRK MODUS';

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
  String get logout => 'Logg ut';

  @override
  String get account => 'Konto';

  @override
  String get system => 'System';

  @override
  String get display => 'Visning';

  @override
  String get deleteGist => 'Slett Gist';

  @override
  String get confirmDelete => 'Er du sikker på at du vil slette denne gisten?';

  @override
  String get permanent => 'Denne handlingen kan ikke angres.';

  @override
  String get cancel => 'Avbryt';

  @override
  String get delete => 'Slett';

  @override
  String get filename => 'Filnavn';

  @override
  String get description => 'Beskrivelse (valgfritt)';

  @override
  String get public => 'Offentlig';

  @override
  String get created => 'opprettet:';

  @override
  String get lastUpdated => 'Sist oppdatert:';

  @override
  String get loadingGists => 'Laster Gists...';

  @override
  String get noGistsYet => 'Ingen gists ennå';

  @override
  String get noMatchingGists => 'Ingen matchende gists funnet';

  @override
  String get createFirstGist =>
      'Opprett din første gist ved å trykke på +-knappen nedenfor';

  @override
  String get adjustSearch => 'Prøv å justere søket eller språkfilteret';

  @override
  String get scrollToTop => 'Rull til toppen';

  @override
  String get createNewGist => 'Opprett ny gist';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => 'Avslutt';

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
  String get sortBy => 'Sorter etter';

  @override
  String get sortDateNewest => 'Dato (Nyeste)';

  @override
  String get sortDateOldest => 'Dato (Eldest)';

  @override
  String get sortNameAsc => 'Navn (A-Z)';

  @override
  String get sortNameDesc => 'Navn (A-Z)';

  @override
  String get sortLanguage => 'Språk';

  @override
  String get sortStars => 'Stjerner';

  @override
  String get pin => 'Pin';

  @override
  String get unpin => 'Upphång';

  @override
  String get pinned => 'Pinnet';

  @override
  String get archive => 'Arkiver';

  @override
  String get unarchive => 'Gjenarkivér';

  @override
  String get archived => 'Arkivert';

  @override
  String get showArchived => 'Vis Arkivert';

  @override
  String get hideArchived => 'Skjul Arkivert';

  @override
  String get gistPinned => 'Gist er plassert på toppen';

  @override
  String get gistUnpinned => 'Gist ikke plassert som favoritt';

  @override
  String get gistArchived => 'Gist arkivert';

  @override
  String get gistUnarchived => 'Gist ikke arkivert';

  @override
  String get organize => 'Organiser';

  @override
  String get exportCurrentFile => 'Ekspor Valgt Fil';

  @override
  String get exportAllFiles => 'Eksport Alle Filer';

  @override
  String get shareCurrentFile => 'Del aktuell fil';

  @override
  String get shareAllFiles => 'Del alle filer';

  @override
  String get deleteSelectedFile => 'Slett valgt fil';

  @override
  String get deleteAllFiles => 'Slett hele gist';

  @override
  String get exportAllSuccess => 'Alle filer eksportert til';

  @override
  String filesExported(int count) {
    return '$count filer eksportert';
  }

  @override
  String get openInFinderAfterExport => 'Åpne Finder etter filutveksling';

  @override
  String get ok => 'OK';

  @override
  String get open => 'Åpne';

  @override
  String get discard => 'Forkast';

  @override
  String errorWithDetails(String error) {
    return 'Feil: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Kunne ikke laste innhold: $statusCode';
  }

  @override
  String get noDescription => 'Ingen beskrivelse';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count flere filer',
      one: '1 til fil',
    );
    return '... og $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Opprettet: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Oppdatert: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Sist oppdatert: $time';
  }

  @override
  String get deleteFile => 'Slett fil';

  @override
  String deleteFileMessage(String fileName) {
    return 'Du er i ferd med å slette filen \"$fileName\" permanent.';
  }

  @override
  String get deleteGistMessage =>
      'Du er i ferd med å slette denne gisten permanent.';

  @override
  String get deleteEntireGistMessage =>
      'Du er i ferd med å slette denne hele gisten og alle filene permanent.';

  @override
  String get conflictResolution => 'Konfliktløsning';

  @override
  String get allConflictsResolved => 'Alle konflikter løst!';

  @override
  String conflictProgress(int current, int total) {
    return 'Konflikt $current av $total';
  }

  @override
  String get previousConflict => 'Forrige konflikt';

  @override
  String get nextConflict => 'Neste konflikt';

  @override
  String get conflictExplanation =>
      'Denne Gist-en ble endret både lokalt og eksternt. Velg hvilken versjon du vil beholde.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Din lokale versjon';

  @override
  String get remoteVersionGitHub => 'Fjernversjon (GitHub)';

  @override
  String get chooseResolution => 'Velg løsning:';

  @override
  String get keepMyLocalChanges => 'Behold mine lokale endringer';

  @override
  String get keepMyLocalChangesDescription =>
      'Overfør dine lokale endringer til den eksterne versjonen';

  @override
  String get keepRemoteVersion => 'Behold versjonen fra serveren';

  @override
  String get keepRemoteVersionDescription =>
      'Forkast dine lokale endringer og bruk GitHub-versjonen';

  @override
  String get discardLocalChanges => 'Forkast lokale endringer';

  @override
  String get discardLocalChangesDescription =>
      'Fjern denne operasjonen fra synkroniseringskøen';

  @override
  String get modifiedUnknown => 'Endret: ukjent';

  @override
  String modifiedAt(String time) {
    return 'Endret: $time';
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
  String get justNow => 'Nå nettopp';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutter siden',
      one: '1 minutt siden',
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
      other: '$count dager siden',
      one: '1 dag siden',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Behold lokale endringer?';

  @override
  String get keepLocalChangesMessage =>
      'Dette vil overskrive den eksterne versjonen med dine lokale endringer. Handlingen kan ikke angres.';

  @override
  String get keepLocal => 'Behold lokale endringer';

  @override
  String get keepRemoteVersionTitle => 'Behold remoteversjonen?';

  @override
  String get keepRemoteVersionMessage =>
      'Dette vil forkaste dine lokale endringer og beholde den eksterne versjonen. Handlingen kan ikke angres.';

  @override
  String get keepRemote => 'Behold fjernversjonen';

  @override
  String get discardChangesTitle => 'Forkast endringer?';

  @override
  String get discardChangesMessage =>
      'Dette vil slette dine lokale endringer uten å synkronisere dem. Handlingen kan ikke angres.';

  @override
  String get gistMustHaveOneFile => 'Gist må inneholde minst én fil';

  @override
  String errorCreatingGist(String error) {
    return 'Kunne ikke opprette gist: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist lagret offline. Synkroniseres når tilkoblet.';

  @override
  String errorSavingGist(String error) {
    return 'Kunne ikke lagre gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'Endringer lagret offline. Synkroniseres når tilkoblet.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Vil du slette kun \"$fileName\" eller hele gisten?';
  }

  @override
  String errorDeleting(String error) {
    return 'Feil ved sletting: $error';
  }

  @override
  String get addFile => 'Legg til fil';

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
      'Du er frakoblet. Ingen lagrede gists tilgjengelig.';

  @override
  String get syncStatus => 'Synkroniseringsstatus';

  @override
  String get syncing => 'Synkroniserer...';

  @override
  String pendingCountLabel(int count) {
    return 'Venter: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Konflikter: $count';
  }

  @override
  String get operationsLabel => 'Operasjoner:';

  @override
  String get resolveConflicts => 'Løs konflikter';

  @override
  String get willSyncWhenRestored =>
      'Synkroniseres automatisk når forbindelsen er gjenopprettet';

  @override
  String get syncNow => 'Synkroniser nå';

  @override
  String get selectLanguage => 'Velg språk';

  @override
  String get offlineChangesWillSync =>
      'Du er frakoblet. Endringer synkroniseres når du er tilkoblet.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ventende',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Kunne ikke laste offentlige gists: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Søket feilet: $error';
  }

  @override
  String byAuthor(String author) {
    return 'av $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Feil ved innlogging: $error';
  }

  @override
  String get connectingToGitHub => 'Kobler til GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Feil ved oppstart ved innlogging: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Feil ved avslutning av app: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Feil ved utlogging: $error';
  }

  @override
  String get tabSize => 'Tabstørrelse';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mellomrom',
      one: '1 mellomrom',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tab-tasten vil sette inn $count mellomrom',
      one: 'Tab-tasten vil sette inn 1 mellomrom',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'Kunne ikke laste brukerprofilen';

  @override
  String get followers => 'Følgere';

  @override
  String get following => 'Følger';

  @override
  String get repos => 'Repoer';

  @override
  String get gists => 'Gists';

  @override
  String joinedDate(String date) {
    return 'Ble med $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Vis ${username}s Gists';
  }

  @override
  String get openLink => 'Åpne lenke';

  @override
  String openLinkConfirmation(String url) {
    return 'Vil du åpne denne lenken i nettleseren din?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Kunne ikke åpne lenken';

  @override
  String get noFollowersFound => 'Ingen følgere funnet';

  @override
  String get noFollowingFound => 'Ingen følger funnet';

  @override
  String errorLoadingFollowers(String error) {
    return 'Kunne ikke laste følgere: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Kunne ikke laste følgere: $error';
  }

  @override
  String get deleteIsPermanent =>
      'Denne handlingen er permanent og kan ikke angres.';

  @override
  String typeToConfirm(String text) {
    return 'Skriv \"$text\" for å bekrefte:';
  }

  @override
  String typeExactly(String text) {
    return 'Vennligst skriv \"$text\" nøyaktig';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Filen \"$fileName\" ble slettet';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Feil ved sletting av fil: $error';
  }

  @override
  String get gistDeleted => 'Gist slettet';

  @override
  String errorDeletingGist(String error) {
    return 'Kunne ikke slette gist: $error';
  }

  @override
  String get noFilesAvailable => 'Ingen filer tilgjengelig';

  @override
  String get fileDataNotAvailable => 'Fildata ikke tilgjengelig';

  @override
  String get copied => 'Kopiert!';

  @override
  String get copyToClipboard => 'Kopier til utklippstavle';

  @override
  String get contentCopiedToClipboard => 'Innhold kopiert til utklippstavlen';

  @override
  String get copyGistContentToClipboard =>
      'Kopier Gist-innhold til utklippstavlen';

  @override
  String get internetNotAvailable => 'Ingen internettilkobling';

  @override
  String get editGist => 'Rediger Gist';
}
