// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get signIn => 'Iniciar sesión con GitHub';

  @override
  String get search => 'Buscar';

  @override
  String get allLanguages => 'Todos los idiomas';

  @override
  String get darkMode => 'MODO OSCURO';

  @override
  String get theme => 'Tema';

  @override
  String get lightTheme => 'Claro';

  @override
  String get darkTheme => 'Oscuro';

  @override
  String get systemTheme => 'Sistema';

  @override
  String get fontSize => 'Tamaño de fuente';

  @override
  String get logout => 'Cerrar sesión';

  @override
  String get account => 'Cuenta';

  @override
  String get system => 'Sistema';

  @override
  String get display => 'Pantalla';

  @override
  String get deleteGist => 'Eliminar Gist';

  @override
  String get confirmDelete =>
      '¿Estás seguro de que quieres eliminar este gist?';

  @override
  String get permanent => 'Esta acción no se puede deshacer.';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get filename => 'Nombre del archivo';

  @override
  String get description => 'Descripción (opcional)';

  @override
  String get public => 'Público';

  @override
  String get created => 'creado:';

  @override
  String get lastUpdated => 'Última actualización:';

  @override
  String get loadingGists => 'Cargando Gists...';

  @override
  String get noGistsYet => 'Aún no hay gists';

  @override
  String get noMatchingGists => 'No se encontraron gists coincidentes';

  @override
  String get createFirstGist =>
      'Crea tu primer gist tocando el botón + a continuación';

  @override
  String get adjustSearch => 'Intenta ajustar tu búsqueda o filtro de idioma';

  @override
  String get scrollToTop => 'Desplazarse hacia arriba';

  @override
  String get createNewGist => 'Crear nuevo gist';

  @override
  String get launchAtLogin => 'Iniciar al arrancar';

  @override
  String get quit => 'Salir';

  @override
  String get star => 'Favorito';

  @override
  String get unstar => 'Quitar favorito';

  @override
  String get starred => 'Favorito';

  @override
  String get fork => 'Bifurcar';

  @override
  String get forked => 'Bifurcado';

  @override
  String get forkSuccess => '¡Gist bifurcado con éxito!';

  @override
  String get publicGists => 'Gists Públicos';

  @override
  String get browsePublicGists => 'Explorar Gists Públicos';

  @override
  String get errorStarring => 'Error al marcar como favorito';

  @override
  String get errorForking => 'Error al bifurcar el gist';

  @override
  String get loadMore => 'Cargar Más';

  @override
  String get noPublicGists => 'No se encontraron gists públicos';

  @override
  String get starredGists => 'Gists Favoritos';

  @override
  String get myGists => 'Mis Gists';

  @override
  String get share => 'Compartir';

  @override
  String get shareGist => 'Compartir Gist';

  @override
  String get exportFile => 'Exportar como Archivo';

  @override
  String get generateQRCode => 'Generar Código QR';

  @override
  String get copyEmbedCode => 'Copiar Código de Inserción';

  @override
  String get copyGistUrl => 'Copiar URL del Gist';

  @override
  String get moreActions => 'Más Acciones';

  @override
  String get exportSuccess => 'Gist exportado con éxito';

  @override
  String get exportError => 'Error al exportar el gist';

  @override
  String get embedCodeCopied => 'Código de inserción copiado al portapapeles';

  @override
  String get urlCopied => 'URL copiada al portapapeles';

  @override
  String get qrCodeTitle => 'Código QR';

  @override
  String get scanToOpen => 'Escanea para abrir el gist';

  @override
  String get searchPublicGistsHint => 'Buscar o @nombredeusuario';

  @override
  String get close => 'Cerrar';

  @override
  String get clear => 'Limpiar';

  @override
  String get tryDifferentSearch =>
      'Prueba con un término de búsqueda diferente';

  @override
  String showingGistsFromUser(int count) {
    return 'Mostrando $count gists del usuario';
  }

  @override
  String foundInLoadedGists(int count) {
    return 'Se encontraron $count en los gists cargados. Usa @nombredeusuario para obtener todos los gists de un usuario.';
  }

  @override
  String get raw => 'Sin formato';

  @override
  String get preview => 'Vista previa';

  @override
  String get sortBy => 'Ordenar por';

  @override
  String get sortDateNewest => 'Fecha (Más reciente)';

  @override
  String get sortDateOldest => 'Fecha (Más antiguo)';

  @override
  String get sortNameAsc => 'Nombre (A-Z)';

  @override
  String get sortNameDesc => 'Nombre (Z-A)';

  @override
  String get sortLanguage => 'Idioma';

  @override
  String get sortStars => 'Favoritos';

  @override
  String get pin => 'Fijar';

  @override
  String get unpin => 'Desfijar';

  @override
  String get pinned => 'Fijado';

  @override
  String get archive => 'Archivar';

  @override
  String get unarchive => 'Desarchivar';

  @override
  String get archived => 'Archivado';

  @override
  String get showArchived => 'Mostrar Archivados';

  @override
  String get hideArchived => 'Ocultar Archivados';

  @override
  String get gistPinned => 'Gist fijado';

  @override
  String get gistUnpinned => 'Gist desfijado';

  @override
  String get gistArchived => 'Gist archivado';

  @override
  String get gistUnarchived => 'Gist desarchivado';

  @override
  String get organize => 'Organizar';

  @override
  String get exportCurrentFile => 'Exportar Archivo Seleccionado';

  @override
  String get exportAllFiles => 'Exportar Todos los Archivos';

  @override
  String get shareCurrentFile => 'Compartir Archivo Seleccionado';

  @override
  String get shareAllFiles => 'Compartir Todos los Archivos';

  @override
  String get deleteSelectedFile => 'Eliminar Archivo Seleccionado';

  @override
  String get deleteAllFiles => 'Eliminar Gist Completo';

  @override
  String get exportAllSuccess => 'Todos los archivos exportados a';

  @override
  String filesExported(int count) {
    return '$count archivos exportados';
  }

  @override
  String get openInFinderAfterExport => 'Abrir Finder tras exportar archivo';

  @override
  String get ok => 'Aceptar';

  @override
  String get open => 'Abrir';

  @override
  String get discard => 'Descartar';

  @override
  String errorWithDetails(String error) {
    return 'Error: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Error al cargar el contenido: $statusCode';
  }

  @override
  String get noDescription => 'Sin descripción';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count archivos más',
      one: '1 archivo más',
    );
    return '... y $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Creado: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Actualizado: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Última actualización: $time';
  }

  @override
  String get deleteFile => 'Eliminar archivo';

  @override
  String deleteFileMessage(String fileName) {
    return 'Estás a punto de eliminar permanentemente el archivo \"$fileName\".';
  }

  @override
  String get deleteGistMessage =>
      'Estás a punto de eliminar este gist permanentemente.';

  @override
  String get deleteEntireGistMessage =>
      'Estás a punto de eliminar permanentemente este gist completo y todos sus archivos.';

  @override
  String get conflictResolution => 'Resolución de conflictos';

  @override
  String get allConflictsResolved => '¡Todos los conflictos resueltos!';

  @override
  String conflictProgress(int current, int total) {
    return 'Conflicto $current de $total';
  }

  @override
  String get previousConflict => 'Conflicto anterior';

  @override
  String get nextConflict => 'Conflicto siguiente';

  @override
  String get conflictExplanation =>
      'Este gist fue modificado tanto localmente como de forma remota. Elige qué versión conservar.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Tu versión local';

  @override
  String get remoteVersionGitHub => 'Versión Remota (GitHub)';

  @override
  String get chooseResolution => 'Resolver conflicto:';

  @override
  String get keepMyLocalChanges => 'Conservar mis cambios locales';

  @override
  String get keepMyLocalChangesDescription =>
      'Reemplazar la versión remota con tus cambios locales';

  @override
  String get keepRemoteVersion => 'Conservar versión remota';

  @override
  String get keepRemoteVersionDescription =>
      'Descartar cambios locales y usar la versión de GitHub';

  @override
  String get discardLocalChanges => 'Descartar cambios locales';

  @override
  String get discardLocalChangesDescription =>
      'Eliminar esta operación de la cola de sincronización';

  @override
  String get modifiedUnknown => 'Modificado: desconocido';

  @override
  String modifiedAt(String time) {
    return 'Modificado: $time';
  }

  @override
  String get filesLabel => 'Archivos:';

  @override
  String get fileDeletedLabel => 'eliminado';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count caracteres',
      one: '1 carácter',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Ahora mismo';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutos atrás',
      one: '1 minuto atrás',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'hace $count horas',
      one: 'hace 1 hora',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días',
      one: '1 día',
    );
    return 'hace $_temp0';
  }

  @override
  String get keepLocalChangesTitle => '¿Conservar cambios locales?';

  @override
  String get keepLocalChangesMessage =>
      'Esto sobrescribirá la versión remota con tus cambios locales. Esta acción no se puede deshacer.';

  @override
  String get keepLocal => 'Conservar localmente';

  @override
  String get keepRemoteVersionTitle => '¿Conservar versión remota?';

  @override
  String get keepRemoteVersionMessage =>
      'Esto descartará tus cambios locales y conservará la versión remota. Esta acción no se puede deshacer.';

  @override
  String get keepRemote => 'Conservar remoto';

  @override
  String get discardChangesTitle => '¿Descartar cambios?';

  @override
  String get discardChangesMessage =>
      'Esto descartará tus cambios locales sin sincronizarlos. Esta acción no se puede deshacer.';

  @override
  String get gistMustHaveOneFile => 'Un gist debe tener al menos un archivo';

  @override
  String errorCreatingGist(String error) {
    return 'Error al crear gist: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist guardado sin conexión. Se sincronizará al conectarse.';

  @override
  String errorSavingGist(String error) {
    return 'Error al guardar gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'Cambios guardados sin conexión. Se sincronizarán al conectarse.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return '¿Quieres eliminar solo \"$fileName\" o todo el gist?';
  }

  @override
  String errorDeleting(String error) {
    return 'Error al eliminar: $error';
  }

  @override
  String get addFile => 'Añadir archivo';

  @override
  String get removeFile => 'Eliminar archivo';

  @override
  String newFileNumbered(int number) {
    return 'Nuevo archivo $number';
  }

  @override
  String get newGist => 'Nuevo Gist';

  @override
  String get filenameHint => 'p. ej., script.py';

  @override
  String get offlineNoCachedGists =>
      'No estás conectado. No hay gists en caché disponibles.';

  @override
  String get syncStatus => 'Estado de sincronización';

  @override
  String get syncing => 'Sincronizando...';

  @override
  String pendingCountLabel(int count) {
    return 'Pendientes: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Conflictos: $count';
  }

  @override
  String get operationsLabel => 'Operaciones:';

  @override
  String get resolveConflicts => 'Resolver conflictos';

  @override
  String get willSyncWhenRestored =>
      'Se sincronizará automáticamente al restaurarse la conexión';

  @override
  String get syncNow => 'Sincronizar ahora';

  @override
  String get selectLanguage => 'Seleccionar idioma';

  @override
  String get offlineChangesWillSync =>
      'Estás sin conexión. Los cambios se sincronizarán al conectarte.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pendientes',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Error al cargar gists públicos: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Error al buscar: $error';
  }

  @override
  String byAuthor(String author) {
    return 'por $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Error al iniciar sesión: $error';
  }

  @override
  String get connectingToGitHub => 'Conectando a GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Error al configurar el inicio con el sistema: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Error al cerrar la aplicación: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Error al cerrar sesión: $error';
  }

  @override
  String get tabSize => 'Tamaño de tabulación';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count espacios',
      one: '1 espacio',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'La tecla Tabular insertará $count espacios',
      one: 'La tecla Tabular insertará 1 espacio',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'Error al cargar el perfil de usuario';

  @override
  String get followers => 'Seguidores';

  @override
  String get following => 'Siguiendo';

  @override
  String get repos => 'Repositorios';

  @override
  String get gists => 'Gists';

  @override
  String joinedDate(String date) {
    return 'Unido $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Ver Gists de $username';
  }

  @override
  String get openLink => 'Abrir enlace';

  @override
  String openLinkConfirmation(String url) {
    return '¿Quieres abrir este enlace en tu navegador?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'No se pudo abrir el enlace';

  @override
  String get noFollowersFound => 'No se encontraron seguidores';

  @override
  String get noFollowingFound => 'No se encontraron seguidos';

  @override
  String errorLoadingFollowers(String error) {
    return 'Error al cargar seguidores: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Error al cargar seguidores: $error';
  }

  @override
  String get deleteIsPermanent =>
      'Esta acción es permanente y no se puede deshacer.';

  @override
  String typeToConfirm(String text) {
    return 'Escribe \"$text\" para confirmar:';
  }

  @override
  String typeExactly(String text) {
    return 'Por favor, escribe \"$text\" exactamente';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Archivo \"$fileName\" eliminado';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Error al eliminar el archivo: $error';
  }

  @override
  String get gistDeleted => 'Gist eliminado';

  @override
  String errorDeletingGist(String error) {
    return 'Error al eliminar gist: $error';
  }

  @override
  String get noFilesAvailable => 'No hay archivos disponibles';

  @override
  String get fileDataNotAvailable => 'Datos del archivo no disponibles';

  @override
  String get copied => '¡Copiado!';

  @override
  String get copyToClipboard => 'Copiar al portapapeles';

  @override
  String get contentCopiedToClipboard => 'Contenido copiado al portapapeles';

  @override
  String get copyGistContentToClipboard =>
      'Copiar contenido del gist al portapapeles';

  @override
  String get internetNotAvailable => 'Sin conexión a Internet';

  @override
  String get editGist => 'Editar gist';
}

