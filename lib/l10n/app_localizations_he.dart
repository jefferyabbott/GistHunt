// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get signIn => 'התחבר באמצעות GitHub';

  @override
  String get search => 'חיפוש';

  @override
  String get allLanguages => 'כל השפות';

  @override
  String get darkMode => 'מצב כהה';

  @override
  String get theme => 'ערכת נושא';

  @override
  String get lightTheme => 'בהיר';

  @override
  String get darkTheme => 'כהה';

  @override
  String get systemTheme => 'מערכת';

  @override
  String get fontSize => 'גודל גופן';

  @override
  String get logout => 'התנתק';

  @override
  String get account => 'חשבון';

  @override
  String get system => 'מערכת';

  @override
  String get display => 'תצוגה';

  @override
  String get deleteGist => 'מחק Gist';

  @override
  String get confirmDelete => 'האם אתה בטוח שברצונך למחוק את ה-gist הזה?';

  @override
  String get permanent => 'לא ניתן לבטל פעולה זו.';

  @override
  String get cancel => 'ביטול';

  @override
  String get delete => 'מחק';

  @override
  String get filename => 'שם קובץ';

  @override
  String get description => 'תיאור (אופציונלי)';

  @override
  String get public => 'ציבורי';

  @override
  String get created => 'נוצר:';

  @override
  String get lastUpdated => 'עודכן לאחרונה:';

  @override
  String get loadingGists => 'טוען Gists...';

  @override
  String get noGistsYet => 'אין gists עדיין';

  @override
  String get noMatchingGists => 'לא נמצאו gists תואמים';

  @override
  String get createFirstGist =>
      'צור את ה-gist הראשון שלך על ידי הקשה על כפתור + למטה';

  @override
  String get adjustSearch => 'נסה להתאים את החיפוש או את מסנן השפה';

  @override
  String get scrollToTop => 'גלול למעלה';

  @override
  String get createNewGist => 'צור gist חדש';

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
  String get sortBy => 'סדר לפי';

  @override
  String get sortDateNewest => 'תאריך (חדש)';

  @override
  String get sortDateOldest => 'תאריך (העתק)';

  @override
  String get sortNameAsc => 'שם (א-ע)';

  @override
  String get sortNameDesc => 'שם (א-צ)';

  @override
  String get sortLanguage => 'לשון';

  @override
  String get sortStars => 'כוכבים';

  @override
  String get pin => 'Pin';

  @override
  String get unpin => 'בקע';

  @override
  String get pinned => 'מצורף';

  @override
  String get archive => 'ארכיון';

  @override
  String get unarchive => 'הפעל לאחסון';

  @override
  String get archived => 'ארכיון';

  @override
  String get showArchived => 'הציג ארכיוני';

  @override
  String get hideArchived => 'סתר אח\"מ';

  @override
  String get gistPinned => 'Gist נקבע';

  @override
  String get gistUnpinned => 'Gist unpinna';

  @override
  String get gistArchived => 'Gist nishnaf';

  @override
  String get gistUnarchived => 'Gist not archived';

  @override
  String get organize => 'ארגון';

  @override
  String get exportCurrentFile => 'אקספורט קבצה בחירה';

  @override
  String get exportAllFiles => 'ייצא כל הקבצים';

  @override
  String get shareCurrentFile => 'Share הקובץ הנבחר';

  @override
  String get shareAllFiles => 'שתף כל הקבצים';

  @override
  String get deleteSelectedFile => 'מחק קובץ בחירה';

  @override
  String get deleteAllFiles => 'מחק ג\'יסט שלם';

  @override
  String get exportAllSuccess => 'כל הקבצים נשלחו ל';

  @override
  String filesExported(int count) {
    return '$count קבצים יצאו';
  }

  @override
  String get openInFinderAfterExport => 'פתח את המאיץ לאחר יציאה לקובץ';

  @override
  String get ok => 'אישור';

  @override
  String get open => 'פתח';

  @override
  String get discard => 'בטל';

  @override
  String errorWithDetails(String error) {
    return 'שגיאה: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'שגיאה בטעינת התוכן: $statusCode';
  }

  @override
  String get noDescription => 'ללא תיאור';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count קבצים נוספים',
      one: 'קובץ אחד',
    );
    return 'ועוד $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'נוצר לפני $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'עודכן: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'עודכן לאחרונה: $time';
  }

  @override
  String get deleteFile => 'מחק קובץ';

  @override
  String deleteFileMessage(String fileName) {
    return 'אתה עומד למחוק לצמיתות את הקובץ \"$fileName\".';
  }

  @override
  String get deleteGistMessage => 'אתה עומד למחוק את ה-gist הזה לצמיתות.';

  @override
  String get deleteEntireGistMessage =>
      'אתה עומד למחוק לצמיתות את ה-gist כולו ואת כל הקבצים שבו.';

  @override
  String get conflictResolution => 'פתרון סתירות';

  @override
  String get allConflictsResolved => 'כל הסכסוכים נפתרו!';

  @override
  String conflictProgress(int current, int total) {
    return 'סכסוך $current מתוך $total';
  }

  @override
  String get previousConflict => 'התנגשות קודמת';

  @override
  String get nextConflict => 'התנגשות הבאה';

  @override
  String get conflictExplanation =>
      'הקובץ שונה גם מקומית וגם מרחוק. בחר איזו גרסה לשמור.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'הגרסה המקומית שלך';

  @override
  String get remoteVersionGitHub => 'גרסת GitHub המרוחקת';

  @override
  String get chooseResolution => 'בחר פתרון:';

  @override
  String get keepMyLocalChanges => 'שמור את השינויים המקומיים שלי';

  @override
  String get keepMyLocalChangesDescription =>
      'החלף את הגרסה המרוחקת בשינויים המקומיים שלך';

  @override
  String get keepRemoteVersion => 'שמור גרסת השרת';

  @override
  String get keepRemoteVersionDescription =>
      'התעלם מהשינויים המקומיים שלך והשתמש בגרסת ה-GitHub';

  @override
  String get discardLocalChanges => 'לזנוח שינויים מקומיים';

  @override
  String get discardLocalChangesDescription => 'הסר פעולה זו מתור התזמון';

  @override
  String get modifiedUnknown => 'שונה: לא ידוע';

  @override
  String modifiedAt(String time) {
    return 'שונה לאחרונה: $time';
  }

  @override
  String get filesLabel => 'קבצים:';

  @override
  String get fileDeletedLabel => 'נמחק';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count תווים',
      one: 'תו אחד',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'עכשיו';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count דקות',
      one: 'דקה אחת',
    );
    return 'לפני $_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count שעות',
      one: 'שעה אחת',
    );
    return 'לפני $_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ימים',
      one: 'יום אחד',
    );
    return 'לפני $_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'לשמור שינויים מקומיים?';

  @override
  String get keepLocalChangesMessage =>
      'השינויים המקומיים שלך ידחפו את הגרסה המרוחקת. הפעולה הזו לא ניתנת לביטול.';

  @override
  String get keepLocal => 'שמור מקומי';

  @override
  String get keepRemoteVersionTitle => 'לשמור את הגרסה המרוחקת?';

  @override
  String get keepRemoteVersionMessage =>
      'פעולה זו תבטל את השינויים המקומיים שלך ותשמור את הגרסה המרוחקת. לא ניתן לבטל פעולה זו.';

  @override
  String get keepRemote => 'שמור מרחוק';

  @override
  String get discardChangesTitle => 'לזרוק שינויים?';

  @override
  String get discardChangesMessage =>
      'פעולה זו תמחק את השינויים המקומיים שלך מבלי לסנכרן אותם. לא ניתן לבטל פעולה זו.';

  @override
  String get gistMustHaveOneFile => 'יש להכיל לפחות קובץ אחד ב-Gist';

  @override
  String errorCreatingGist(String error) {
    return 'שגיאה ביצירת Gist: $error';
  }

  @override
  String get gistSavedOffline =>
      'ה-Gist נשמר במצב לא מקוון. יסונכרן כאשר תתחבר.';

  @override
  String errorSavingGist(String error) {
    return 'שגיאה בשמירת Gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'השינויים נשמרו במצב לא מקוון. יסונכרנו עם חיבור לרשת.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'האם למחוק רק את \"$fileName\" או את כל ה-gist?';
  }

  @override
  String errorDeleting(String error) {
    return 'שגיאה במחיקה: $error';
  }

  @override
  String get addFile => 'הוסף קובץ';

  @override
  String get removeFile => 'הסר קובץ';

  @override
  String newFileNumbered(int number) {
    return 'קובץ חדש $number';
  }

  @override
  String get newGist => 'גיסט חדש';

  @override
  String get filenameHint => 'לדוגמה: script.py';

  @override
  String get offlineNoCachedGists =>
      'אתה במצב לא מקוון. אין גיסטים שמורים זמינים.';

  @override
  String get syncStatus => 'סטטוס סנכרון';

  @override
  String get syncing => 'מסונכרן...';

  @override
  String pendingCountLabel(int count) {
    return 'ממתינים: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'סכסוכים: $count';
  }

  @override
  String get operationsLabel => 'פעולות:';

  @override
  String get resolveConflicts => 'פתור סתירות';

  @override
  String get willSyncWhenRestored => 'יסונכרן אוטומטית כאשר החיבור ישוחזר';

  @override
  String get syncNow => 'סנכרן עכשיו';

  @override
  String get selectLanguage => 'בחר שפה';

  @override
  String get offlineChangesWillSync =>
      'אתה במצב לא מקוון. שינויים יסונכרנו כאשר תתחבר.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ממתינים',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'שגיאה בטעינת Gists ציבוריים: $error';
  }

  @override
  String errorSearching(String error) {
    return 'שגיאה בחיפוש: $error';
  }

  @override
  String byAuthor(String author) {
    return 'על ידי $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'שגיאה בכניסה: $error';
  }

  @override
  String get connectingToGitHub => 'מתחבר ל-GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'שגיאה בהגדרת הפעלה אוטומטית עם עליית המערכת: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'שגיאה ביציאה מהאפליקציה: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'שגיאה בניתוק: $error';
  }

  @override
  String get tabSize => 'גודל טב';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count רווחים',
      one: 'רווח אחד',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'מקש הטאב יכניס $count רווחים',
      one: 'מקש הטאב יכניס רווח אחד',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'שגיאה בטעינת פרופיל משתמש';

  @override
  String get followers => 'עוקבים';

  @override
  String get following => 'עוקבים';

  @override
  String get repos => 'מאגרים';

  @override
  String get gists => 'גיסטים';

  @override
  String joinedDate(String date) {
    return 'הצטרף ב$date';
  }

  @override
  String viewUserGists(String username) {
    return 'הצג את ה-Gists של $username';
  }

  @override
  String get openLink => 'פתח קישור';

  @override
  String openLinkConfirmation(String url) {
    return 'האם ברצונך לפתוח קישור זה בדפדפן?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'לא ניתן לפתוח קישור';

  @override
  String get noFollowersFound => 'לא נמצאו עוקבים';

  @override
  String get noFollowingFound => 'לא נמצאים עוקבים';

  @override
  String errorLoadingFollowers(String error) {
    return 'שגיאה בטעינת עוקבים: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'שגיאה בטעינת עוקבים: $error';
  }

  @override
  String get deleteIsPermanent => 'פעולה זו היא קבועה ואינה ניתנת לביטול.';

  @override
  String typeToConfirm(String text) {
    return 'הקלד \"$text\" כדי לאשר:';
  }

  @override
  String typeExactly(String text) {
    return 'אנא הקלד \"$text\" בדיוק';
  }

  @override
  String fileDeleted(String fileName) {
    return 'הקובץ \"$fileName\" נמחק';
  }

  @override
  String errorDeletingFile(String error) {
    return 'שגיאה במחיקת הקובץ: $error';
  }

  @override
  String get gistDeleted => 'ה-Gist נמחק';

  @override
  String errorDeletingGist(String error) {
    return 'שגיאה במחיקת Gist: $error';
  }

  @override
  String get noFilesAvailable => 'אין קבצים זמינים';

  @override
  String get fileDataNotAvailable => 'נתוני הקובץ אינם זמינים';

  @override
  String get copied => 'הועתק!';

  @override
  String get copyToClipboard => 'העתק ללוח הגזירים';

  @override
  String get contentCopiedToClipboard => 'תוכן הועתק ללוח הגזירים';

  @override
  String get copyGistContentToClipboard => 'העתק תוכן Gist ללוח הגזירים';

  @override
  String get internetNotAvailable => 'אין חיבור לאינטרנט';

  @override
  String get editGist => 'ערוך פתק';
}
