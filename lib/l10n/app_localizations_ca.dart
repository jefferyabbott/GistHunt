// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get signIn => 'Inicia sessió amb GitHub';

  @override
  String get search => 'Cerca';

  @override
  String get allLanguages => 'Tots els idiomes';

  @override
  String get darkMode => 'MODE FOSC';

  @override
  String get theme => 'Tema';

  @override
  String get lightTheme => 'Clar';

  @override
  String get darkTheme => 'Fosc';

  @override
  String get systemTheme => 'Sistema';

  @override
  String get fontSize => 'Mida de la font';

  @override
  String get logout => 'Tanca la sessió';

  @override
  String get account => 'Compte';

  @override
  String get system => 'Sistema';

  @override
  String get display => 'Visualització';

  @override
  String get deleteGist => 'Elimina Gist';

  @override
  String get confirmDelete => 'Estàs segur que vols eliminar aquest gist?';

  @override
  String get permanent => 'Aquesta acció no es pot desfer.';

  @override
  String get cancel => 'Cancel·la';

  @override
  String get delete => 'Elimina';

  @override
  String get filename => 'Nom del fitxer';

  @override
  String get description => 'Descripció (opcional)';

  @override
  String get public => 'Públic';

  @override
  String get created => 'creat:';

  @override
  String get lastUpdated => 'Última actualització:';

  @override
  String get loadingGists => 'Carregant Gists...';

  @override
  String get noGistsYet => 'Encara no hi ha gists';

  @override
  String get noMatchingGists => 'No s\'han trobat gists coincidents';

  @override
  String get createFirstGist =>
      'Crea el teu primer gist tocant el botó + a continuació';

  @override
  String get adjustSearch => 'Prova d\'ajustar la cerca o el filtre d\'idioma';

  @override
  String get scrollToTop => 'Desplaça\'t a dalt';

  @override
  String get createNewGist => 'Crear nou gist';

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
  String get sortBy => 'Ordre per';

  @override
  String get sortDateNewest => 'Data (més recent)';

  @override
  String get sortDateOldest => 'Data (més antic)';

  @override
  String get sortNameAsc => 'Nom (A-Z)';

  @override
  String get sortNameDesc => 'Nom (A-Z)';

  @override
  String get sortLanguage => 'Llengua';

  @override
  String get sortStars => 'Estrelles';

  @override
  String get pin => 'Pinya';

  @override
  String get unpin => 'Despinya';

  @override
  String get pinned => 'Pinsat';

  @override
  String get archive => 'Arxiu';

  @override
  String get unarchive => 'Desarxivar';

  @override
  String get archived => 'Arxivat';

  @override
  String get showArchived => 'Mostra Arxivat';

  @override
  String get hideArchived => 'Amagar Arxivats';

  @override
  String get gistPinned => 'Gist pinjat';

  @override
  String get gistUnpinned => 'Gist despinat';

  @override
  String get gistArchived => 'Gist arxivat';

  @override
  String get gistUnarchived => 'Gist desarxivat';

  @override
  String get organize => 'Organitza';

  @override
  String get exportCurrentFile => 'Exporta fitxer seleccionat';

  @override
  String get exportAllFiles => 'Exportar tots els fitxers';

  @override
  String get shareCurrentFile => 'Comparteix fitxer seleccionat';

  @override
  String get shareAllFiles => 'Compartir tots els fitxers';

  @override
  String get deleteSelectedFile => 'Elimina el fitxer seleccionat';

  @override
  String get deleteAllFiles => 'Elimina tot el gist i els fitxers';

  @override
  String get exportAllSuccess => 'Tots els fitxers exportats a';

  @override
  String filesExported(int count) {
    return '$count fitxers exportats';
  }

  @override
  String get openInFinderAfterExport =>
      'Obre el Finder després de l\'exportació del fitxer';

  @override
  String get ok => 'D\'acord';

  @override
  String get open => 'Obre';

  @override
  String get discard => 'Desfer';

  @override
  String errorWithDetails(String error) {
    return 'Error: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Error carregant el contingut: $statusCode';
  }

  @override
  String get noDescription => 'Sense descripció';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fitxers més',
      one: '1 fitxer més',
    );
    return '... i $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Creat: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Actualitzat: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Actualitzat per últim cop: $time';
  }

  @override
  String get deleteFile => 'Elimina fitxer';

  @override
  String deleteFileMessage(String fileName) {
    return 'Estàs a punt d\'eliminar permanentment el fitxer \"$fileName\".';
  }

  @override
  String get deleteGistMessage =>
      'Estàs a punt de suprimir aquest gist permanentment.';

  @override
  String get deleteEntireGistMessage =>
      'Estàs a punt d\'eliminar permanentment aquest gist sencer i tots els seus fitxers.';

  @override
  String get conflictResolution => 'Resolució de conflictes';

  @override
  String get allConflictsResolved => 'S\'han resolt tots els conflictes!';

  @override
  String conflictProgress(int current, int total) {
    return 'Conflicte $current de $total';
  }

  @override
  String get previousConflict => 'Conflicte anterior';

  @override
  String get nextConflict => 'Conflicte següent';

  @override
  String get conflictExplanation =>
      'Aquest gist s\'ha modificat tant localment com remotament. Tria quina versió vols conservar.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'La teva versió local';

  @override
  String get remoteVersionGitHub => 'Versió remota (GitHub)';

  @override
  String get chooseResolution => 'Trieu la resolució:';

  @override
  String get keepMyLocalChanges => 'Conserva els meus canvis locals';

  @override
  String get keepMyLocalChangesDescription =>
      'Substituir la versió remota amb els teus canvis locals';

  @override
  String get keepRemoteVersion => 'Conserva la versió remota';

  @override
  String get keepRemoteVersionDescription =>
      'Desfés els canvis locals i utilitza la versió de GitHub';

  @override
  String get discardLocalChanges => 'Desfer canvis locals';

  @override
  String get discardLocalChangesDescription =>
      'Elimina aquesta operació de la cua de sincronització';

  @override
  String get modifiedUnknown => 'Modificat: desconegut';

  @override
  String modifiedAt(String time) {
    return 'Modificat: $time';
  }

  @override
  String get filesLabel => 'Fitxers:';

  @override
  String get fileDeletedLabel => 'eliminat';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count caràcters',
      one: '1 caràcter',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Ara mateix';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuts',
      one: '1 minut',
    );
    return 'fa $_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hores',
      one: '1 hora',
    );
    return 'fa $_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dies',
      one: '1 dia',
    );
    return 'fa $_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Conserva els canvis locals?';

  @override
  String get keepLocalChangesMessage =>
      'Substituirà la versió remota amb els teus canvis locals. Aquesta acció no es pot desfer.';

  @override
  String get keepLocal => 'Conserva localment';

  @override
  String get keepRemoteVersionTitle => 'Conserva la versió remota?';

  @override
  String get keepRemoteVersionMessage =>
      'Això descartarà els teus canvis locals i mantindrà la versió remota. Aquesta acció no es pot desfer.';

  @override
  String get keepRemote => 'Conserva el remot';

  @override
  String get discardChangesTitle => 'Descartar canvis?';

  @override
  String get discardChangesMessage =>
      'Això eliminarà els teus canvis locals sense sincronitzar-los. Aquesta acció no es pot desfer.';

  @override
  String get gistMustHaveOneFile => 'Un Gist ha de tenir almenys un fitxer';

  @override
  String errorCreatingGist(String error) {
    return 'Error al crear el gist: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist desat offline. Es sincronitzarà quan hi hagi connexió.';

  @override
  String errorSavingGist(String error) {
    return 'Error al desar el gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'Canvis desats fora de línia. Es sincronitzaran quan es connecti.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Vols eliminar només \"$fileName\" o tot el gist?';
  }

  @override
  String errorDeleting(String error) {
    return 'Error al suprimir: $error';
  }

  @override
  String get addFile => 'Afegeix fitxer';

  @override
  String get removeFile => 'Elimina fitxer';

  @override
  String newFileNumbered(int number) {
    return 'Nou fitxer $number';
  }

  @override
  String get newGist => 'Nou Gist';

  @override
  String get filenameHint => 'p. ex., script.py';

  @override
  String get offlineNoCachedGists =>
      'Ets fora de línia. No hi ha gists emmagatzemats disponibles.';

  @override
  String get syncStatus => 'Estat de sincronització';

  @override
  String get syncing => 'Sincronitzant...';

  @override
  String pendingCountLabel(int count) {
    return 'Pendent: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Conflictes: $count';
  }

  @override
  String get operationsLabel => 'Operacions:';

  @override
  String get resolveConflicts => 'Resoldre conflictes';

  @override
  String get willSyncWhenRestored =>
      'Es sincronitzarà automàticament quan es restablirà la connexió';

  @override
  String get syncNow => 'Sincronitza ara';

  @override
  String get selectLanguage => 'Selecciona l\'idioma';

  @override
  String get offlineChangesWillSync =>
      'Ets fora de línia. Els canvis es sincronitzaran quan et tornis a connectar.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pendents',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Error carregant gists públics: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Error en la cerca: $error';
  }

  @override
  String byAuthor(String author) {
    return 'per $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Error d\'inici de sessió: $error';
  }

  @override
  String get connectingToGitHub => 'Connectant a GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Error al configurar l\'inici automàtic: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Error al tancar l\'aplicació: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Error al tancar la sessió: $error';
  }

  @override
  String get tabSize => 'Mida de tabulació';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count espais',
      one: '1 espai',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count espais',
      one: '1 espai',
    );
    return 'La tecla Tab inserirà $_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'Error al carregar el perfil d\'usuari';

  @override
  String get followers => 'Seguidors';

  @override
  String get following => 'Seguint';

  @override
  String get repos => 'Repositoris';

  @override
  String get gists => 'Gists';

  @override
  String joinedDate(String date) {
    return 'S\'ha unit el $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Veure els Gists de $username';
  }

  @override
  String get openLink => 'Obre l\'enllaç';

  @override
  String openLinkConfirmation(String url) {
    return 'Vols obrir aquest enllaç al teu navegador?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'No s\'ha pogut obrir l\'enllaç';

  @override
  String get noFollowersFound => 'No s\'han trobat seguidors';

  @override
  String get noFollowingFound => 'No s\'han trobat seguidors';

  @override
  String errorLoadingFollowers(String error) {
    return 'Error al carregar seguidors: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Error carregant seguidors: $error';
  }

  @override
  String get deleteIsPermanent =>
      'Aquesta acció és permanent i no es pot desfer.';

  @override
  String typeToConfirm(String text) {
    return 'Escriu \"$text\" per confirmar:';
  }

  @override
  String typeExactly(String text) {
    return 'Si us plau, escriu \"$text\" exactament';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Fitxer \"$fileName\" eliminat';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Error al suprimir l\'arxiu: $error';
  }

  @override
  String get gistDeleted => 'Gist suprimit';

  @override
  String errorDeletingGist(String error) {
    return 'Error al suprimir el gist: $error';
  }

  @override
  String get noFilesAvailable => 'No hi ha fitxers disponibles';

  @override
  String get fileDataNotAvailable => 'Dades del fitxer no disponibles';

  @override
  String get copied => 'Copiat!';

  @override
  String get copyToClipboard => 'Copia al porta-retalls';

  @override
  String get contentCopiedToClipboard => 'Contingut copiat al porta-retalls';

  @override
  String get copyGistContentToClipboard =>
      'Copia el contingut del Gist al porta-retalls';

  @override
  String get internetNotAvailable => 'Sense connexió a Internet';

  @override
  String get editGist => 'Edita el gist';
}