/// The translations for Spanish Castilian, as used in Spain (`es_ES`).
class AppLocalizationsEsEs extends AppLocalizationsEs {
  AppLocalizationsEsEs() : super('es_ES');

  @override
  String get signIn => 'Iniciar sesión con GitHub';

  @override
  String get search => 'Buscar';

  @override
  String get allLanguages => 'Todos los idiomas';

  @override
  String get darkMode => 'MODO OSCURO';

  @override
  String get theme => 'Tema';

  @override
  String get lightTheme => 'Claro';

  @override
  String get darkTheme => 'Oscuro';

  @override
  String get systemTheme => 'Sistema';

  @override
  String get fontSize => 'Tamaño de fuente';

  @override
  String get logout => 'Cerrar sesión';

  @override
  String get account => 'Cuenta';

  @override
  String get system => 'Sistema';

  @override
  String get display => 'Pantalla';

  @override
  String get deleteGist => 'Eliminar Gist';

  @override
  String get confirmDelete =>
      '¿Estás seguro de que quieres eliminar este gist?';

  @override
  String get permanent => 'Esta acción no se puede deshacer.';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get filename => 'Nombre del archivo';

  @override
  String get description => 'Descripción (opcional)';

  @override
  String get public => 'Público';

  @override
  String get created => 'creado:';

