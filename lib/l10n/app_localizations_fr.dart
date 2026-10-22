// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get signIn => 'Se connecter avec GitHub';

  @override
  String get search => 'Rechercher';

  @override
  String get allLanguages => 'Toutes les langues';

  @override
  String get darkMode => 'MODE SOMBRE';

  @override
  String get theme => 'Thème';

  @override
  String get lightTheme => 'Clair';

  @override
  String get darkTheme => 'Sombre';

  @override
  String get systemTheme => 'Système';

  @override
  String get fontSize => 'Taille de police';

  @override
  String get logout => 'Déconnexion';

  @override
  String get account => 'Compte';

  @override
  String get system => 'Système';

  @override
  String get display => 'Affichage';

  @override
  String get deleteGist => 'Supprimer le Gist';

  @override
  String get confirmDelete => 'Êtes-vous sûr de vouloir supprimer ce gist ?';

  @override
  String get permanent => 'Cette action ne peut pas être annulée.';

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get filename => 'Nom du fichier';

  @override
  String get description => 'Description (facultative)';

  @override
  String get public => 'Public';

  @override
  String get created => 'créé :';

  @override
  String get lastUpdated => 'Dernière mise à jour :';

  @override
  String get loadingGists => 'Chargement des Gists...';

  @override
  String get noGistsYet => 'Pas encore de gists';

  @override
  String get noMatchingGists => 'Aucun gist correspondant trouvé';

  @override
  String get createFirstGist =>
      'Créez votre premier gist en appuyant sur le bouton + ci-dessous';

  @override
  String get adjustSearch =>
      'Essayez d\'ajuster votre recherche ou votre filtre de langue';

  @override
  String get scrollToTop => 'Défiler vers le haut';

  @override
  String get createNewGist => 'Créer un nouveau gist';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => 'Quitter';

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
  String get sortBy => 'Trier par';

  @override
  String get sortDateNewest => 'Date (La plus récente)';

  @override
  String get sortDateOldest => 'Date (Le plus ancien)';

  @override
  String get sortNameAsc => 'Nom (A-Z)';

  @override
  String get sortNameDesc => 'Nom (A-Z)';

  @override
  String get sortLanguage => 'Langue';

  @override
  String get sortStars => 'Étoiles';

  @override
  String get pin => 'Épingler';

  @override
  String get unpin => 'Dépinner';

  @override
  String get pinned => 'Pinté';

  @override
  String get archive => 'Archivage';

  @override
  String get unarchive => 'Déarchiver';

  @override
  String get archived => 'Archivé';

  @override
  String get showArchived => 'Afficher les Archivés';

  @override
  String get hideArchived => 'Masquer Archivés';

  @override
  String get gistPinned => 'Gist épinglé';

  @override
  String get gistUnpinned => 'Gist dépiné';

  @override
  String get gistArchived => 'Gist archivé';

  @override
  String get gistUnarchived => 'Gist déarchivé';

  @override
  String get organize => 'Organiser';

  @override
  String get exportCurrentFile => 'Exporter le Fichier Sélectionné';

  @override
  String get exportAllFiles => 'Exporter tous les fichiers';

  @override
  String get shareCurrentFile => 'Partager le fichier sélectionné';

  @override
  String get shareAllFiles => 'Partager tous les fichiers';

  @override
  String get deleteSelectedFile => 'Supprimer le fichier sélectionné';

  @override
  String get deleteAllFiles => 'Supprimer l\'intégralité du gist';

  @override
  String get exportAllSuccess =>
      'Tous les fichiers ont été exportés vers \n\n(Note : I\'ve kept the exact same format and placeholder token as in the original English string)';

  @override
  String filesExported(int count) {
    return '$count fichiers exportés';
  }

  @override
  String get openInFinderAfterExport =>
      'Ouvrir le Finder après l\'exportation du fichier';

  @override
  String get ok => 'OK';

  @override
  String get open => 'Ouvrir';

  @override
  String get discard => 'Annuler les modifications';

  @override
  String errorWithDetails(String error) {
    return 'Erreur : $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Erreur de chargement du contenu : $statusCode';
  }

  @override
  String get noDescription => 'Pas de description';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count autres fichiers',
      one: '1 autre fichier',
    );
    return '... et $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Créé il y a $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Mis à jour : $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Dernière mise à jour : $time';
  }

  @override
  String get deleteFile => 'Supprimer le fichier';

  @override
  String deleteFileMessage(String fileName) {
    return 'Vous êtes sur le point de supprimer définitivement le fichier \"$fileName\".';
  }

  @override
  String get deleteGistMessage =>
      'Vous êtes sur le point de supprimer définitivement ce gist.';

  @override
  String get deleteEntireGistMessage =>
      'Vous êtes sur le point de supprimer définitivement ce gist entier et tous ses fichiers.';

  @override
  String get conflictResolution => 'Résolution des conflits';

  @override
  String get allConflictsResolved => 'Tous les conflits résolus !';

  @override
  String conflictProgress(int current, int total) {
    return 'Conflit $current sur $total';
  }

  @override
  String get previousConflict => 'Conflit précédent';

  @override
  String get nextConflict => 'Conflit suivant';

  @override
  String get conflictExplanation =>
      'Ce gist a été modifié localement et à distance. Choisissez quelle version conserver.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist : $name';
  }

  @override
  String get yourLocalVersion => 'Votre version locale';

  @override
  String get remoteVersionGitHub => 'Version distante (GitHub)';

  @override
  String get chooseResolution => 'Choisir la résolution :';

  @override
  String get keepMyLocalChanges => 'Conserver mes modifications locales';

  @override
  String get keepMyLocalChangesDescription =>
      'Écrase la version distante avec vos modifications locales';

  @override
  String get keepRemoteVersion => 'Conserver la version distante';

  @override
  String get keepRemoteVersionDescription =>
      'Écarter vos modifications locales et utiliser la version GitHub';

  @override
  String get discardLocalChanges => 'Annuler les modifications locales';

  @override
  String get discardLocalChangesDescription =>
      'Supprimer cette opération de la file d\'attente de synchronisation';

  @override
  String get modifiedUnknown => 'Modifié : inconnu';

  @override
  String modifiedAt(String time) {
    return 'Modifié le : $time';
  }

  @override
  String get filesLabel => 'Fichiers :';

  @override
  String get fileDeletedLabel => 'supprimé';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count caractères',
      one: '1 caractère',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'À l\'instant';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'il y a $count minutes',
      one: 'il y a 1 minute',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count heures',
      one: '1 heure',
    );
    return 'il y a $_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'il y a $count jours',
      one: 'il y a 1 jour',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Conserver les modifications locales ?';

  @override
  String get keepLocalChangesMessage =>
      'Vos modifications locales écraseront la version distante. Cette action est irréversible.';

  @override
  String get keepLocal => 'Conserver localement';

  @override
  String get keepRemoteVersionTitle => 'Conserver la version distante ?';

  @override
  String get keepRemoteVersionMessage =>
      'Cela supprimera vos modifications locales et conservera la version distante. Cette action est irréversible.';

  @override
  String get keepRemote => 'Conserver la version distante';

  @override
  String get discardChangesTitle => 'Annuler les modifications ?';

  @override
  String get discardChangesMessage =>
      'Vos modifications locales seront supprimées sans être synchronisées. Cette action est irréversible.';

  @override
  String get gistMustHaveOneFile => 'Un gist doit contenir au moins un fichier';

  @override
  String errorCreatingGist(String error) {
    return 'Erreur lors de la création du gist : $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist sauvegardé hors connexion. Synchronisation lors de la prochaine connexion.';

  @override
  String errorSavingGist(String error) {
    return 'Erreur lors de la sauvegarde du gist : $error';
  }

  @override
  String get changesSavedOffline =>
      'Modifications enregistrées hors connexion. Synchronisation lors de la prochaine connexion.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Voulez-vous supprimer uniquement \"$fileName\" ou l\'ensemble du gist ?';
  }

  @override
  String errorDeleting(String error) {
    return 'Erreur lors de la suppression : $error';
  }

  @override
  String get addFile => 'Ajouter un fichier';

  @override
  String get removeFile => 'Supprimer le fichier';

  @override
  String newFileNumbered(int number) {
    return 'Nouveau fichier $number';
  }

  @override
  String get newGist => 'Nouveau Gist';

  @override
  String get filenameHint => 'par ex., script.py';

  @override
  String get offlineNoCachedGists =>
      'Vous êtes hors connexion. Aucun Gist mis en cache disponible.';

  @override
  String get syncStatus => 'État de la synchronisation';

  @override
  String get syncing => 'Synchronisation...';

  @override
  String pendingCountLabel(int count) {
    return 'En attente : $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Conflits : $count';
  }

  @override
  String get operationsLabel => 'Opérations :';

  @override
  String get resolveConflicts => 'Résoudre les conflits';

  @override
  String get willSyncWhenRestored =>
      'Se synchronisera automatiquement lorsque la connexion sera rétablie';

  @override
  String get syncNow => 'Synchroniser maintenant';

  @override
  String get selectLanguage => 'Sélectionner la langue';

  @override
  String get offlineChangesWillSync =>
      'Vous êtes hors connexion. Les modifications seront synchronisées lors de la prochaine connexion.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count en attente',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Erreur lors du chargement des gists publics : $error';
  }

  @override
  String errorSearching(String error) {
    return 'Erreur de recherche : $error';
  }

  @override
  String byAuthor(String author) {
    return 'par $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Erreur lors de la connexion : $error';
  }

  @override
  String get connectingToGitHub => 'Connexion à GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Erreur lors de l\'activation du lancement au démarrage : $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Erreur lors de la fermeture de l\'application : $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Erreur lors de la déconnexion : $error';
  }

  @override
  String get tabSize => 'Taille de tabulation';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count espaces',
      one: '1 espace',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count espaces',
      one: '1 espace',
    );
    return 'La touche Tab insérera $_temp0';
  }

  @override
  String get errorLoadingUserProfile =>
      'Erreur de chargement du profil utilisateur';

  @override
  String get followers => 'Abonnés';

  @override
  String get following => 'Suivi';

  @override
  String get repos => 'Dépôts';

  @override
  String get gists => 'Gists';

  @override
  String joinedDate(String date) {
    return 'A rejoint en $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Voir les Gists de $username';
  }

  @override
  String get openLink => 'Ouvrir le lien';

  @override
  String openLinkConfirmation(String url) {
    return 'Voulez-vous ouvrir ce lien dans votre navigateur ?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Impossible d\'ouvrir le lien';

  @override
  String get noFollowersFound => 'Aucun abonné trouvé';

  @override
  String get noFollowingFound => 'Aucun abonnement trouvé';

  @override
  String errorLoadingFollowers(String error) {
    return 'Erreur de chargement des followers : $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Erreur de chargement des utilisateurs suivis : $error';
  }

  @override
  String get deleteIsPermanent =>
      'Cette action est définitive et ne peut être annulée.';

  @override
  String typeToConfirm(String text) {
    return 'Tapez \"$text\" pour confirmer :';
  }

  @override
  String typeExactly(String text) {
    return 'Veuillez taper \"$text\" exactement';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Fichier \"$fileName\" supprimé';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Erreur lors de la suppression du fichier : $error';
  }

  @override
  String get gistDeleted => 'Gist supprimé';

  @override
  String errorDeletingGist(String error) {
    return 'Erreur lors de la suppression du gist : $error';
  }

  @override
  String get noFilesAvailable => 'Aucun fichier disponible';

  @override
  String get fileDataNotAvailable => 'Données du fichier non disponibles';

  @override
  String get copied => 'Copié !';

  @override
  String get copyToClipboard => 'Copier dans le presse-papiers';

  @override
  String get contentCopiedToClipboard => 'Contenu copié dans le presse-papiers';

  @override
  String get copyGistContentToClipboard =>
      'Copier le contenu du Gist dans le presse-papiers';

  @override
  String get internetNotAvailable => 'Pas de connexion Internet';

  @override
  String get editGist => 'Modifier le gist';
}

