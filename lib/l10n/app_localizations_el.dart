// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get signIn => 'Σύνδεση με GitHub';

  @override
  String get search => 'Αναζήτηση';

  @override
  String get allLanguages => 'Όλες οι γλώσσες';

  @override
  String get darkMode => 'ΣΚΟΤΕΙΝΗ ΛΕΙΤΟΥΡΓΙΑ';

  @override
  String get theme => 'Θέμα';

  @override
  String get lightTheme => 'Φωτεινό';

  @override
  String get darkTheme => 'Σκοτεινό';

  @override
  String get systemTheme => 'Σύστημα';

  @override
  String get fontSize => 'Μέγεθος γραμματοσειράς';

  @override
  String get logout => 'Αποσύνδεση';

  @override
  String get account => 'Λογαριασμός';

  @override
  String get system => 'Σύστημα';

  @override
  String get display => 'Οθόνη';

  @override
  String get deleteGist => 'Διαγραφή Gist';

  @override
  String get confirmDelete =>
      'Είστε σίγουροι ότι θέλετε να διαγράψετε αυτό το gist;';

  @override
  String get permanent => 'Αυτή η ενέργεια δεν μπορεί να αναιρεθεί.';

  @override
  String get cancel => 'Ακύρωση';

  @override
  String get delete => 'Διαγραφή';

  @override
  String get filename => 'Όνομα αρχείου';

  @override
  String get description => 'Περιγραφή (προαιρετικό)';

  @override
  String get public => 'Δημόσιο';

  @override
  String get created => 'δημιουργήθηκε:';

  @override
  String get lastUpdated => 'Τελευταία ενημέρωση:';

  @override
  String get loadingGists => 'Φόρτωση Gists...';

  @override
  String get noGistsYet => 'Δεν υπάρχουν ακόμα gists';

  @override
  String get noMatchingGists => 'Δεν βρέθηκαν αντίστοιχα gists';

  @override
  String get createFirstGist =>
      'Δημιουργήστε το πρώτο σας gist πατώντας το κουμπί + παρακάτω';

  @override
  String get adjustSearch =>
      'Δοκιμάστε να προσαρμόσετε την αναζήτησή σας ή το φίλτρο γλώσσας';

  @override
  String get scrollToTop => 'Μετακίνηση στην κορυφή';

  @override
  String get createNewGist => 'Δημιουργία νέου gist';

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
  String get sortBy => 'Συγκρίνετε κατά';

  @override
  String get sortDateNewest => 'Ημερομηνία (Νέο)';

  @override
  String get sortDateOldest => 'Date (Oldest)';

  @override
  String get sortNameAsc => 'Όνομα (Α-Ζ)';

  @override
  String get sortNameDesc => 'Όνομα (Α-Ζ)';

  @override
  String get sortLanguage => 'Λέξη';

  @override
  String get sortStars => 'Αστέρες';

  @override
  String get pin => 'Πάτα';

  @override
  String get unpin => 'Αποσύνδεση';

  @override
  String get pinned => 'Παγίδευμα';

  @override
  String get archive => 'Αρχεία';

  @override
  String get unarchive => 'Ανακύρωση';

  @override
  String get archived => 'Αρχειασμένος';

  @override
  String get showArchived => 'Εμφανίστε Αرشείο';

  @override
  String get hideArchived => 'Απόκρυψη Αρχειοθετημένων';

  @override
  String get gistPinned => 'Gist pinwnetai';

  @override
  String get gistUnpinned => 'Απεντόπισμα gist';

  @override
  String get gistArchived => 'Απάντηση αρχειοθετημένη';

  @override
  String get gistUnarchived => 'Γιστ ανεπεξεργασμένος';

  @override
  String get organize => 'Συντονισμός';

  @override
  String get exportCurrentFile => 'Εξαγωγή Επιλεγμένου Αρχείου';

  @override
  String get exportAllFiles => 'Εξαγωγή Ολών Αρχείων';

  @override
  String get shareCurrentFile => 'Μοιράζου το Επιλεγμένο Αρχείο';

  @override
  String get shareAllFiles => 'Μοιράσου Όλους τους Αρχείος';

  @override
  String get deleteSelectedFile => 'Εξαιρέστε το επιλεγμένο αρχείο';

  @override
  String get deleteAllFiles => 'Εξαιρέστε ολόκληρο το gist';

  @override
  String get exportAllSuccess => 'Όλες οι αρχείο εξαγονται σε';

  @override
  String filesExported(int count) {
    return '$count αρχεία εξαγόμενα';
  }

  @override
  String get openInFinderAfterExport =>
      'Ανοίξτε τον Φάιλομεναρική (Finder) μετά την εξαγωγή του αρχείου';

  @override
  String get ok => 'Εντάξει';

  @override
  String get open => 'Άνοιγμα';

  @override
  String get discard => 'Ακύρωση';

  @override
  String errorWithDetails(String error) {
    return 'Σφάλμα: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Σφάλμα φόρτωσης περιεχομένου: $statusCode';
  }

  @override
  String get noDescription => 'Χωρίς περιγραφή';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count επιπλέον αρχεία',
      one: '1 επιπλέον αρχείο',
    );
    return '... και $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Δημιουργήθηκε: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Ενημερώθηκε: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Τελευταία ενημέρωση: $time';
  }

  @override
  String get deleteFile => 'Διαγραφή αρχείου';

  @override
  String deleteFileMessage(String fileName) {
    return 'Είστε έτοιμοι να διαγράψετε οριστικά το αρχείο \"$fileName\";';
  }

  @override
  String get deleteGistMessage =>
      'Είστε έτοιμοι να διαγράψετε οριστικά αυτό το gist;';

  @override
  String get deleteEntireGistMessage =>
      'Είστε έτοιμοι να διαγράψετε οριστικά αυτό το ολόκληρο gist και όλα τα αρχεία του;';

  @override
  String get conflictResolution => 'Επίλυση Συγκρούσεων';

  @override
  String get allConflictsResolved => 'Όλα τα προβλήματα επιλύθηκαν!';

  @override
  String conflictProgress(int current, int total) {
    return 'Σύγκρουση $current από $total';
  }

  @override
  String get previousConflict => 'Προηγούμενη σύγκρουση';

  @override
  String get nextConflict => 'Επόμενη σύγκρουση';

  @override
  String get conflictExplanation =>
      'Αυτό το Gist τροποποιήθηκε τοπικά και εξ αποστάσεως. Επιλέξτε ποια έκδοση θα κρατήσετε.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Η τοπική σας έκδοση';

  @override
  String get remoteVersionGitHub => 'Απομακρυσμένη Έκδοση (GitHub)';

  @override
  String get chooseResolution => 'Επιλέξτε επίλυση:';

  @override
  String get keepMyLocalChanges => 'Διατήρησε τις τοπικές μου αλλαγές';

  @override
  String get keepMyLocalChangesDescription =>
      'Αντικατάσταση της απομακρυσμένης έκδοσης με τις τοπικές αλλαγές σας';

  @override
  String get keepRemoteVersion => 'Διατήρησε την απομακρυσμένη έκδοση';

  @override
  String get keepRemoteVersionDescription =>
      'Απορρίψτε τις τοπικές αλλαγές σας και χρησιμοποιήστε την έκδοση του GitHub';

  @override
  String get discardLocalChanges => 'Απορρίψτε τις τοπικές αλλαγές';

  @override
  String get discardLocalChangesDescription =>
      'Αφαίρεση αυτής της λειτουργίας από την ουρά συγχρονισμού';

  @override
  String get modifiedUnknown => 'Τροποποιήθηκε: άγνωστο';

  @override
  String modifiedAt(String time) {
    return 'Τροποποιήθηκε: $time';
  }

  @override
  String get filesLabel => 'Αρχεία:';

  @override
  String get fileDeletedLabel => 'διαγράφηκε';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count χαρακτήρες',
      one: '1 χαρακτήρας',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Τώρα';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count λεπτά πριν',
      one: '1 λεπτό πριν',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ώρες πριν',
      one: '1 ώρα πριν',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ημέρες πριν',
      one: '1 ημέρα πριν',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Διατήρηση τοπικών αλλαγών;';

  @override
  String get keepLocalChangesMessage =>
      'Αυτό θα αντικαταστήσει την απομακρυσμένη έκδοση με τις τοπικές σας αλλαγές. Η ενέργεια αυτή δεν μπορεί να αναιρεθεί.';

  @override
  String get keepLocal => 'Διατήρησε τοπικά';

  @override
  String get keepRemoteVersionTitle => 'Διατήρηση απομακρυσμένης έκδοσης;';

  @override
  String get keepRemoteVersionMessage =>
      'Αυτό θα απορρίψει τις τοπικές αλλαγές σας και θα διατηρήσει την απομακρυσμένη έκδοση. Η ενέργεια αυτή δεν μπορεί να αναιρεθεί.';

  @override
  String get keepRemote => 'Διατήρησε το Απομακρυσμένο';

  @override
  String get discardChangesTitle => 'Απορρίψτε τις αλλαγές;';

  @override
  String get discardChangesMessage =>
      'Αυτό θα διαγράψει τις τοπικές σας αλλαγές χωρίς να τις συγχρονίσει. Η ενέργεια αυτή δεν μπορεί να αναιρεθεί.';

  @override
  String get gistMustHaveOneFile =>
      'Το Gist πρέπει να έχει τουλάχιστον ένα αρχείο';

  @override
  String errorCreatingGist(String error) {
    return 'Σφάλμα δημιουργίας Gist: $error';
  }

  @override
  String get gistSavedOffline =>
      'Το Gist αποθηκεύτηκε εκτός σύνδεσης. Θα συγχρονιστεί όταν συνδεθείτε.';

  @override
  String errorSavingGist(String error) {
    return 'Σφάλμα αποθήκευσης Gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'Οι αλλαγές αποθηκεύτηκαν εκτός σύνδεσης. Θα συγχρονιστούν όταν συνδεθείτε.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Θέλετε να διαγράψετε μόνο το \"$fileName\" ή ολόκληρο το gist;';
  }

  @override
  String errorDeleting(String error) {
    return 'Σφάλμα κατά τη διαγραφή: $error';
  }

  @override
  String get addFile => 'Προσθήκη αρχείου';

  @override
  String get removeFile => 'Αφαίρεση αρχείου';

  @override
  String newFileNumbered(int number) {
    return 'Νέο αρχείο $number';
  }

  @override
  String get newGist => 'Νέο Gist';

  @override
  String get filenameHint => 'π.χ. script.py';

  @override
  String get offlineNoCachedGists =>
      'Είστε εκτός σύνδεσης. Δεν υπάρχουν αποθηκευμένα gists διαθέσιμα.';

  @override
  String get syncStatus => 'Κατάσταση συγχρονισμού';

  @override
  String get syncing => 'Συγχρονισμός...';

  @override
  String pendingCountLabel(int count) {
    return 'Εκκρεμή: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Συγκρούσεις: $count';
  }

  @override
  String get operationsLabel => 'Λειτουργίες:';

  @override
  String get resolveConflicts => 'Επίλυση Συγκρούσεων';

  @override
  String get willSyncWhenRestored =>
      'Θα συγχρονιστεί αυτόματα όταν αποκατασταθεί η σύνδεση';

  @override
  String get syncNow => 'Συγχρονισμός Τώρα';

  @override
  String get selectLanguage => 'Επιλογή Γλώσσας';

  @override
  String get offlineChangesWillSync =>
      'Είστε εκτός σύνδεσης. Οι αλλαγές θα συγχρονιστούν όταν συνδεθείτε.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count εκκρεμείς',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Σφάλμα φόρτωσης δημόσιων Gists: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Σφάλμα αναζήτησης: $error';
  }

  @override
  String byAuthor(String author) {
    return 'από $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Σφάλμα σύνδεσης: $error';
  }

  @override
  String get connectingToGitHub => 'Σύνδεση στο GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Σφάλμα κατά την ενεργοποίηση εκκίνησης κατά την είσοδηση: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Σφάλμα κατά την έξοδο από την εφαρμογή: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Σφάλμα κατά την αποσύνδεση: $error';
  }

  @override
  String get tabSize => 'Μέγεθος Tab';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count κενά',
      one: '1 κενό',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Το πλήκτρο Tab θα εισάγει $count κενά διαστήματα',
      one: 'Το πλήκτρο Tab θα εισάγει 1 κενό διάστημα',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'Σφάλμα φόρτωσης προφίλ χρήστη';

  @override
  String get followers => 'Ακολούθοι';

  @override
  String get following => 'Ακολουθούμενοι';

  @override
  String get repos => 'Αποθετήρια';

  @override
  String get gists => 'Gists';

  @override
  String joinedDate(String date) {
    return 'Εγγράφηκε $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Δείτε τα Gists του/της $username';
  }

  @override
  String get openLink => 'Άνοιγμα Συνδέσμου';

  @override
  String openLinkConfirmation(String url) {
    return 'Θέλετε να ανοίξετε αυτόν τον σύνδεσμο στον περιηγητή σας;\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Δεν ήταν δυνατό το άνοιγμα του συνδέσμου';

  @override
  String get noFollowersFound => 'Δεν βρέθηκαν ακόλουθοι';

  @override
  String get noFollowingFound => 'Δεν βρέθηκαν ακόλουθοι';

  @override
  String errorLoadingFollowers(String error) {
    return 'Σφάλμα φόρτωσης ακόλουθων: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Σφάλμα φόρτωσης ακόλουθων: $error';
  }

  @override
  String get deleteIsPermanent =>
      'Αυτή η ενέργεια είναι οριστική και δεν μπορεί να αναιρεθεί.';

  @override
  String typeToConfirm(String text) {
    return 'Πληκτρολογήστε \"$text\" για να επιβεβαιώσετε:';
  }

  @override
  String typeExactly(String text) {
    return 'Παρακαλώ πληκτρολογήστε ακριβώς \"$text\"';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Αρχείο \"$fileName\" διαγράφηκε';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Σφάλμα κατά τη διαγραφή αρχείου: $error';
  }

  @override
  String get gistDeleted => 'Gist διαγράφηκε';

  @override
  String errorDeletingGist(String error) {
    return 'Σφάλμα κατά τη διαγραφή του Gist: $error';
  }

  @override
  String get noFilesAvailable => 'Δεν υπάρχουν αρχεία';

  @override
  String get fileDataNotAvailable =>
      'Δεν είναι διαθέσιμα τα δεδομένα του αρχείου';

  @override
  String get copied => 'Αντιγράφηκε!';

  @override
  String get copyToClipboard => 'Αντιγραφή στο πρόχειρο';

  @override
  String get contentCopiedToClipboard => 'Περιεχόμενο αντιγράφηκε στο πρόχειρο';

  @override
  String get copyGistContentToClipboard =>
      'Αντιγραφή περιεχομένου Gist στο πρόχειρο';

  @override
  String get internetNotAvailable =>
      'Δεν είναι διαθέσιμη σύνδεση στο διαδίκτυο';

  @override
  String get editGist => 'Επεξεργασία Gist';
}