  @override
  String get lastUpdated => 'Última actualización:';

  @override
  String get loadingGists => 'Cargando Gists...';

  @override
  String get noGistsYet => 'Aún no hay gists';

  @override
  String get noMatchingGists => 'No se encontraron gists coincidentes';

  @override
  String get createFirstGist =>
      'Crea tu primer gist tocando el botón + a continuación';

  @override
  String get adjustSearch => 'Intenta ajustar tu búsqueda o filtro de idioma';

  @override
  String get scrollToTop => 'Desplazarse hacia arriba';

  @override
  String get createNewGist => 'Crear nuevo gist';

  @override
  String get launchAtLogin => 'Iniciar al arrancar';

  @override
  String get quit => 'Salir';

  @override
  String get star => 'Favorito';

  @override
  String get unstar => 'Quitar favorito';

  @override
  String get starred => 'Favorito';

  @override
  String get fork => 'Bifurcar';

  @override
  String get forked => 'Bifurcado';

  @override
  String get forkSuccess => '¡Gist bifurcado con éxito!';

  @override
  String get publicGists => 'Gists Públicos';

  @override
  String get browsePublicGists => 'Explorar Gists Públicos';

  @override
  String get errorStarring => 'Error al marcar como favorito';

  @override
  String get errorForking => 'Error al bifurcar el gist';