/// The translations for French, as used in Canada (`fr_CA`).
class AppLocalizationsFrCa extends AppLocalizationsFr {
  AppLocalizationsFrCa() : super('fr_CA');

  @override
  String get signIn => 'Se connecter avec GitHub';

  @override
  String get search => 'Rechercher';

  @override
  String get allLanguages => 'Toutes les langues';

  @override
  String get darkMode => 'MODE SOMBRE';

  @override
  String get theme => 'Thème';

  @override
  String get lightTheme => 'Clair';

  @override
  String get darkTheme => 'Sombre';

  @override
  String get systemTheme => 'Système';

  @override
  String get fontSize => 'Taille de police';

  @override
  String get logout => 'Déconnexion';

  @override
  String get account => 'Compte';

  @override
  String get system => 'Système';

  @override
  String get display => 'Affichage';

  @override
  String get deleteGist => 'Supprimer le Gist';

  @override
  String get confirmDelete => 'Êtes-vous certain de vouloir supprimer ce gist?';

  @override
  String get permanent => 'Cette action ne peut pas être annulée.';

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get filename => 'Nom du fichier';

  @override
  String get description => 'Description (facultative)';

  @override
  String get public => 'Public';

  @override
  String get created => 'créé :';

  @override
  String get lastUpdated => 'Dernière mise à jour :';

