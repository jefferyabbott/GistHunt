// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get signIn => 'تسجيل الدخول باستخدام GitHub';

  @override
  String get search => 'بحث';

  @override
  String get allLanguages => 'كل اللغات';

  @override
  String get darkMode => 'الوضع الداكن';

  @override
  String get theme => 'المظهر';

  @override
  String get lightTheme => 'فاتح';

  @override
  String get darkTheme => 'داكن';

  @override
  String get systemTheme => 'النظام';

  @override
  String get fontSize => 'حجم الخط';

  @override
  String get logout => 'تسجيل الخروج';

  @override
  String get account => 'الحساب';

  @override
  String get system => 'النظام';

  @override
  String get display => 'العرض';

  @override
  String get deleteGist => 'حذف Gist';

  @override
  String get confirmDelete => 'هل أنت متأكد أنك تريد حذف هذا الـ gist؟';

  @override
  String get permanent => 'لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get cancel => 'إلغاء';

  @override
  String get delete => 'حذف';

  @override
  String get filename => 'اسم الملف';

  @override
  String get description => 'الوصف (اختياري)';

  @override
  String get public => 'عام';

  @override
  String get created => 'تم الإنشاء:';

  @override
  String get lastUpdated => 'آخر تحديث:';

  @override
  String get loadingGists => 'جاري تحميل Gists...';

  @override
  String get noGistsYet => 'لا توجد gists بعد';

  @override
  String get noMatchingGists => 'لم يتم العثور على gists مطابقة';

  @override
  String get createFirstGist => 'أنشئ أول gist لك من خلال النقر على زر + أدناه';

  @override
  String get adjustSearch => 'حاول تعديل البحث أو فلتر اللغة';

  @override
  String get scrollToTop => 'التمرير إلى الأعلى';

  @override
  String get createNewGist => 'إنشاء gist جديد';

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
  String get sortBy => 'تستخدم \n\n(تفرق)';

  @override
  String get sortDateNewest => 'تاريخ (أحدث)';

  @override
  String get sortDateOldest => 'تاريخ (الأقدم)';

  @override
  String get sortNameAsc => 'اسم (أ-ي)';

  @override
  String get sortNameDesc => 'اسم (أ-ي)';

  @override
  String get sortLanguage => 'اللغة';

  @override
  String get sortStars => 'نجوم';

  @override
  String get pin => 'إضافة';

  @override
  String get unpin => 'إزالة الاقتباس';

  @override
  String get pinned => 'مرفوع';

  @override
  String get archive => 'أرشيف';

  @override
  String get unarchive => 'إعادة الأرشفة';

  @override
  String get archived => 'مستودع';

  @override
  String get showArchived => 'إظهار المخزنة';

  @override
  String get hideArchived => 'إخفاء المخزنة';

  @override
  String get gistPinned => 'مقالة مقروءة';

  @override
  String get gistUnpinned => 'غيّر الربط';

  @override
  String get gistArchived => 'مذكرة محفوظة';

  @override
  String get gistUnarchived => 'محتويات الجست غير مسحوبة';

  @override
  String get organize => 'تنظيم';

  @override
  String get exportCurrentFile => 'إخراج الملف المختار';

  @override
  String get exportAllFiles => 'إخراج جميع الملفات';

  @override
  String get shareCurrentFile => 'اشترك الملف المختار';

  @override
  String get shareAllFiles => 'اشترك كل الملفات';

  @override
  String get deleteSelectedFile => 'حذف الملف المختار';

  @override
  String get deleteAllFiles => 'حذف كل الملفات';

  @override
  String get exportAllSuccess => 'تم تصدير جميع الملفات إلى';

  @override
  String filesExported(int count) {
    return '$count ملفات تم تصديرها';
  }

  @override
  String get openInFinderAfterExport => 'فتح المتصفح بعد تصدير الملف';

  @override
  String get ok => 'موافق';

  @override
  String get open => 'افتح';

  @override
  String get discard => 'تجاهل';

  @override
  String errorWithDetails(String error) {
    return 'خطأ: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'حدث خطأ في تحميل المحتوى: $statusCode';
  }

  @override
  String get noDescription => 'لا وصف';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ملفات أخرى',
      one: 'ملف آخر',
    );
    return '... و $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'تم الإنشاء: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'تم التحديث: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'تم التحديث آخر مرة: $time';
  }

  @override
  String get deleteFile => 'حذف ملف';

  @override
  String deleteFileMessage(String fileName) {
    return 'أنت على وشك حذف الملف \"$fileName\" نهائيا.';
  }

  @override
  String get deleteGistMessage => 'أنت على وشك حذف هذه الـ Gist نهائيا.';

  @override
  String get deleteEntireGistMessage =>
      'أنت على وشك حذف هذه الـ Gist بالكامل وجميع ملفاتها نهائيا.';

  @override
  String get conflictResolution => 'حل التعارضات';

  @override
  String get allConflictsResolved => 'تم حل جميع التعارضات!';

  @override
  String conflictProgress(int current, int total) {
    return 'تعارض $current من $total';
  }

  @override
  String get previousConflict => 'التعارض السابق';

  @override
  String get nextConflict => 'التعارض التالي';

  @override
  String get conflictExplanation =>
      'تم تعديل هذه الـ Gist محليا وعن بُعد. اختر النسخة التي تريد الاحتفاظ بها.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'نسختك المحلية';

  @override
  String get remoteVersionGitHub => 'الإصدار البعيد (GitHub)';

  @override
  String get chooseResolution => 'اختر الحل:';

  @override
  String get keepMyLocalChanges => 'احتفظ بتغييراتي المحلية';

  @override
  String get keepMyLocalChangesDescription =>
      'استبدال النسخة البعيدة بتغييراتك المحلية';

  @override
  String get keepRemoteVersion => 'احتفظ بنسخة الخادم البعيد';

  @override
  String get keepRemoteVersionDescription =>
      'تجاهل التغييرات المحلية واستخدم نسخة GitHub';

  @override
  String get discardLocalChanges => 'تجاهل التغييرات المحلية';

  @override
  String get discardLocalChangesDescription =>
      'إزالة هذه العملية من قائمة المزامنة';

  @override
  String get modifiedUnknown => 'تم التعديل: غير معروف';

  @override
  String modifiedAt(String time) {
    return 'تم التعديل: $time';
  }

  @override
  String get filesLabel => 'ملفات:';

  @override
  String get fileDeletedLabel => 'تم الحذف';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count حرفا',
      one: 'حرف واحد',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'الآن';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دقيقة مضت',
      one: 'منذ دقيقة واحدة',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ساعة',
      one: 'ساعة واحدة',
    );
    return 'منذ $_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أيام مضت',
      one: 'منذ يوم واحد',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'الحفاظ على التغييرات المحلية؟';

  @override
  String get keepLocalChangesMessage =>
      'سيؤدي هذا إلى استبدال النسخة البعيدة بتغييراتك المحلية. لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get keepLocal => 'احتفظ بالتغييرات المحلية';

  @override
  String get keepRemoteVersionTitle => 'الاحتفاظ بنسخة جهاز التحكم عن بُعد؟';

  @override
  String get keepRemoteVersionMessage =>
      'سيؤدي هذا إلى تجاهل التغييرات المحلية والاحتفاظ بالإصدار البعيد. لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get keepRemote => 'احتفظ بالنسخة البعيدة';

  @override
  String get discardChangesTitle => 'التخلص من التغييرات؟';

  @override
  String get discardChangesMessage =>
      'سيؤدي هذا إلى إزالة التغييرات المحلية دون مزامنتها. لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get gistMustHaveOneFile =>
      'يجب أن يحتوي الـ Gist على ملف واحد على الأقل';

  @override
  String errorCreatingGist(String error) {
    return 'حدث خطأ أثناء إنشاء Gist: $error';
  }

  @override
  String get gistSavedOffline =>
      'تم حفظ الـ Gist دون اتصال. سيتم المزامنة عند الاتصال.';

  @override
  String errorSavingGist(String error) {
    return 'حدث خطأ أثناء حفظ الـ Gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'تم حفظ التغييرات دون اتصال. سيتم المزامنة عند الاتصال.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'هل تريد حذف \"$fileName\" فقط أم المستند بأكمله؟';
  }

  @override
  String errorDeleting(String error) {
    return 'خطأ في الحذف: $error';
  }

  @override
  String get addFile => 'إضافة ملف';

  @override
  String get removeFile => 'إزالة ملف';

  @override
  String newFileNumbered(int number) {
    return 'ملف جديد $number';
  }

  @override
  String get newGist => 'مستودع جديد';

  @override
  String get filenameHint => 'مثال: script.py';

  @override
  String get offlineNoCachedGists =>
      'أنت غير متصل بالإنترنت. لا توجد ملفات Gist مخزنة مؤقتا.';

  @override
  String get syncStatus => 'حالة المزامنة';

  @override
  String get syncing => 'مزامنة...';

  @override
  String pendingCountLabel(int count) {
    return 'معلق: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'تعارضات: $count';
  }

  @override
  String get operationsLabel => 'العمليات:';

  @override
  String get resolveConflicts => 'حل التعارضات';

  @override
  String get willSyncWhenRestored =>
      'سيتم المزامنة تلقائيا عند استعادة الاتصال';

  @override
  String get syncNow => 'مزامنة الآن';

  @override
  String get selectLanguage => 'اختر اللغة';

  @override
  String get offlineChangesWillSync =>
      'أنت غير متصل. سيتم مزامنة التغييرات عند الاتصال.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count قيد الانتظار',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'حدث خطأ في تحميل الـ Gists العامة: $error';
  }

  @override
  String errorSearching(String error) {
    return 'خطأ في البحث: $error';
  }

  @override
  String byAuthor(String author) {
    return 'بواسطة $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'خطأ في تسجيل الدخول: $error';
  }

  @override
  String get connectingToGitHub => 'جار الاتصال بـ GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'فشل تعيين التشغيل عند تسجيل الدخول: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'خطأ في إنهاء التطبيق: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'حدث خطأ أثناء تسجيل الخروج: $error';
  }

  @override
  String get tabSize => 'حجم المسافة البادئة';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مسافة',
      one: 'مسافة واحدة',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'سيدخل مفتاح الجدولة $count مسافات',
      one: 'سيدخل مفتاح الجدولة مسافة واحدة',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'فشل تحميل ملف تعريف المستخدم';

  @override
  String get followers => 'متابعون';

  @override
  String get following => 'يتابع';

  @override
  String get repos => 'مستودعات';

  @override
  String get gists => 'مقتطفات';

  @override
  String joinedDate(String date) {
    return 'انضم في $date';
  }

  @override
  String viewUserGists(String username) {
    return 'عرض Gists الخاص بـ $username';
  }

  @override
  String get openLink => 'فتح الرابط';

  @override
  String openLinkConfirmation(String url) {
    return 'هل تريد فتح هذا الرابط في المتصفح؟\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'فشل فتح الرابط';

  @override
  String get noFollowersFound => 'لم يتم العثور على متابعين';

  @override
  String get noFollowingFound => 'لا يوجد متابعين';

  @override
  String errorLoadingFollowers(String error) {
    return 'حدث خطأ في تحميل المتابعين: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'حدث خطأ في تحميل المتابعين: $error';
  }

  @override
  String get deleteIsPermanent => 'هذا الإجراء دائم ولا يمكن التراجع عنه.';

  @override
  String typeToConfirm(String text) {
    return 'اكتب \"$text\" للتأكيد:';
  }

  @override
  String typeExactly(String text) {
    return 'الرجاء كتابة \"$text\" تماما كما هو';
  }

  @override
  String fileDeleted(String fileName) {
    return 'تم حذف الملف \"$fileName\"';
  }

  @override
  String errorDeletingFile(String error) {
    return 'حدث خطأ أثناء حذف الملف: $error';
  }

  @override
  String get gistDeleted => 'تم حذف Gist';

  @override
  String errorDeletingGist(String error) {
    return 'حدث خطأ أثناء حذف الـ Gist: $error';
  }

  @override
  String get noFilesAvailable => 'لا توجد ملفات';

  @override
  String get fileDataNotAvailable => 'بيانات الملف غير متوفرة';

  @override
  String get copied => 'تم النسخ!';

  @override
  String get copyToClipboard => 'نسخ إلى الحافظة';

  @override
  String get contentCopiedToClipboard => 'تم نسخ المحتوى إلى الحافظة';

  @override
  String get copyGistContentToClipboard => 'نسخ محتوى Gist إلى الحافظة';

  @override
  String get internetNotAvailable => 'لا يتوفر اتصال بالإنترنت';

  @override
  String get editGist => 'تعديل Gist';
}