  @override
  String get loadMore => 'Cargar Más';

  @override
  String get noPublicGists => 'No se encontraron gists públicos';

  @override
  String get starredGists => 'Gists Favoritos';

  @override
  String get myGists => 'Mis Gists';

  @override
  String get share => 'Compartir';

  @override
  String get shareGist => 'Compartir Gist';

  @override
  String get exportFile => 'Exportar como Archivo';

  @override
  String get generateQRCode => 'Generar Código QR';

  @override
  String get copyEmbedCode => 'Copiar Código de Inserción';

  @override
  String get copyGistUrl => 'Copiar URL del Gist';

  @override
  String get moreActions => 'Más Acciones';

  @override
  String get exportSuccess => 'Gist exportado con éxito';

  @override
  String get exportError => 'Error al exportar el gist';

  @override
  String get embedCodeCopied => 'Código de inserción copiado al portapapeles';

  @override
  String get urlCopied => 'URL copiada al portapapeles';

  @override
  String get qrCodeTitle => 'Código QR';

  @override
  String get scanToOpen => 'Escanea para abrir el gist';

  @override
  String get searchPublicGistsHint => 'Buscar o @nombredeusuario';

  @override
  String get close => 'Cerrar';

  @override
  String get clear => 'Limpiar';

  @override
  String get tryDifferentSearch =>
      'Prueba con un término de búsqueda diferente';