  @override
  String get loadingGists => 'Chargement des Gists...';

  @override
  String get noGistsYet => 'Aucun gist pour l\'instant';

  @override
  String get noMatchingGists => 'Aucun gist correspondant trouvé';

  @override
  String get createFirstGist =>
      'Créez votre premier gist en appuyant sur le bouton + ci-dessous';

  @override
  String get adjustSearch =>
      'Essayez d\'ajuster votre recherche ou votre filtre de langue';

  @override
  String get scrollToTop => 'Défiler vers le haut';

  @override
  String get createNewGist => 'Créer un nouveau gist';

  @override
  String get launchAtLogin => 'Lancer à l\'ouverture de session';

  @override
  String get quit => 'Quitter';

  @override
  String get star => 'Étoile';

  @override
  String get unstar => 'Retirer l\'étoile';

  @override
  String get starred => 'Étoilé';

  @override
  String get fork => 'Fourcher';

  @override
  String get forked => 'Fourché';

  @override
  String get forkSuccess => 'Gist fourché avec succès!';

  @override
  String get publicGists => 'Gists publics';

  @override
  String get browsePublicGists => 'Parcourir les Gists publics';

  @override
  String get errorStarring => 'Erreur lors de l\'ajout d\'une étoile au gist';

  @override
  String get errorForking => 'Erreur lors du fork du gist';

