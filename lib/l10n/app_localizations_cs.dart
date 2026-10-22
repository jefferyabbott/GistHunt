// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get signIn => 'Přihlásit se pomocí GitHubu';

  @override
  String get search => 'Hledat';

  @override
  String get allLanguages => 'Všechny jazyky';

  @override
  String get darkMode => 'TMAVÝ REŽIM';

  @override
  String get theme => 'Téma';

  @override
  String get lightTheme => 'Světlé';

  @override
  String get darkTheme => 'Tmavé';

  @override
  String get systemTheme => 'Systémové';

  @override
  String get fontSize => 'Velikost písma';

  @override
  String get logout => 'Odhlásit se';

  @override
  String get account => 'Účet';

  @override
  String get system => 'Systém';

  @override
  String get display => 'Zobrazení';

  @override
  String get deleteGist => 'Smazat Gist';

  @override
  String get confirmDelete => 'Opravdu chcete tento gist smazat?';

  @override
  String get permanent => 'Tuto akci nelze vrátit zpět.';

  @override
  String get cancel => 'Zrušit';

  @override
  String get delete => 'Smazat';

  @override
  String get filename => 'Název souboru';

  @override
  String get description => 'Popis (volitelné)';

  @override
  String get public => 'Veřejné';

  @override
  String get created => 'vytvořeno:';

  @override
  String get lastUpdated => 'Naposledy aktualizováno:';

  @override
  String get loadingGists => 'Načítání Gists...';

  @override
  String get noGistsYet => 'Zatím žádné gisty';

  @override
  String get noMatchingGists => 'Nebyly nalezeny žádné odpovídající gisty';

  @override
  String get createFirstGist =>
      'Vytvořte svůj první gist klepnutím na tlačítko + níže';

  @override
  String get adjustSearch => 'Zkuste upravit vyhledávání nebo filtr jazyka';

  @override
  String get scrollToTop => 'Posunout nahoru';

  @override
  String get createNewGist => 'Vytvořit nový gist';

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
  String get sortBy => 'Seřadit podle';

  @override
  String get sortDateNewest => 'Datum (nejnovější)';

  @override
  String get sortDateOldest => 'Datum (nejstarší)';

  @override
  String get sortNameAsc => 'Jméno (A-Z)';

  @override
  String get sortNameDesc => 'Jméno (A-Z)';

  @override
  String get sortLanguage => 'Jazyk';

  @override
  String get sortStars => 'Hvězdy';

  @override
  String get pin => 'Zapnout';

  @override
  String get unpin => 'Odlepit';

  @override
  String get pinned => 'Připevnutý';

  @override
  String get archive => 'Uloženo';

  @override
  String get unarchive => 'Nepublikovat';

  @override
  String get archived => 'Uložené';

  @override
  String get showArchived => 'Zobrazit Archivované';

  @override
  String get hideArchived => 'Ukryt archivované';

  @override
  String get gistPinned => 'Gist zablokován';

  @override
  String get gistUnpinned => 'Gist odpinut';

  @override
  String get gistArchived => 'Gist archivován';

  @override
  String get gistUnarchived => 'Gist nebyl archivován';

  @override
  String get organize => 'Organizovat';

  @override
  String get exportCurrentFile => 'Export vybraného souboru';

  @override
  String get exportAllFiles => 'Vysáhnout všechna soubory';

  @override
  String get shareCurrentFile => 'Sdílet vybraný soubor';

  @override
  String get shareAllFiles => 'Sdílet všechna soubory';

  @override
  String get deleteSelectedFile => 'Smazat vybraný soubor';

  @override
  String get deleteAllFiles => 'Smazat celý gist';

  @override
  String get exportAllSuccess => 'Všechny soubory exportovány do';

  @override
  String filesExported(int count) {
    return '$count souborů exportováno';
  }

  @override
  String get openInFinderAfterExport => 'Otevřít Finder po vývozu souborů';

  @override
  String get ok => 'OK';

  @override
  String get open => 'Otevřít';

  @override
  String get discard => 'Zrušit';

  @override
  String errorWithDetails(String error) {
    return 'Chyba: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Chyba při načítání obsahu: $statusCode';
  }

  @override
  String get noDescription => 'Žádný popis';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count další soubory',
      one: '1 další soubor',
    );
    return '... a $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Vytvořeno: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Aktualizováno: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Naposledy aktualizováno: $time';
  }

  @override
  String get deleteFile => 'Smazat soubor';

  @override
  String deleteFileMessage(String fileName) {
    return 'Chystáte se trvale smazat soubor \"$fileName\".';
  }

  @override
  String get deleteGistMessage => 'Chystáte se trvale smazat tento gist.';

  @override
  String get deleteEntireGistMessage =>
      'Chystáte se trvale smazat celý tento gist a všechny jeho soubory.';

  @override
  String get conflictResolution => 'Řešení konfliktů';

  @override
  String get allConflictsResolved => 'Všechny konflikty vyřešeny!';

  @override
  String conflictProgress(int current, int total) {
    return 'Konflikt $current z $total';
  }

  @override
  String get previousConflict => 'Předchozí konflikt';

  @override
  String get nextConflict => 'Další konflikt';

  @override
  String get conflictExplanation =>
      'Tento gist byl upraven lokálně i vzdáleně. Vyberte si verzi, kterou chcete zachovat.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Vaše lokální verze';

  @override
  String get remoteVersionGitHub => 'Vzdálená verze (GitHub)';

  @override
  String get chooseResolution => 'Vyberte řešení:';

  @override
  String get keepMyLocalChanges => 'Zachovat mé lokální změny';

  @override
  String get keepMyLocalChangesDescription =>
      'Přepsat vzdálenou verzi svými lokálními změnami';

  @override
  String get keepRemoteVersion => 'Zachovat vzdálenou verzi';

  @override
  String get keepRemoteVersionDescription =>
      'Zrušit lokální změny a použít verzi z GitHubu';

  @override
  String get discardLocalChanges => 'Zrušit lokální změny';

  @override
  String get discardLocalChangesDescription =>
      'Odstranit operaci z fronty synchronizace';

  @override
  String get modifiedUnknown => 'Upraveno: neznámé';

  @override
  String modifiedAt(String time) {
    return 'Upraveno: $time';
  }

  @override
  String get filesLabel => 'Soubory:';

  @override
  String get fileDeletedLabel => 'smazáno';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count znaků',
      one: '1 znak',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Právě teď';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minut zpět',
      one: '1 minuta zpět',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hodin zpět',
      one: '1 hodinu zpět',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dní zpět',
      one: '1 den zpět',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Zachovat lokální změny?';

  @override
  String get keepLocalChangesMessage =>
      'Přepíše vzdálenou verzi vašimi lokálními změnami. Tato akce nelze vrátit zpět.';

  @override
  String get keepLocal => 'Zachovat lokálně';

  @override
  String get keepRemoteVersionTitle => 'Zachovat vzdálenou verzi?';

  @override
  String get keepRemoteVersionMessage =>
      'Změny se zahodí a použije se vzdálená verze. Tato akce se nedá vrátit zpět.';

  @override
  String get keepRemote => 'Zachovat vzdálenou verzi';

  @override
  String get discardChangesTitle => 'Zrušit změny?';

  @override
  String get discardChangesMessage =>
      'Změny budou zahozeny bez synchronizace. Tato akce nelze vrátit zpět.';

  @override
  String get gistMustHaveOneFile => 'Gist musí obsahovat alespoň jeden soubor';

  @override
  String errorCreatingGist(String error) {
    return 'Chyba při vytváření gistu: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist uložen offline. Synchronizuje se po připojení.';

  @override
  String errorSavingGist(String error) {
    return 'Chyba při ukládání gistu: $error';
  }

  @override
  String get changesSavedOffline =>
      'Změny uloženy offline. Synchronizuje se po připojení.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Chcete smazat pouze \"$fileName\" nebo celý gist?';
  }

  @override
  String errorDeleting(String error) {
    return 'Chyba při odstraňování: $error';
  }

  @override
  String get addFile => 'Přidat soubor';

  @override
  String get removeFile => 'Odstranit soubor';

  @override
  String newFileNumbered(int number) {
    return 'Nový soubor $number';
  }

  @override
  String get newGist => 'Nový Gist';

  @override
  String get filenameHint => 'např. skript.py';

  @override
  String get offlineNoCachedGists =>
      'Jste offline. Žádné dostupné uložené gisty.';

  @override
  String get syncStatus => 'Stav synchronizace';

  @override
  String get syncing => 'Synchronizace...';

  @override
  String pendingCountLabel(int count) {
    return 'Čeká se: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Konflikty: $count';
  }

  @override
  String get operationsLabel => 'Operace:';

  @override
  String get resolveConflicts => 'Vyřešit konflikty';

  @override
  String get willSyncWhenRestored =>
      'Automaticky se synchronizuje po obnovení připojení';

  @override
  String get syncNow => 'Synchronizovat nyní';

  @override
  String get selectLanguage => 'Vyberte jazyk';

  @override
  String get offlineChangesWillSync =>
      'Jste offline. Změny se synchronizují po připojení.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count čekající',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Chyba při načítání veřejných gistů: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Chyba při vyhledávání: $error';
  }

  @override
  String byAuthor(String author) {
    return 'od $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Chyba při přihlášení: $error';
  }

  @override
  String get connectingToGitHub => 'Připojování k GitHubu';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Chyba při nastavení spouštění při přihlášení: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Chyba při ukončování aplikace: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Chyba při odhlášení: $error';
  }

  @override
  String get tabSize => 'Velikost tabulátoru';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mezer',
      one: '1 mezera',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mezer',
      one: '1 mezeru',
    );
    return 'Klávesa Tab vloží $_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'Chyba při načítání profilu uživatele';

  @override
  String get followers => 'Sledovatelé';

  @override
  String get following => 'Sleduje';

  @override
  String get repos => 'Repozitáře';

  @override
  String get gists => 'Gisty';

  @override
  String joinedDate(String date) {
    return 'Připojeno $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Zobrazit Gisty uživatele $username';
  }

  @override
  String get openLink => 'Otevřít odkaz';

  @override
  String openLinkConfirmation(String url) {
    return 'Chcete otevřít tento odkaz ve vašem prohlížeči?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Nelze otevřít odkaz';

  @override
  String get noFollowersFound => 'Žádní sledující nebyli nalezeni';

  @override
  String get noFollowingFound => 'Nenalezeno žádné sledování';

  @override
  String errorLoadingFollowers(String error) {
    return 'Chyba při načítání sledujících: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Chyba při načítání sledovaných: $error';
  }

  @override
  String get deleteIsPermanent => 'Tato akce je nevratná a nelze ji zrušit.';

  @override
  String typeToConfirm(String text) {
    return 'Zadejte \"$text\" pro potvrzení:';
  }

  @override
  String typeExactly(String text) {
    return 'Zadejte přesně \"$text\"';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Soubor \"$fileName\" byl smazán';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Chyba při odstraňování souboru: $error';
  }

  @override
  String get gistDeleted => 'Gist smazán';

  @override
  String errorDeletingGist(String error) {
    return 'Chyba při odstraňování gistu: $error';
  }

  @override
  String get noFilesAvailable => 'Žádné soubory nejsou dostupné';

  @override
  String get fileDataNotAvailable => 'Data souboru nedostupná';

  @override
  String get copied => 'Zkopírováno!';

  @override
  String get copyToClipboard => 'Kopírovat do schránky';

  @override
  String get contentCopiedToClipboard => 'Obsah byl zkopírován do schránky';

  @override
  String get copyGistContentToClipboard => 'Kopírovat obsah Gistu do schránky';

  @override
  String get internetNotAvailable => 'Není k dispozici připojení k internetu';

  @override
  String get editGist => 'Upravit gist';
}