  @override
  String showingGistsFromUser(int count) {
    return 'Mostrando $count gists del usuario';
  }

  @override
  String foundInLoadedGists(int count) {
    return 'Se encontraron $count en los gists cargados. Usa @nombredeusuario para obtener todos los gists de un usuario.';
  }

  @override
  String get raw => 'Sin formato';

  @override
  String get preview => 'Vista previa';

  @override
  String get sortBy => 'Ordenar por';

  @override
  String get sortDateNewest => 'Fecha (Más reciente)';

  @override
  String get sortDateOldest => 'Fecha (Más antiguo)';

  @override
  String get sortNameAsc => 'Nombre (A-Z)';

  @override
  String get sortNameDesc => 'Nombre (Z-A)';

  @override
  String get sortLanguage => 'Idioma';

  @override
  String get sortStars => 'Favoritos';

  @override
  String get pin => 'Fijar';

  @override
  String get unpin => 'Desfijar';

  @override
  String get pinned => 'Fijado';

  @override
  String get archive => 'Archivar';

  @override
  String get unarchive => 'Desarchivar';

  @override
  String get archived => 'Archivado';

  @override
  String get showArchived => 'Mostrar Archivados';

  @override
  String get hideArchived => 'Ocultar Archivados';

  @override
  String get gistPinned => 'Gist fijado';

  @override
  String get gistUnpinned => 'Gist desfijado';

  @override
  String get gistArchived => 'Gist archivado';

  @override
  String get gistUnarchived => 'Gist desarchivado';

  @override
  String get organize => 'Organizar';

  @override
  String get exportCurrentFile => 'Exportar Archivo Seleccionado';

  @override
  String get exportAllFiles => 'Exportar Todos los Archivos';

  @override
  String get shareCurrentFile => 'Compartir Archivo Seleccionado';

  @override
  String get shareAllFiles => 'Compartir Todos los Archivos';

  @override
  String get deleteSelectedFile => 'Eliminar Archivo Seleccionado';

  @override
  String get deleteAllFiles => 'Eliminar Gist Completo';

  @override
  String get exportAllSuccess => 'Todos los archivos exportados a';

  @override
  String filesExported(int count) {
    return '$count archivos exportados';
  }

  @override
  String get openInFinderAfterExport => 'Abrir Finder tras exportar archivo';
}

/// The translations for Spanish Castilian, as used in Mexico (`es_MX`).
class AppLocalizationsEsMx extends AppLocalizationsEs {
  AppLocalizationsEsMx() : super('es_MX');

  @override
  String get signIn => 'Iniciar sesión con GitHub';

  @override
  String get search => 'Buscar';

  @override
  String get allLanguages => 'Todos los idiomas';

  @override
  String get darkMode => 'MODO OSCURO';

  @override
  String get theme => 'Tema';

  @override
  String get lightTheme => 'Claro';

  @override
  String get darkTheme => 'Oscuro';

  @override
  String get systemTheme => 'Sistema';

  @override
  String get fontSize => 'Tamaño de letra';

  @override
  String get logout => 'Cerrar sesión';

  @override
  String get account => 'Cuenta';

  @override
  String get system => 'Sistema';

  @override
  String get display => 'Pantalla';

  @override
  String get deleteGist => 'Eliminar Gist';

  @override
  String get confirmDelete =>
      '¿Estás seguro de que quieres eliminar este gist?';

  @override
  String get permanent => 'Esta acción no se puede deshacer.';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get filename => 'Nombre del archivo';

  @override
  String get description => 'Descripción (opcional)';

  @override
  String get public => 'Público';

  @override
  String get created => 'creado:';

  @override
  String get lastUpdated => 'Última actualización:';

  @override
  String get loadingGists => 'Cargando Gists...';

  @override
  String get noGistsYet => 'Aún no hay gists';

  @override
  String get noMatchingGists => 'No se encontraron gists coincidentes';

  @override
  String get createFirstGist => 'Crea tu primer gist tocando el botón + abajo';

  @override
  String get adjustSearch => 'Intenta ajustar tu búsqueda o filtro de idioma';

  @override
  String get scrollToTop => 'Ir arriba';

  @override
  String get createNewGist => 'Crear nuevo gist';

