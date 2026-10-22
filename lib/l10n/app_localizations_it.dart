// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get signIn => 'Accedi con GitHub';

  @override
  String get search => 'Cerca';

  @override
  String get allLanguages => 'Tutte le lingue';

  @override
  String get darkMode => 'MODALITÀ SCURA';

  @override
  String get theme => 'Tema';

  @override
  String get lightTheme => 'Chiaro';

  @override
  String get darkTheme => 'Scuro';

  @override
  String get systemTheme => 'Sistema';

  @override
  String get fontSize => 'Dimensione del carattere';

  @override
  String get logout => 'Esci';

  @override
  String get account => 'Account';

  @override
  String get system => 'Sistema';

  @override
  String get display => 'Visualizzazione';

  @override
  String get deleteGist => 'Elimina Gist';

  @override
  String get confirmDelete => 'Sei sicuro di voler eliminare questo gist?';

  @override
  String get permanent => 'Questa azione non può essere annullata.';

  @override
  String get cancel => 'Annulla';

  @override
  String get delete => 'Elimina';

  @override
  String get filename => 'Nome del file';

  @override
  String get description => 'Descrizione (opzionale)';

  @override
  String get public => 'Pubblico';

  @override
  String get created => 'creato:';

  @override
  String get lastUpdated => 'Ultimo aggiornamento:';

  @override
  String get loadingGists => 'Caricamento Gists...';

  @override
  String get noGistsYet => 'Nessun gist ancora';

  @override
  String get noMatchingGists => 'Nessun gist corrispondente trovato';

  @override
  String get createFirstGist =>
      'Crea il tuo primo gist toccando il pulsante + qui sotto';

  @override
  String get adjustSearch =>
      'Prova a modificare la ricerca o il filtro della lingua';

  @override
  String get scrollToTop => 'Scorri in alto';

  @override
  String get createNewGist => 'Crea nuovo gist';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => 'Esci';

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
  String get sortBy => 'Ordina per';

  @override
  String get sortDateNewest => 'Data (Più recente)';

  @override
  String get sortDateOldest => 'Data (Più Antica)';

  @override
  String get sortNameAsc => 'Nome (A-Z)';

  @override
  String get sortNameDesc => 'Nome (A-Z)';

  @override
  String get sortLanguage => 'Lingua';

  @override
  String get sortStars => 'Stelle';

  @override
  String get pin => 'Pubblica';

  @override
  String get unpin => 'Scollega';

  @override
  String get pinned => 'Pinnato';

  @override
  String get archive => 'Archivia';

  @override
  String get unarchive => 'Disarchivia';

  @override
  String get archived => 'Archiviato';

  @override
  String get showArchived => 'Mostra Archiviati';

  @override
  String get hideArchived => 'Nascondi Archiviati';

  @override
  String get gistPinned => 'Gist spedito';

  @override
  String get gistUnpinned => 'Gist svincolato';

  @override
  String get gistArchived => 'Gist archiviato';

  @override
  String get gistUnarchived => 'Gist non archiviato';

  @override
  String get organize => 'Organizza';

  @override
  String get exportCurrentFile => 'Esporta File Selezionato';

  @override
  String get exportAllFiles => 'Esporta tutti i file';

  @override
  String get shareCurrentFile => 'Condividi il file selezionato';

  @override
  String get shareAllFiles => 'Condividi tutti i file';

  @override
  String get deleteSelectedFile => 'Elimina il file selezionato';

  @override
  String get deleteAllFiles => 'Elimina tutto il gist e i file';

  @override
  String get exportAllSuccess => 'Tutti i file esportati in';

  @override
  String filesExported(int count) {
    return '$count file esportati';
  }

  @override
  String get openInFinderAfterExport =>
      'Apri Finder dopo l\'esportazione del file';

  @override
  String get ok => 'OK';

  @override
  String get open => 'Apri';

  @override
  String get discard => 'Annulla';

  @override
  String errorWithDetails(String error) {
    return 'Errore: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Errore durante il caricamento del contenuto: $statusCode';
  }

  @override
  String get noDescription => 'Nessuna descrizione';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count altri file',
      one: 'un altro file',
    );
    return '... e $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Creato: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Aggiornato: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Aggiornato l\'ultima volta: $time';
  }

  @override
  String get deleteFile => 'Elimina file';

  @override
  String deleteFileMessage(String fileName) {
    return 'Stai per eliminare definitivamente il file \"$fileName\".';
  }

  @override
  String get deleteGistMessage =>
      'Stai per eliminare definitivamente questo gist.';

  @override
  String get deleteEntireGistMessage =>
      'Stai per eliminare definitivamente questo intero gist e tutti i suoi file.';

  @override
  String get conflictResolution => 'Risoluzione dei conflitti';

  @override
  String get allConflictsResolved => 'Tutti i conflitti risolti!';

  @override
  String conflictProgress(int current, int total) {
    return 'Conflitto $current di $total';
  }

  @override
  String get previousConflict => 'Conflitto precedente';

  @override
  String get nextConflict => 'Conflitto successivo';

  @override
  String get conflictExplanation =>
      'Questo gist è stato modificato sia localmente che da remoto. Scegli quale versione mantenere.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'La tua versione locale';

  @override
  String get remoteVersionGitHub => 'Versione remota (GitHub)';

  @override
  String get chooseResolution => 'Scegli risoluzione:';

  @override
  String get keepMyLocalChanges => 'Conserva le mie modifiche locali';

  @override
  String get keepMyLocalChangesDescription =>
      'Sovrascrivi la versione remota con le tue modifiche locali';

  @override
  String get keepRemoteVersion => 'Mantieni versione remota';

  @override
  String get keepRemoteVersionDescription =>
      'Scarta le modifiche locali e usa la versione di GitHub';

  @override
  String get discardLocalChanges => 'Scarta modifiche locali';

  @override
  String get discardLocalChangesDescription =>
      'Rimuovi questa operazione dalla coda di sincronizzazione';

  @override
  String get modifiedUnknown => 'Modificato: sconosciuto';

  @override
  String modifiedAt(String time) {
    return 'Modificato: $time';
  }

  @override
  String get filesLabel => 'File:';

  @override
  String get fileDeletedLabel => 'eliminato';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count caratteri',
      one: '1 carattere',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Ora';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuti fa',
      one: '1 minuto fa',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ore fa',
      one: '1 ora fa',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni fa',
      one: '1 giorno fa',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Salva modifiche locali?';

  @override
  String get keepLocalChangesMessage =>
      'Sovrascriverà la versione remota con le tue modifiche locali. L\'azione non può essere annullata.';

  @override
  String get keepLocal => 'Conserva locale';

  @override
  String get keepRemoteVersionTitle => 'Conserva versione remota?';

  @override
  String get keepRemoteVersionMessage =>
      'Scarterà le modifiche locali e manterrà la versione remota. Quest\'azione non può essere annullata.';

  @override
  String get keepRemote => 'Conserva Remoto';

  @override
  String get discardChangesTitle => 'Annulla modifiche?';

  @override
  String get discardChangesMessage =>
      'Le modifiche locali verranno eliminate senza essere sincronizzate. Quest\'azione non può essere annullata.';

  @override
  String get gistMustHaveOneFile => 'Un Gist deve avere almeno un file';

  @override
  String errorCreatingGist(String error) {
    return 'Errore durante la creazione del gist: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist salvato offline. Sincronizzerà quando connesso.';

  @override
  String errorSavingGist(String error) {
    return 'Errore durante il salvataggio del gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'Modifiche salvate offline. Sincronizzerà al prossimo collegamento.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Vuoi eliminare solo \"$fileName\" o l\'intero gist?';
  }

  @override
  String errorDeleting(String error) {
    return 'Errore durante l\'eliminazione: $error';
  }

  @override
  String get addFile => 'Aggiungi file';

  @override
  String get removeFile => 'Rimuovi file';

  @override
  String newFileNumbered(int number) {
    return 'Nuovo file $number';
  }

  @override
  String get newGist => 'Nuovo Gist';

  @override
  String get filenameHint => 'es., script.py';

  @override
  String get offlineNoCachedGists =>
      'Sei offline. Nessun Gist memorizzato disponibile.';

  @override
  String get syncStatus => 'Stato sincronizzazione';

  @override
  String get syncing => 'Sincronizzazione...';

  @override
  String pendingCountLabel(int count) {
    return 'In sospeso: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Conflitti: $count';
  }

  @override
  String get operationsLabel => 'Operazioni:';

  @override
  String get resolveConflicts => 'Risolvi conflitti';

  @override
  String get willSyncWhenRestored =>
      'Sincronizzerà automaticamente al ripristino della connessione';

  @override
  String get syncNow => 'Sincronizza ora';

  @override
  String get selectLanguage => 'Seleziona lingua';

  @override
  String get offlineChangesWillSync =>
      'Sei offline. Le modifiche verranno sincronizzate quando sarai connesso.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count in sospeso',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Errore durante il caricamento dei Gist pubblici: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Errore durante la ricerca: $error';
  }

  @override
  String byAuthor(String author) {
    return 'di $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Errore durante l\'accesso: $error';
  }

  @override
  String get connectingToGitHub => 'Connessione a GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Errore nell\'impostare l\'avvio automatico: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Errore durante l\'uscita dall\'app: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Errore durante l\'uscita: $error';
  }

  @override
  String get tabSize => 'Dimensione tabulazione';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spazi',
      one: '1 spazio',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Il tasto Tab inserirà $count spazi',
      one: 'Il tasto Tab inserirà 1 spazio',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile =>
      'Errore nel caricamento del profilo utente';

  @override
  String get followers => 'Follower';

  @override
  String get following => 'Seguiti';

  @override
  String get repos => 'Repository';

  @override
  String get gists => 'Gist';

  @override
  String joinedDate(String date) {
    return 'Iscritto a $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Visualizza i Gist di $username';
  }

  @override
  String get openLink => 'Apri link';

  @override
  String openLinkConfirmation(String url) {
    return 'Vuoi aprire questo link nel tuo browser?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Impossibile aprire il link';

  @override
  String get noFollowersFound => 'Nessun follower trovato';

  @override
  String get noFollowingFound => 'Nessun utente seguito trovato';

  @override
  String errorLoadingFollowers(String error) {
    return 'Errore nel caricamento dei follower: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Errore nel caricamento dei seguiti: $error';
  }

  @override
  String get deleteIsPermanent =>
      'Questa azione è permanente e non può essere annullata.';

  @override
  String typeToConfirm(String text) {
    return 'Digita \"$text\" per confermare:';
  }

  @override
  String typeExactly(String text) {
    return 'Inserisci esattamente \"$text\"';
  }

  @override
  String fileDeleted(String fileName) {
    return 'File \"$fileName\" eliminato';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Errore durante l\'eliminazione del file: $error';
  }

  @override
  String get gistDeleted => 'Gist eliminato';

  @override
  String errorDeletingGist(String error) {
    return 'Errore durante l\'eliminazione del gist: $error';
  }

  @override
  String get noFilesAvailable => 'Nessun file disponibile';

  @override
  String get fileDataNotAvailable => 'Dati del file non disponibili';

  @override
  String get copied => 'Copiato!';

  @override
  String get copyToClipboard => 'Copia negli appunti';

  @override
  String get contentCopiedToClipboard => 'Contenuto copiato negli appunti';

  @override
  String get copyGistContentToClipboard => 'Copia contenuto Gist negli appunti';

  @override
  String get internetNotAvailable => 'Connessione a Internet non disponibile';

  @override
  String get editGist => 'Modifica gist';
}