  @override
  String get loadMore => 'Charger plus';

  @override
  String get noPublicGists => 'Aucun gist public trouvé';

  @override
  String get starredGists => 'Gists étoilés';

  @override
  String get myGists => 'Mes Gists';

  @override
  String get share => 'Partager';

  @override
  String get shareGist => 'Partager le Gist';

  @override
  String get exportFile => 'Exporter en fichier';

  @override
  String get generateQRCode => 'Générer un code QR';

  @override
  String get copyEmbedCode => 'Copier le code d\'intégration';

  @override
  String get copyGistUrl => 'Copier l\'URL du Gist';

  @override
  String get moreActions => 'Plus d\'actions';

  @override
  String get exportSuccess => 'Gist exporté avec succès';

  @override
  String get exportError => 'Erreur lors de l\'exportation du gist';

  @override
  String get embedCodeCopied =>
      'Code d\'intégration copié dans le presse-papiers';

  @override
  String get urlCopied => 'URL copiée dans le presse-papiers';

  @override
  String get qrCodeTitle => 'Code QR';

  @override
  String get scanToOpen => 'Numérisez pour ouvrir le gist';

  @override
  String get searchPublicGistsHint => 'Rechercher ou @nomdutilisateur';

  @override
  String get close => 'Fermer';

  @override
  String get clear => 'Effacer';

  @override
  String get tryDifferentSearch => 'Essayez un terme de recherche différent';

  @override
  String showingGistsFromUser(int count) {
    return 'Affichage de $count gists de l\'utilisateur';
  }

  @override
  String foundInLoadedGists(int count) {
    return 'Trouvé $count dans les gists chargés. Utilisez @nomdutilisateur pour récupérer tous les gists d\'un utilisateur.';
  }

  @override
  String get raw => 'Brut';

  @override
  String get preview => 'Aperçu';

  @override
  String get sortBy => 'Trier par';

  @override
  String get sortDateNewest => 'Date (Plus récent)';

  @override
  String get sortDateOldest => 'Date (Plus ancien)';

  @override
  String get sortNameAsc => 'Nom (A-Z)';

  @override
  String get sortNameDesc => 'Nom (Z-A)';

  @override
  String get sortLanguage => 'Langue';

  @override
  String get sortStars => 'Étoiles';

  @override
  String get pin => 'Épingler';

  @override
  String get unpin => 'Désépingler';

  @override
  String get pinned => 'Épinglé';

  @override
  String get archive => 'Archiver';

  @override
  String get unarchive => 'Désarchiver';

  @override
  String get archived => 'Archivé';

  @override
  String get showArchived => 'Afficher les archivés';

  @override
  String get hideArchived => 'Masquer les archivés';

  @override
  String get gistPinned => 'Gist épinglé';

  @override
  String get gistUnpinned => 'Gist désépinglé';

  @override
  String get gistArchived => 'Gist archivé';

  @override
  String get gistUnarchived => 'Gist désarchivé';

  @override
  String get organize => 'Organiser';

  @override
  String get exportCurrentFile => 'Exporter le fichier sélectionné';

  @override
  String get exportAllFiles => 'Exporter tous les fichiers';

  @override
  String get shareCurrentFile => 'Partager le fichier sélectionné';

  @override
  String get shareAllFiles => 'Partager tous les fichiers';

  @override
  String get deleteSelectedFile => 'Supprimer le fichier sélectionné';

  @override
  String get deleteAllFiles => 'Supprimer le Gist entier';

  @override
  String get exportAllSuccess => 'Tous les fichiers exportés vers';

  @override
  String filesExported(int count) {
    return '$count fichiers exportés';
  }

  @override
  String get openInFinderAfterExport => 'Ouvrir le Finder après l\'exportation';
}
