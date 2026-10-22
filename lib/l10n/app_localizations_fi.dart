// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get signIn => 'Kirjaudu sisään GitHubilla';

  @override
  String get search => 'Haku';

  @override
  String get allLanguages => 'Kaikki kielet';

  @override
  String get darkMode => 'TUMMA TILA';

  @override
  String get theme => 'Teema';

  @override
  String get lightTheme => 'Vaalea';

  @override
  String get darkTheme => 'Tumma';

  @override
  String get systemTheme => 'Järjestelmä';

  @override
  String get fontSize => 'Fonttikoko';

  @override
  String get logout => 'Kirjaudu ulos';

  @override
  String get account => 'Tili';

  @override
  String get system => 'Järjestelmä';

  @override
  String get display => 'Näyttö';

  @override
  String get deleteGist => 'Poista Gist';

  @override
  String get confirmDelete => 'Haluatko varmasti poistaa tämän gistin?';

  @override
  String get permanent => 'Tätä toimintoa ei voi kumota.';

  @override
  String get cancel => 'Peruuta';

  @override
  String get delete => 'Poista';

  @override
  String get filename => 'Tiedostonimi';

  @override
  String get description => 'Kuvaus (valinnainen)';

  @override
  String get public => 'Julkinen';

  @override
  String get created => 'luotu:';

  @override
  String get lastUpdated => 'Viimeksi päivitetty:';

  @override
  String get loadingGists => 'Ladataan Gists...';

  @override
  String get noGistsYet => 'Ei vielä gistejä';

  @override
  String get noMatchingGists => 'Vastaavia gistejä ei löytynyt';

  @override
  String get createFirstGist =>
      'Luo ensimmäinen gistisi napauttamalla alla olevaa + -painiketta';

  @override
  String get adjustSearch => 'Kokeile muuttaa hakuasi tai kielisuodatinta';

  @override
  String get scrollToTop => 'Vieritä ylös';

  @override
  String get createNewGist => 'Luo uusi gist';

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
  String get sortBy => 'Järjestä näytettävänä';

  @override
  String get sortDateNewest => 'Päivämäärä (uusin)';

  @override
  String get sortDateOldest => 'Päivämäärä (vanhin)';

  @override
  String get sortNameAsc => 'Nimi (A-Z)';

  @override
  String get sortNameDesc => 'Nimi (A-Z)';

  @override
  String get sortLanguage => 'Kieli';

  @override
  String get sortStars => 'Tähdet';

  @override
  String get pin => 'Pinni';

  @override
  String get unpin => 'Poista linkki';

  @override
  String get pinned => 'Pintainen';

  @override
  String get archive => 'Arkistoi';

  @override
  String get unarchive => 'Arkistoi';

  @override
  String get archived => 'Arkistoitu';

  @override
  String get showArchived => 'Näytä Arkistoidut';

  @override
  String get hideArchived => 'Piilota Arkistoidut';

  @override
  String get gistPinned => 'Gist on kiinnitetty';

  @override
  String get gistUnpinned => 'Gist poistettu pinosta';

  @override
  String get gistArchived => 'Gist on arkistoitu';

  @override
  String get gistUnarchived => 'Gist dearkivoinut';

  @override
  String get organize => 'Järjestä';

  @override
  String get exportCurrentFile => 'Vie Valittu Tiedosto';

  @override
  String get exportAllFiles => 'Kaikki tiedostot';

  @override
  String get shareCurrentFile => 'Jaa Valittu Tiedosto';

  @override
  String get shareAllFiles => 'Jaa kaikki tiedostot';

  @override
  String get deleteSelectedFile => 'Poista valittu tiedosto';

  @override
  String get deleteAllFiles => 'Poista koko gist';

  @override
  String get exportAllSuccess => 'Kaikki tiedostot on exportoitu';

  @override
  String filesExported(int count) {
    return '$count tiedostoa on vientoon lähetetty';
  }

  @override
  String get openInFinderAfterExport =>
      'Avaa Finder tiedostojen vientön jälkeen';

  @override
  String get ok => 'OK';

  @override
  String get open => 'Avaa';

  @override
  String get discard => 'Hylkää';

  @override
  String errorWithDetails(String error) {
    return 'Virhe: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Sisällön lataaminen epäonnistui: $statusCode';
  }

  @override
  String get noDescription => 'Ei kuvausta';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tiedostoa lisää',
      one: '1 tiedosto lisää',
    );
    return '... ja $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Luotu: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Päivitetty: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Päivitetty viimeksi: $time';
  }

  @override
  String get deleteFile => 'Poista tiedosto';

  @override
  String deleteFileMessage(String fileName) {
    return 'Olet poistamassa tiedostoa \"$fileName\" pysyvästi.';
  }

  @override
  String get deleteGistMessage =>
      'Olet aikeissa poistaa tämän gistin pysyvästi.';

  @override
  String get deleteEntireGistMessage =>
      'Olet poistamassa tämän koko gistin ja kaikki sen tiedostot pysyvästi.';

  @override
  String get conflictResolution => 'Ristiriitojen ratkaisu';

  @override
  String get allConflictsResolved => 'Kaikki ristiriidat ratkaistu!';

  @override
  String conflictProgress(int current, int total) {
    return 'Ristiriita $current / $total';
  }

  @override
  String get previousConflict => 'Edellinen konflikti';

  @override
  String get nextConflict => 'Seuraava konflikti';

  @override
  String get conflictExplanation =>
      'Tätä Gistiä muokattiin sekä paikallisesti että etänä. Valitse, kumman version haluat säilyttää.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Paikallinen versiosi';

  @override
  String get remoteVersionGitHub => 'Etäversio (GitHub)';

  @override
  String get chooseResolution => 'Valitse ratkaisu:';

  @override
  String get keepMyLocalChanges => 'Säilytä omat muutokseni';

  @override
  String get keepMyLocalChangesDescription =>
      'Korvaa etäversio paikallisilla muutoksillasi';

  @override
  String get keepRemoteVersion => 'Säilytä etäversio';

  @override
  String get keepRemoteVersionDescription =>
      'Hylkää paikalliset muutokset ja käytä GitHubin versiota';

  @override
  String get discardLocalChanges => 'Hylkää paikalliset muutokset';

  @override
  String get discardLocalChangesDescription =>
      'Poista tämä toiminto synkronointijonosta';

  @override
  String get modifiedUnknown => 'Muokattu: tuntematon';

  @override
  String modifiedAt(String time) {
    return 'Muokattu: $time';
  }

  @override
  String get filesLabel => 'Tiedostot:';

  @override
  String get fileDeletedLabel => 'poistettu';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count merkkiä',
      one: '1 merkki',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Juuri nyt';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuuttia sitten',
      one: '1 minuutti sitten',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tuntia sitten',
      one: '1 tunti sitten',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count päivää sitten',
      one: '1 päivä sitten',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Säilytä paikalliset muutokset?';

  @override
  String get keepLocalChangesMessage =>
      'Tämä korvaa etäversion paikallisilla muutoksillasi. Toimintoa ei voi peruuttaa.';

  @override
  String get keepLocal => 'Säilytä paikalliset muutokset';

  @override
  String get keepRemoteVersionTitle => 'Säilytä etäversio?';

  @override
  String get keepRemoteVersionMessage =>
      'Hylätään paikalliset muutokset ja säilytetään etäversio. Toimenpidettä ei voi peruuttaa.';

  @override
  String get keepRemote => 'Säilytä etäversio';

  @override
  String get discardChangesTitle => 'Hylkää muutokset?';

  @override
  String get discardChangesMessage =>
      'Paikalliset muutokset poistetaan peruuttamattomasti, eikä niitä synkronoida.';

  @override
  String get gistMustHaveOneFile =>
      'Gistissä täytyy olla vähintään yksi tiedosto';

  @override
  String errorCreatingGist(String error) {
    return 'Virhe luotaessa gistia: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist tallennettu offline-tilaan. Synkronoidaan kun yhteys palautuu.';

  @override
  String errorSavingGist(String error) {
    return 'Virhe tallennettaessa gistia: $error';
  }

  @override
  String get changesSavedOffline =>
      'Muutokset tallennettu offline-tilaan. Synkronoidaan, kun yhteys palautuu.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Haluatko poistaa vain \"$fileName\" vai koko gistin?';
  }

  @override
  String errorDeleting(String error) {
    return 'Virhe poistettaessa: $error';
  }

  @override
  String get addFile => 'Lisää tiedosto';

  @override
  String get removeFile => 'Poista tiedosto';

  @override
  String newFileNumbered(int number) {
    return 'Uusi tiedosto $number';
  }

  @override
  String get newGist => 'Uusi Gist';

  @override
  String get filenameHint => 'esim. skripti.py';

  @override
  String get offlineNoCachedGists =>
      'Olet offline-tilassa. Ei saatavilla välimuistissa olevia gistejä.';

  @override
  String get syncStatus => 'Synkronointitila';

  @override
  String get syncing => 'Synkronoidaan...';

  @override
  String pendingCountLabel(int count) {
    return 'Odottaa: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Ristiriitoja: $count';
  }

  @override
  String get operationsLabel => 'Toiminnot:';

  @override
  String get resolveConflicts => 'Ratkaise ristiriidat';

  @override
  String get willSyncWhenRestored =>
      'Synkronoituu automaattisesti yhteyden palautuessa';

  @override
  String get syncNow => 'Synkronoi nyt';

  @override
  String get selectLanguage => 'Valitse kieli';

  @override
  String get offlineChangesWillSync =>
      'Olet offline-tilassa. Muutokset synkronoidaan, kun olet yhteydessä.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count odottaa',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Virhe ladattaessa julkisia Gistejä: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Haku epäonnistui: $error';
  }

  @override
  String byAuthor(String author) {
    return 'kirjoittanut $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Virhe kirjautumisessa: $error';
  }

  @override
  String get connectingToGitHub => 'Yhdistetään GitHubiin';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Virhe käynnistyksen asettamisessa automaattisesti: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Virhe sovelluksen sulkemisessa: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Virhe uloskirjautumisessa: $error';
  }

  @override
  String get tabSize => 'Sisennyksen koko';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count välilyöntiä',
      one: '1 välilyönti',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tab-näppäin lisää $count välilyöntiä',
      one: 'Tab-näppäin lisää 1 välilyönnin',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'Virhe käyttäjäprofiilin lataamisessa';

  @override
  String get followers => 'Seuraajat';

  @override
  String get following => 'Seuraajat';

  @override
  String get repos => 'Repot';

  @override
  String get gists => 'Gistit';

  @override
  String joinedDate(String date) {
    return 'Liittynyt $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Näytä $username:n gistit';
  }

  @override
  String get openLink => 'Avaa linkki';

  @override
  String openLinkConfirmation(String url) {
    return 'Haluatko avata tämän linkin selaimessasi?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Linkkiä ei voitu avata';

  @override
  String get noFollowersFound => 'Seuraajia ei löytynyt';

  @override
  String get noFollowingFound => 'Seuraajia ei löytynyt';

  @override
  String errorLoadingFollowers(String error) {
    return 'Virhe lataettaessa seuraajia: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Virhe ladatessa seuraajia: $error';
  }

  @override
  String get deleteIsPermanent =>
      'Tämä toiminto on pysyvä eikä sitä voi peruuttaa.';

  @override
  String typeToConfirm(String text) {
    return 'Kirjoita \"$text\" vahvistaaksesi:';
  }

  @override
  String typeExactly(String text) {
    return 'Kirjoita \"$text\" täsmälleen';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Tiedosto \"$fileName\" poistettu';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Virhe tiedoston poistamisessa: $error';
  }

  @override
  String get gistDeleted => 'Gist poistettu';

  @override
  String errorDeletingGist(String error) {
    return 'Virhe poistettaessa gistiä: $error';
  }

  @override
  String get noFilesAvailable => 'Ei tiedostoja saatavilla';

  @override
  String get fileDataNotAvailable => 'Tiedon saatavuusongelma';

  @override
  String get copied => 'Kopioitu!';

  @override
  String get copyToClipboard => 'Kopioi leikepöydälle';

  @override
  String get contentCopiedToClipboard => 'Sisältö kopioitu leikepöydälle';

  @override
  String get copyGistContentToClipboard =>
      'Kopioi Gistin sisältö leikepöydälle';

  @override
  String get internetNotAvailable => 'Internet-yhteyttä ei ole saatavilla';

  @override
  String get editGist => 'Muokkaa Gistiä';
}
