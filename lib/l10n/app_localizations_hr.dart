// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get signIn => 'Prijavite se putem GitHuba';

  @override
  String get search => 'Pretraži';

  @override
  String get allLanguages => 'Svi jezici';

  @override
  String get darkMode => 'TAMNI NAČIN';

  @override
  String get theme => 'Tema';

  @override
  String get lightTheme => 'Svijetla';

  @override
  String get darkTheme => 'Tamna';

  @override
  String get systemTheme => 'Sustav';

  @override
  String get fontSize => 'Veličina fonta';

  @override
  String get logout => 'Odjava';

  @override
  String get account => 'Račun';

  @override
  String get system => 'Sustav';

  @override
  String get display => 'Prikaz';

  @override
  String get deleteGist => 'Izbriši Gist';

  @override
  String get confirmDelete => 'Jeste li sigurni da želite izbrisati ovaj gist?';

  @override
  String get permanent => 'Ova radnja se ne može poništiti.';

  @override
  String get cancel => 'Odustani';

  @override
  String get delete => 'Izbriši';

  @override
  String get filename => 'Naziv datoteke';

  @override
  String get description => 'Opis (neobavezno)';

  @override
  String get public => 'Javno';

  @override
  String get created => 'stvoreno:';

  @override
  String get lastUpdated => 'Zadnje ažurirano:';

  @override
  String get loadingGists => 'Učitavanje Gists...';

  @override
  String get noGistsYet => 'Još nema gistova';

  @override
  String get noMatchingGists => 'Nisu pronađeni odgovarajući gistovi';

  @override
  String get createFirstGist =>
      'Stvorite svoj prvi gist dodirom na gumb + ispod';

  @override
  String get adjustSearch =>
      'Pokušajte prilagoditi pretraživanje ili filter jezika';

  @override
  String get scrollToTop => 'Pomakni se na vrh';

  @override
  String get createNewGist => 'Stvori novi gist';

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
  String get sortBy => 'Po redu';

  @override
  String get sortDateNewest => 'Datum (najnovije)';

  @override
  String get sortDateOldest => 'Datum (Najstarije)';

  @override
  String get sortNameAsc => 'Ime (A-Z)';

  @override
  String get sortNameDesc => 'Ime (A-Z)';

  @override
  String get sortLanguage => 'Jezik';

  @override
  String get sortStars => 'Zvijezde';

  @override
  String get pin => 'Pinovati';

  @override
  String get unpin => 'Odpiši';

  @override
  String get pinned => 'Povijen';

  @override
  String get archive => 'Arhiviraj';

  @override
  String get unarchive => 'Unarhiviraj';

  @override
  String get archived => 'Arhiviran';

  @override
  String get showArchived => 'Prikaži Arhivirano';

  @override
  String get hideArchived => 'Sakrij Arhivirano';

  @override
  String get gistPinned => 'Gist otključan';

  @override
  String get gistUnpinned => 'Gist nije označen kao preferirani';

  @override
  String get gistArchived => 'Gist arhiviran';

  @override
  String get gistUnarchived => 'Gist nije arhiviran';

  @override
  String get organize => 'Organiziraj';

  @override
  String get exportCurrentFile => 'Izvozi Izabrani Datoteku';

  @override
  String get exportAllFiles => 'Izvoz sve datoteke';

  @override
  String get shareCurrentFile => 'Podijeli Izabrani Datoteku';

  @override
  String get shareAllFiles => 'Podijeli sve datoteke';

  @override
  String get deleteSelectedFile => 'Izbriši izabrani datoteku';

  @override
  String get deleteAllFiles => 'Izbriši cijeli gist';

  @override
  String get exportAllSuccess => 'Sve datoteke izvezene u';

  @override
  String filesExported(int count) {
    return '$count datoteka izvezena';
  }

  @override
  String get openInFinderAfterExport => 'Otvaraj Finder nakon izvoza datoteke';

  @override
  String get ok => 'U redu';

  @override
  String get open => 'Otvorite';

  @override
  String get discard => 'Odustani';

  @override
  String errorWithDetails(String error) {
    return 'Greška: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Greška pri učitavanju sadržaja: $statusCode';
  }

  @override
  String get noDescription => 'Bez opisa';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count više datoteka',
      one: 'još 1 datoteka',
    );
    return '... i $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Kreirano: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Ažurirano: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Ažurirano: $time';
  }

  @override
  String get deleteFile => 'Izbriši datoteku';

  @override
  String deleteFileMessage(String fileName) {
    return 'Usporedo ćete trajno izbrisati datoteku \"$fileName\".';
  }

  @override
  String get deleteGistMessage =>
      'Usporedo se priprema trajno brisanje ovog gist-a.';

  @override
  String get deleteEntireGistMessage =>
      'Uspoređujete trajno izbrisati cijeli ovaj gist i sve njegove datoteke.';

  @override
  String get conflictResolution => 'Rješavanje sukoba';

  @override
  String get allConflictsResolved => 'Svi sukobi riješeni!';

  @override
  String conflictProgress(int current, int total) {
    return 'Sukob $current od $total';
  }

  @override
  String get previousConflict => 'Prijašnji sukob';

  @override
  String get nextConflict => 'Sljedeći sukob';

  @override
  String get conflictExplanation =>
      'Ovaj gist je izmijenjen lokalno i udaljeno. Odaberite koju verziju želite zadržati.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Vaša lokalna verzija';

  @override
  String get remoteVersionGitHub => 'Udaljena verzija (GitHub)';

  @override
  String get chooseResolution => 'Odaberite rješenje:';

  @override
  String get keepMyLocalChanges => 'Sačuvaj moje lokalne promjene';

  @override
  String get keepMyLocalChangesDescription =>
      'Zamijeni udaljenu verziju svojim lokalnim izmjenama';

  @override
  String get keepRemoteVersion => 'Zadrži udaljenu verziju';

  @override
  String get keepRemoteVersionDescription =>
      'Odbaci lokalne promjene i koristi GitHub verziju';

  @override
  String get discardLocalChanges => 'Odbaci lokalne promjene';

  @override
  String get discardLocalChangesDescription =>
      'Ukloni ovu operaciju iz reda sinkronizacije';

  @override
  String get modifiedUnknown => 'Izmijenjeno: nepoznato';

  @override
  String modifiedAt(String time) {
    return 'Izmijenjeno: $time';
  }

  @override
  String get filesLabel => 'Datoteke:';

  @override
  String get fileDeletedLabel => 'obrisano';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count znaka',
      one: '1 znak',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Upravo sada';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuta prije',
      one: 'prije 1 minute',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sati ranije',
      one: '1 sat ranije',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dana',
      one: 'prije 1 dan',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Sačuvati lokalne promjene?';

  @override
  String get keepLocalChangesMessage =>
      'Ovo će prepisati udaljenu verziju s vašim lokalnim izmjenama. Ova radnja se ne može poništiti.';

  @override
  String get keepLocal => 'Zadrži lokalne promjene';

  @override
  String get keepRemoteVersionTitle => 'Želite li zadržati udaljenu verziju?';

  @override
  String get keepRemoteVersionMessage =>
      'Odbacit će ovo vaše lokalne promjene i zadržati udaljenu verziju. Ova radnja se ne može poništiti.';

  @override
  String get keepRemote => 'Zadrži udaljenu verziju';

  @override
  String get discardChangesTitle => 'Odustani od promjena?';

  @override
  String get discardChangesMessage =>
      'Odbacivanje promjena uklonit će vaše lokalne izmjene bez sinkronizacije. Ova radnja se ne može poništiti.';

  @override
  String get gistMustHaveOneFile => 'Gist mora sadržavati barem jednu datoteku';

  @override
  String errorCreatingGist(String error) {
    return 'Greška prilikom stvaranja gista: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist spremljen izvan mreže. Usklađivanje će se dogoditi kada se povežete.';

  @override
  String errorSavingGist(String error) {
    return 'Greška prilikom spremanja gist-a: $error';
  }

  @override
  String get changesSavedOffline =>
      'Promjene spremljene izvan mreže. Sinkronizirat će se kad se povežete.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Želite li izbrisati samo \"$fileName\" ili cijeli gist?';
  }

  @override
  String errorDeleting(String error) {
    return 'Greška prilikom brisanja: $error';
  }

  @override
  String get addFile => 'Dodaj datoteku';

  @override
  String get removeFile => 'Ukloni datoteku';

  @override
  String newFileNumbered(int number) {
    return 'Nova datoteka $number';
  }

  @override
  String get newGist => 'Novi Gist';

  @override
  String get filenameHint => 'npr. script.py';

  @override
  String get offlineNoCachedGists =>
      'Niste povezani. Nema dostupnih pohranjenih Gista.';

  @override
  String get syncStatus => 'Status sinkronizacije';

  @override
  String get syncing => 'U tijeku sinkronizacija...';

  @override
  String pendingCountLabel(int count) {
    return 'U tijeku: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Sukobi: $count';
  }

  @override
  String get operationsLabel => 'Radnje:';

  @override
  String get resolveConflicts => 'Riješi sukobe';

  @override
  String get willSyncWhenRestored =>
      'Usklađivanje će se automatski pokrenuti kada se uspostavi veza';

  @override
  String get syncNow => 'Sinkroniziraj sada';

  @override
  String get selectLanguage => 'Odaberi jezik';

  @override
  String get offlineChangesWillSync =>
      'Niste povezani. Promjene će se sinkronizirati kada se povežete.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count na čekanju',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Greška pri učitavanju javnih Gistova: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Greška pri pretraživanju: $error';
  }

  @override
  String byAuthor(String author) {
    return 'od $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Greška pri prijavljivanju: $error';
  }

  @override
  String get connectingToGitHub => 'Povezivanje s GitHubom';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Greška prilikom postavljanja pokretanja pri prijavi: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Greška pri izlasku iz aplikacije: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Greška pri odjavi: $error';
  }

  @override
  String get tabSize => 'Veličina tabova';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count razmaka',
      one: '1 razmak',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tipka Tab će umetnuti $count razmaka',
      one: 'Tipka Tab će umetnuti 1 razmak',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile =>
      'Greška pri učitavanju korisničkog profila';

  @override
  String get followers => 'Pratitelji';

  @override
  String get following => 'Pratioca';

  @override
  String get repos => 'Repozitoriji';

  @override
  String get gists => 'Gistovi';

  @override
  String joinedDate(String date) {
    return 'Pridružio/la se $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Pregledaj Gistove korisnika $username';
  }

  @override
  String get openLink => 'Otvorite vezu';

  @override
  String openLinkConfirmation(String url) {
    return 'Želite li otvoriti ovu poveznicu u pregledniku?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Nije moguće otvoriti poveznicu';

  @override
  String get noFollowersFound => 'Nema pratitelja';

  @override
  String get noFollowingFound => 'Nema pratitelja';

  @override
  String errorLoadingFollowers(String error) {
    return 'Greška pri učitavanju pratitelja: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Greška pri učitavanju popratitelja: $error';
  }

  @override
  String get deleteIsPermanent =>
      'Ova radnja je trajna i ne može se poništiti.';

  @override
  String typeToConfirm(String text) {
    return 'Upišite \"$text\" za potvrdu:';
  }

  @override
  String typeExactly(String text) {
    return 'Molimo vas unesite točno \"$text\"';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Datoteka \"$fileName\" je izbrisana';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Greška prilikom brisanja datoteke: $error';
  }

  @override
  String get gistDeleted => 'Gist je obrisan';

  @override
  String errorDeletingGist(String error) {
    return 'Greška prilikom brisanja gista: $error';
  }

  @override
  String get noFilesAvailable => 'Nema dostupnih datoteka';

  @override
  String get fileDataNotAvailable => 'Podaci o datoteci nisu dostupni';

  @override
  String get copied => 'Kopirano!';

  @override
  String get copyToClipboard => 'Kopiraj u međuspremnik';

  @override
  String get contentCopiedToClipboard => 'Sadržaj kopiran u međuspremnik';

  @override
  String get copyGistContentToClipboard =>
      'Kopiraj sadržaj Gista u međuspremnik';

  @override
  String get internetNotAvailable => 'Nema internetske veze';

  @override
  String get editGist => 'Uredi bilješku';
}
