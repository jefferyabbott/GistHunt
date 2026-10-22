// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get signIn => 'Bejelentkezés GitHub-bal';

  @override
  String get search => 'Keresés';

  @override
  String get allLanguages => 'Minden nyelv';

  @override
  String get darkMode => 'SÖTÉT MÓD';

  @override
  String get theme => 'Téma';

  @override
  String get lightTheme => 'Világos';

  @override
  String get darkTheme => 'Sötét';

  @override
  String get systemTheme => 'Rendszer';

  @override
  String get fontSize => 'Betűméret';

  @override
  String get logout => 'Kijelentkezés';

  @override
  String get account => 'Fiók';

  @override
  String get system => 'Rendszer';

  @override
  String get display => 'Megjelenítés';

  @override
  String get deleteGist => 'Gist törlése';

  @override
  String get confirmDelete => 'Biztosan törölni szeretné ezt a gistet?';

  @override
  String get permanent => 'Ezt a műveletet nem lehet visszavonni.';

  @override
  String get cancel => 'Mégse';

  @override
  String get delete => 'Törlés';

  @override
  String get filename => 'Fájlnév';

  @override
  String get description => 'Leírás (opcionális)';

  @override
  String get public => 'Nyilvános';

  @override
  String get created => 'létrehozva:';

  @override
  String get lastUpdated => 'Utoljára frissítve:';

  @override
  String get loadingGists => 'Gists betöltése...';

  @override
  String get noGistsYet => 'Még nincsenek gistek';

  @override
  String get noMatchingGists => 'Nem találhatók egyező gistek';

  @override
  String get createFirstGist =>
      'Hozd létre az első gistedet az alábbi + gombra koppintva';

  @override
  String get adjustSearch =>
      'Próbáld meg módosítani a keresést vagy a nyelvi szűrőt';

  @override
  String get scrollToTop => 'Görgetés felfelé';

  @override
  String get createNewGist => 'Új gist létrehozása';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => 'Kilépés';

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
  String get sortBy => 'Sorrendben rendezés';

  @override
  String get sortDateNewest => 'Dátum (Legújabb)';

  @override
  String get sortDateOldest => 'Dátum (Legrégebbi)';

  @override
  String get sortNameAsc => 'Név (A-Z)';

  @override
  String get sortNameDesc => 'Név (A-Z)';

  @override
  String get sortLanguage => 'Nyelv';

  @override
  String get sortStars => 'Csillagok';

  @override
  String get pin => 'Pinned';

  @override
  String get unpin => 'Unpin';

  @override
  String get pinned => 'Pinned';

  @override
  String get archive => 'Archiválás';

  @override
  String get unarchive => 'Unarchiválás';

  @override
  String get archived => 'Archivált';

  @override
  String get showArchived => 'Megtalálhatók';

  @override
  String get hideArchived => 'Archiváltak elrejtése';

  @override
  String get gistPinned => 'Gist felhőbe rakva';

  @override
  String get gistUnpinned => 'Gist lefuttatva';

  @override
  String get gistArchived => 'Gist archiválva';

  @override
  String get gistUnarchived => 'Gist nem archiválva';

  @override
  String get organize => 'Szervezés';

  @override
  String get exportCurrentFile => 'Exportált Fájl';

  @override
  String get exportAllFiles => 'Összes Fájl Exportálása';

  @override
  String get shareCurrentFile => 'Közös választott fájl megosztása';

  @override
  String get shareAllFiles => 'Összes Fájlt Megoszt';

  @override
  String get deleteSelectedFile => 'Törlés kiválasztott fájltól';

  @override
  String get deleteAllFiles => 'Teljes gist törlése';

  @override
  String get exportAllSuccess => 'Minden fájl exportálva';

  @override
  String filesExported(int count) {
    return '$count fájl exportálva';
  }

  @override
  String get openInFinderAfterExport =>
      'Finder megnyitása a fájl exportálás után';

  @override
  String get ok => 'Rendben';

  @override
  String get open => 'Megnyitás';

  @override
  String get discard => 'Mégse';

  @override
  String errorWithDetails(String error) {
    return 'Hiba: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'A tartalom betöltése sikertelen: $statusCode';
  }

  @override
  String get noDescription => 'Nincs leírás';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count további fájl',
      one: '1 további fájl',
    );
    return '... és $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Létrehozva: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Frissítve: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Frissítve: $time';
  }

  @override
  String get deleteFile => 'Fájl törlése';

  @override
  String deleteFileMessage(String fileName) {
    return 'A(z) \"$fileName\" fájl véglegesen törlésre kerül.';
  }

  @override
  String get deleteGistMessage => 'A Gist végleges törléséről vagyunk.';

  @override
  String get deleteEntireGistMessage =>
      'A teljes Gist és annak összes fájlja véglegesen törlésre kerül.';

  @override
  String get conflictResolution => 'Konfliktusmegoldás';

  @override
  String get allConflictsResolved => 'Minden konfliktus megoldódott!';

  @override
  String conflictProgress(int current, int total) {
    return 'Konfliktus $current a $total közül';
  }

  @override
  String get previousConflict => 'Előző konfliktus';

  @override
  String get nextConflict => 'Következő konfliktus';

  @override
  String get conflictExplanation =>
      'Ez a Gist mind helyileg, mind távolról módosítva lett. Válassza ki, melyik verziót szeretné megtartani.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'A helyi változatod';

  @override
  String get remoteVersionGitHub => 'Távoli verzió (GitHub)';

  @override
  String get chooseResolution => 'Konfliktusmegoldás kiválasztása:';

  @override
  String get keepMyLocalChanges => 'A helyi változásaim megőrzése';

  @override
  String get keepMyLocalChangesDescription =>
      'A helyi változásaidat felülírják a távoli verzióra';

  @override
  String get keepRemoteVersion => 'Távoli verzió megtartása';

  @override
  String get keepRemoteVersionDescription =>
      'Elveti a helyi módosításait és a GitHub verziót használja';

  @override
  String get discardLocalChanges => 'A helyi módosítások elvetése';

  @override
  String get discardLocalChangesDescription =>
      'Eltávolítja ezt a műveletet a szinkronizálási sorból';

  @override
  String get modifiedUnknown => 'Módosítva: ismeretlen';

  @override
  String modifiedAt(String time) {
    return 'Módosítva: $time';
  }

  @override
  String get filesLabel => 'Fájlok:';

  @override
  String get fileDeletedLabel => 'törölve';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count karakter',
      one: '1 karakter',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Éppen most';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count perc ezelőtt',
      one: '1 perc ezelőtt',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count órája',
      one: '1 órája',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count napja',
      one: '1 napja',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Helyi módosítások megtartása?';

  @override
  String get keepLocalChangesMessage =>
      'A helyi módosítások felülírják a távoli verziót. Ez a művelet nem vonható vissza.';

  @override
  String get keepLocal => 'Helyi módosítások megőrzése';

  @override
  String get keepRemoteVersionTitle => 'A távoli verziót megtartani?';

  @override
  String get keepRemoteVersionMessage =>
      'Ez elveti a helyi módosításait, és a távoli verziót tartja meg. Ez a művelet nem vonható vissza.';

  @override
  String get keepRemote => 'Távoli verzió megőrzése';

  @override
  String get discardChangesTitle => 'Visszaállítás a módosításokhoz?';

  @override
  String get discardChangesMessage =>
      'A helyi módosításaid törlődnek szinkronizálás nélkül. Ez a művelet nem vonható vissza.';

  @override
  String get gistMustHaveOneFile =>
      'A Gistnek legalább egy fájlja kell, hogy legyen';

  @override
  String errorCreatingGist(String error) {
    return 'Hiba a Gist létrehozásakor: $error';
  }

  @override
  String get gistSavedOffline =>
      'A Gist offline mentve. Szinkronizálódik, amint csatlakozik a hálózathoz.';

  @override
  String errorSavingGist(String error) {
    return 'Hiba a Gist mentése közben: $error';
  }

  @override
  String get changesSavedOffline =>
      'A módosítások offline mentve. A szinkronizálás a kapcsolat helyreállításakor történik.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Szeretnéd törölni csak a(z) \"$fileName\" fájlt, vagy az egész gistet?';
  }

  @override
  String errorDeleting(String error) {
    return 'Sikertelen törlés: $error';
  }

  @override
  String get addFile => 'Fájl hozzáadása';

  @override
  String get removeFile => 'Fájl eltávolítása';

  @override
  String newFileNumbered(int number) {
    return 'Új fájl $number';
  }

  @override
  String get newGist => 'Új Gist';

  @override
  String get filenameHint => 'pl. szkript.py';

  @override
  String get offlineNoCachedGists =>
      'Nincs internetkapcsolat. Nincs elérhető mentett Gist.';

  @override
  String get syncStatus => 'Szinkronizálás állapota';

  @override
  String get syncing => 'Szinchronizálás...';

  @override
  String pendingCountLabel(int count) {
    return 'Függőben: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Ütközések: $count';
  }

  @override
  String get operationsLabel => 'Műveletek:';

  @override
  String get resolveConflicts => 'Konfliktusok megoldása';

  @override
  String get willSyncWhenRestored =>
      'Automatikus szinkronizálás a kapcsolat helyreállításakor';

  @override
  String get syncNow => 'Szinchronizálás most';

  @override
  String get selectLanguage => 'Nyelv kiválasztása';

  @override
  String get offlineChangesWillSync =>
      'Nincs internetkapcsolat. A változtatások szinkronizálódnak, amint csatlakozik.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count függőben',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Hiba a nyilvános Gistek betöltése közben: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Hiba a keresés során: $error';
  }

  @override
  String byAuthor(String author) {
    return 'által $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Bejelentkezési hiba: $error';
  }

  @override
  String get connectingToGitHub => 'Csatlakozás a GitHubhoz';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Hiba az automatikus indítás beállításánál: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Hiba az alkalmazás leállításánál: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Hiba az ösztönzésnél: $error';
  }

  @override
  String get tabSize => 'Tabméret';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count szóköz',
      one: '1 szóköz',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A Tab billentyű $count szóközt illeszt be',
      one: 'A Tab billentyű 1 szóközt illeszt be',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile =>
      'A felhasználói profil betöltése sikertelen';

  @override
  String get followers => 'Követők';

  @override
  String get following => 'Követők';

  @override
  String get repos => 'Adattárak';

  @override
  String get gists => 'Gistek';

  @override
  String joinedDate(String date) {
    return 'Csatlakozott $date';
  }

  @override
  String viewUserGists(String username) {
    return '$username Gistjeinek megtekintése';
  }

  @override
  String get openLink => 'Link megnyitása';

  @override
  String openLinkConfirmation(String url) {
    return 'Meg szeretnéd megnyitni ezt a linket a böngésződben?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'A link megnyitása sikertelen';

  @override
  String get noFollowersFound => 'Nincs követő';

  @override
  String get noFollowingFound => 'Nincs követő';

  @override
  String errorLoadingFollowers(String error) {
    return 'Hiba a követők betöltése közben: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Hiba a követők betöltése közben: $error';
  }

  @override
  String get deleteIsPermanent =>
      'Ez a művelet végleges, és nem vonható vissza.';

  @override
  String typeToConfirm(String text) {
    return 'Írja be a \"$text\" szöveget a megerősítéshez:';
  }

  @override
  String typeExactly(String text) {
    return 'Kérjük, pontosan írja be a \"$text\" szöveget!';
  }

  @override
  String fileDeleted(String fileName) {
    return 'A(z) \"$fileName\" fájl törölve';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Hiba a fájl törlésénél: $error';
  }

  @override
  String get gistDeleted => 'Gist törölve';

  @override
  String errorDeletingGist(String error) {
    return 'Hiba a Gist törlésénél: $error';
  }

  @override
  String get noFilesAvailable => 'Nincs fájl elérhető';

  @override
  String get fileDataNotAvailable => 'A fájladatok nem elérhetők';

  @override
  String get copied => 'Másolva!';

  @override
  String get copyToClipboard => 'Másolás vágólapra';

  @override
  String get contentCopiedToClipboard => 'Tartalom másolva a vágólapra';

  @override
  String get copyGistContentToClipboard => 'Gist tartalom másolása vágólapra';

  @override
  String get internetNotAvailable => 'Nincs internetkapcsolat';

  @override
  String get editGist => 'Gist szerkesztése';
}
