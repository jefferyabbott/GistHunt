// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get signIn => 'Conectați-vă cu GitHub';

  @override
  String get search => 'Căutare';

  @override
  String get allLanguages => 'Toate limbile';

  @override
  String get darkMode => 'MOD ÎNTUNECAT';

  @override
  String get theme => 'Temă';

  @override
  String get lightTheme => 'Luminos';

  @override
  String get darkTheme => 'Întunecat';

  @override
  String get systemTheme => 'Sistem';

  @override
  String get fontSize => 'Dimensiune font';

  @override
  String get logout => 'Deconectare';

  @override
  String get account => 'Cont';

  @override
  String get system => 'Sistem';

  @override
  String get display => 'Afișare';

  @override
  String get deleteGist => 'Șterge Gist';

  @override
  String get confirmDelete => 'Sigur doriți să ștergeți acest gist?';

  @override
  String get permanent => 'Această acțiune nu poate fi anulată.';

  @override
  String get cancel => 'Anulare';

  @override
  String get delete => 'Șterge';

  @override
  String get filename => 'Nume fișier';

  @override
  String get description => 'Descriere (opțional)';

  @override
  String get public => 'Public';

  @override
  String get created => 'creat:';

  @override
  String get lastUpdated => 'Ultima actualizare:';

  @override
  String get loadingGists => 'Se încarcă Gists...';

  @override
  String get noGistsYet => 'Încă nu există gist-uri';

  @override
  String get noMatchingGists => 'Nu s-au găsit gist-uri corespunzătoare';

  @override
  String get createFirstGist =>
      'Creează primul tău gist apăsând butonul + de mai jos';

  @override
  String get adjustSearch =>
      'Încercați să ajustați căutarea sau filtrul de limbă';

  @override
  String get scrollToTop => 'Derulați în sus';

  @override
  String get createNewGist => 'Creați gist nou';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => 'Ieșire';

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
  String get sortBy => 'Ordonare după';

  @override
  String get sortDateNewest => 'Data (Cele mai noi)';

  @override
  String get sortDateOldest => 'Data (Cel mai vechi)';

  @override
  String get sortNameAsc => 'Nume (A-Z)';

  @override
  String get sortNameDesc => 'Nume (A-Z)';

  @override
  String get sortLanguage => 'Limba';

  @override
  String get sortStars => 'Stele';

  @override
  String get pin => 'Pin';

  @override
  String get unpin => 'Unpin';

  @override
  String get pinned => 'Pinsat';

  @override
  String get archive => 'Arhivare';

  @override
  String get unarchive => 'Unarchive';

  @override
  String get archived => 'Arhivat';

  @override
  String get showArchived => 'Arată Arhivate';

  @override
  String get hideArchived => 'Ascunde Arhivate';

  @override
  String get gistPinned => 'Gistul este pinat';

  @override
  String get gistUnpinned => 'Gistul nu mai este pinat';

  @override
  String get gistArchived => 'Gistul a fost arhivat';

  @override
  String get gistUnarchived => 'Gistul nu a fost dezarchivat';

  @override
  String get organize => 'Organizați';

  @override
  String get exportCurrentFile => 'Exportați fișierul selectat';

  @override
  String get exportAllFiles => 'Exportă Toate Fisierele';

  @override
  String get shareCurrentFile => 'Share fișierul selectat';

  @override
  String get shareAllFiles => 'Share toate fișierele';

  @override
  String get deleteSelectedFile => 'Șterge fișierul selectat';

  @override
  String get deleteAllFiles => 'Șterge întreg gistul';

  @override
  String get exportAllSuccess => 'Toate fișierele au fost exportate în';

  @override
  String filesExported(int count) {
    return '$count fișiere exportate';
  }

  @override
  String get openInFinderAfterExport =>
      'Deschide Finder-ul după exportarea fișierului';

  @override
  String get ok => 'OK';

  @override
  String get open => 'Deschide';

  @override
  String get discard => 'Renunță';

  @override
  String errorWithDetails(String error) {
    return 'Eroare: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Eroare la încărcarea conținutului: $statusCode';
  }

  @override
  String get noDescription => 'Fără descriere';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fișiere',
      one: 'încă un fișier',
    );
    return '... și $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Creat: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Actualizat: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Ultima actualizare: $time';
  }

  @override
  String get deleteFile => 'Șterge fișierul';

  @override
  String deleteFileMessage(String fileName) {
    return 'Ești pe cale să ștergi permanent fișierul \"$fileName\".';
  }

  @override
  String get deleteGistMessage =>
      'Ești pe cale să ștergi definitiv acest gist.';

  @override
  String get deleteEntireGistMessage =>
      'Ești pe cale să ștergi definitiv acest întreg gist și toate fișierele sale.';

  @override
  String get conflictResolution => 'Rezolvare conflicte';

  @override
  String get allConflictsResolved => 'Toate conflictele au fost rezolvate!';

  @override
  String conflictProgress(int current, int total) {
    return 'Conflictul $current din $total';
  }

  @override
  String get previousConflict => 'Conflict anterior';

  @override
  String get nextConflict => 'Conflict următor';

  @override
  String get conflictExplanation =>
      'Acest gist a fost modificat atât local, cât și de la distanță. Alege ce versiune să păstrezi.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Versiunea ta locală';

  @override
  String get remoteVersionGitHub => 'Versiunea de la distanță (GitHub)';

  @override
  String get chooseResolution => 'Alegeți rezoluția:';

  @override
  String get keepMyLocalChanges => 'Păstrează modificările mele locale';

  @override
  String get keepMyLocalChangesDescription =>
      'Suprascrie versiunea de la distanță cu modificările tale locale';

  @override
  String get keepRemoteVersion => 'Păstrează versiunea de la distanță';

  @override
  String get keepRemoteVersionDescription =>
      'Renunță la modificările locale și folosește versiunea de pe GitHub';

  @override
  String get discardLocalChanges => 'Renunță la modificările locale';

  @override
  String get discardLocalChangesDescription =>
      'Elimină această operațiune din coada de sincronizare';

  @override
  String get modifiedUnknown => 'Modificat: necunoscut';

  @override
  String modifiedAt(String time) {
    return 'Modificat: $time';
  }

  @override
  String get filesLabel => 'Fișiere:';

  @override
  String get fileDeletedLabel => 'șters';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count caractere',
      one: '1 caracter',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Acum';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minute în urmă',
      one: 'acum 1 minut',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ore în urmă',
      one: 'acum 1 oră',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zile în urmă',
      one: 'acum 1 zi',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Păstrezi modificările locale?';

  @override
  String get keepLocalChangesMessage =>
      'Modificările tale locale vor suprascrie versiunea de la distanță. Acțiunea nu poate fi anulată.';

  @override
  String get keepLocal => 'Păstrează local';

  @override
  String get keepRemoteVersionTitle => 'Păstrezi versiunea de la distanță?';

  @override
  String get keepRemoteVersionMessage =>
      'Aceasta va elimina modificările locale și va păstra versiunea de la distanță. Acțiunea nu poate fi anulată.';

  @override
  String get keepRemote => 'Păstrează versiunea de la distanță';

  @override
  String get discardChangesTitle => 'Renunța la modificări?';

  @override
  String get discardChangesMessage =>
      'Aceste modificări locale vor fi eliminate fără a fi sincronizate. Acțiunea nu poate fi anulată.';

  @override
  String get gistMustHaveOneFile =>
      'Gist-ul trebuie să aibă cel puțin un fișier';

  @override
  String errorCreatingGist(String error) {
    return 'Eroare la crearea gistului: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist salvat offline. Se va sincroniza când se conectează.';

  @override
  String errorSavingGist(String error) {
    return 'Eroare la salvarea gistului: $error';
  }

  @override
  String get changesSavedOffline =>
      'Modificări salvate offline. Se vor sincroniza la conectare.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Dorești să ștergi doar \"$fileName\" sau întregul gist?';
  }

  @override
  String errorDeleting(String error) {
    return 'Eroare la ștergere: $error';
  }

  @override
  String get addFile => 'Adăugare fișier';

  @override
  String get removeFile => 'Elimină fișierul';

  @override
  String newFileNumbered(int number) {
    return 'Fișier nou $number';
  }

  @override
  String get newGist => 'Gist Nou';

  @override
  String get filenameHint => 'ex: script.py';

  @override
  String get offlineNoCachedGists =>
      'Ești deconectat. Nu sunt disponibile gists salvate în cache.';

  @override
  String get syncStatus => 'Stare sincronizare';

  @override
  String get syncing => 'Sincronizare...';

  @override
  String pendingCountLabel(int count) {
    return 'În așteptare: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Conflicte: $count';
  }

  @override
  String get operationsLabel => 'Operațiuni:';

  @override
  String get resolveConflicts => 'Rezolvă conflictele';

  @override
  String get willSyncWhenRestored =>
      'Se va sincroniza automat când conexiunea este restabilită';

  @override
  String get syncNow => 'Sincronizează acum';

  @override
  String get selectLanguage => 'Selectează limba';

  @override
  String get offlineChangesWillSync =>
      'Ești deconectat. Modificările se vor sincroniza la conectare.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count în așteptare',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Eroare la încărcarea gists-urilor publice: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Eroare la căutare: $error';
  }

  @override
  String byAuthor(String author) {
    return 'de $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Eroare la conectare: $error';
  }

  @override
  String get connectingToGitHub => 'Conectare la GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Eroare la configurarea lansării la pornire: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Eroare la închiderea aplicației: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Eroare la deconectare: $error';
  }

  @override
  String get tabSize => 'Dimensiunea tab-ului';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spații',
      one: '1 spațiu',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tasta Tab va insera $count spații',
      one: 'Tasta Tab va insera 1 spațiu',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile =>
      'Eroare la încărcarea profilului de utilizator';

  @override
  String get followers => 'Urmăritori';

  @override
  String get following => 'Urmăritori';

  @override
  String get repos => 'Depozite';

  @override
  String get gists => 'Gisturi';

  @override
  String joinedDate(String date) {
    return 'S-a alăturat în $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Gist-urile lui $username';
  }

  @override
  String get openLink => 'Deschide link-ul';

  @override
  String openLinkConfirmation(String url) {
    return 'Dorești să deschizi acest link în browser?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Nu s-a putut deschide link-ul';

  @override
  String get noFollowersFound => 'Nu s-au găsit urmăritori';

  @override
  String get noFollowingFound => 'Nu s-au găsit urmăritori';

  @override
  String errorLoadingFollowers(String error) {
    return 'Eroare la încărcarea urmăritorilor: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Eroare la încărcarea urmăritorilor: $error';
  }

  @override
  String get deleteIsPermanent =>
      'Acțiunea este permanentă și nu poate fi anulată.';

  @override
  String typeToConfirm(String text) {
    return 'Scrie \"$text\" pentru a confirma:';
  }

  @override
  String typeExactly(String text) {
    return 'Vă rugăm să tastați \"$text\" exact';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Fișierul \"$fileName\" a fost șters';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Eroare la ștergerea fișierului: $error';
  }

  @override
  String get gistDeleted => 'Gist șters';

  @override
  String errorDeletingGist(String error) {
    return 'Eroare la ștergerea gist-ului: $error';
  }

  @override
  String get noFilesAvailable => 'Niciun fișier disponibil';

  @override
  String get fileDataNotAvailable => 'Datele fișierului indisponibile';

  @override
  String get copied => 'Copiat!';

  @override
  String get copyToClipboard => 'Copiază în clipboard';

  @override
  String get contentCopiedToClipboard => 'Conținut copiat în clipboard';

  @override
  String get copyGistContentToClipboard =>
      'Copiază conținutul Gist în clipboard';

  @override
  String get internetNotAvailable => 'Conexiune la internet indisponibilă';

  @override
  String get editGist => 'Editează gist';
}