  @override
  String get launchAtLogin => 'Iniciar sesión automáticamente';

  @override
  String get quit => 'Salir';

  @override
  String get star => 'Favorito';

  @override
  String get unstar => 'Quitar favorito';

  @override
  String get starred => 'Favorito';

  @override
  String get fork => 'Bifurcar';

  @override
  String get forked => 'Bifurcado';

  @override
  String get forkSuccess => '¡Gist bifurcado exitosamente!';

  @override
  String get publicGists => 'Gists Públicos';

  @override
  String get browsePublicGists => 'Explorar Gists Públicos';

  @override
  String get errorStarring => 'Error al marcar como favorito';

  @override
  String get errorForking => 'Error al bifurcar el gist';

  @override
  String get loadMore => 'Cargar Más';

  @override
  String get noPublicGists => 'No se encontraron gists públicos';

  @override
  String get starredGists => 'Gists Favoritos';

  @override
  String get myGists => 'Mis Gists';

  @override
  String get share => 'Compartir';

  @override
  String get shareGist => 'Compartir Gist';

  @override
  String get exportFile => 'Exportar como Archivo';

  @override
  String get generateQRCode => 'Generar Código QR';

  @override
  String get copyEmbedCode => 'Copiar Código de Inserción';

  @override
  String get copyGistUrl => 'Copiar URL del Gist';

  @override
  String get moreActions => 'Más Acciones';

  @override
  String get exportSuccess => 'Gist exportado exitosamente';

  @override
  String get exportError => 'Error al exportar el gist';

  @override
  String get embedCodeCopied => 'Código de inserción copiado al portapapeles';

  @override
  String get urlCopied => 'URL copiada al portapapeles';

  @override
  String get qrCodeTitle => 'Código QR';

  @override
  String get scanToOpen => 'Escanea para abrir el gist';

  @override
  String get searchPublicGistsHint => 'Buscar o @nombreusuario';

  @override
  String get close => 'Cerrar';

  @override
  String get clear => 'Limpiar';

  @override
  String get tryDifferentSearch =>
      'Prueba con un término de búsqueda diferente';

  @override
  String showingGistsFromUser(int count) {
    return 'Mostrando $count gists del usuario';
  }

  @override
  String foundInLoadedGists(int count) {
    return 'Se encontraron $count en los gists cargados. Usa @nombreusuario para obtener todos los gists de un usuario.';
  }

  @override
  String get raw => 'Sin formato';

  @override
  String get preview => 'Vista previa';

  @override
  String get sortBy => 'Ordenar por';

  @override
  String get sortDateNewest => 'Fecha (Más reciente)';

  @override
  String get sortDateOldest => 'Fecha (Más antiguo)';

  @override
  String get sortNameAsc => 'Nombre (A-Z)';

  @override
  String get sortNameDesc => 'Nombre (Z-A)';

  @override
  String get sortLanguage => 'Idioma';

  @override
  String get sortStars => 'Favoritos';

  @override
  String get pin => 'Fijar';

  @override
  String get unpin => 'Desfijar';

  @override
  String get pinned => 'Fijado';

  @override
  String get archive => 'Archivar';

  @override
  String get unarchive => 'Desarchivar';

  @override
  String get archived => 'Archivado';

  @override
  String get showArchived => 'Mostrar Archivados';

  @override
  String get hideArchived => 'Ocultar Archivados';

  @override
  String get gistPinned => 'Gist fijado';

  @override
  String get gistUnpinned => 'Gist desfijado';

  @override
  String get gistArchived => 'Gist archivado';

  @override
  String get gistUnarchived => 'Gist desarchivado';

  @override
  String get organize => 'Organizar';

  @override
  String get exportCurrentFile => 'Exportar Archivo Seleccionado';

  @override
  String get exportAllFiles => 'Exportar Todos los Archivos';

  @override
  String get shareCurrentFile => 'Compartir Archivo Seleccionado';

  @override
  String get shareAllFiles => 'Compartir Todos los Archivos';

  @override
  String get deleteSelectedFile => 'Eliminar Archivo Seleccionado';

  @override
  String get deleteAllFiles => 'Eliminar Gist Completo';

  @override
  String get exportAllSuccess => 'Todos los archivos exportados a';

  @override
  String filesExported(int count) {
    return '$count archivos exportados';
  }

  @override
  String get openInFinderAfterExport =>
      'Abrir Finder después de exportar archivo';
}
