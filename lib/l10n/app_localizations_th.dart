// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get signIn => 'เข้าสู่ระบบด้วย GitHub';

  @override
  String get search => 'ค้นหา';

  @override
  String get allLanguages => 'ภาษาทั้งหมด';

  @override
  String get darkMode => 'โหมดมืด';

  @override
  String get theme => 'ธีม';

  @override
  String get lightTheme => 'สว่าง';

  @override
  String get darkTheme => 'มืด';

  @override
  String get systemTheme => 'ระบบ';

  @override
  String get fontSize => 'ขนาดตัวอักษร';

  @override
  String get logout => 'ออกจากระบบ';

  @override
  String get account => 'บัญชี';

  @override
  String get system => 'ระบบ';

  @override
  String get display => 'การแสดงผล';

  @override
  String get deleteGist => 'ลบ Gist';

  @override
  String get confirmDelete => 'คุณแน่ใจหรือไม่ว่าต้องการลบ Gist นี้?';

  @override
  String get permanent => 'การกระทำนี้ไม่สามารถยกเลิกได้';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get delete => 'ลบ';

  @override
  String get filename => 'ชื่อไฟล์';

  @override
  String get description => 'คำอธิบาย (ไม่บังคับ)';

  @override
  String get public => 'สาธารณะ';

  @override
  String get created => 'สร้างเมื่อ:';

  @override
  String get lastUpdated => 'อัปเดตล่าสุด:';

  @override
  String get loadingGists => 'กำลังโหลด Gist...';

  @override
  String get noGistsYet => 'ยังไม่มี Gist';

  @override
  String get noMatchingGists => 'ไม่พบ Gist ที่ตรงกัน';

  @override
  String get createFirstGist => 'สร้าง Gist แรกของคุณโดยแตะปุ่ม + ด้านล่าง';

  @override
  String get adjustSearch => 'ลองปรับการค้นหาหรือตัวกรองภาษา';

  @override
  String get scrollToTop => 'เลื่อนขึ้นด้านบน';

  @override
  String get createNewGist => 'สร้าง Gist ใหม่';

  @override
  String get launchAtLogin => 'เปิดเมื่อเข้าสู่ระบบ';

  @override
  String get quit => 'ออก';

  @override
  String get star => 'ติดดาว';

  @override
  String get unstar => 'เลิกติดดาว';

  @override
  String get starred => 'ติดดาวแล้ว';

  @override
  String get fork => 'แยก';

  @override
  String get forked => 'แยกแล้ว';

  @override
  String get forkSuccess => 'แยก Gist สำเร็จ!';

  @override
  String get publicGists => 'Gist สาธารณะ';

  @override
  String get browsePublicGists => 'เรียกดู Gist สาธารณะ';

  @override
  String get errorStarring => 'เกิดข้อผิดพลาดในการติดดาว Gist';

  @override
  String get errorForking => 'เกิดข้อผิดพลาดในการแยก Gist';

  @override
  String get loadMore => 'โหลดเพิ่มเติม';

  @override
  String get noPublicGists => 'ไม่พบ Gist สาธารณะ';

  @override
  String get starredGists => 'Gist ที่ติดดาว';

  @override
  String get myGists => 'Gist ของฉัน';

  @override
  String get share => 'แชร์';

  @override
  String get shareGist => 'แชร์ Gist';

  @override
  String get exportFile => 'ส่งออกเป็นไฟล์';

  @override
  String get generateQRCode => 'สร้างคิวอาร์โค้ด';

  @override
  String get copyEmbedCode => 'คัดลอกโค้ดฝัง';

  @override
  String get copyGistUrl => 'คัดลอก URL ของ Gist';

  @override
  String get moreActions => 'การกระทำเพิ่มเติม';

  @override
  String get exportSuccess => 'ส่งออก Gist สำเร็จ';

  @override
  String get exportError => 'เกิดข้อผิดพลาดในการส่งออก Gist';

  @override
  String get embedCodeCopied => 'คัดลอกโค้ดฝังไปยังคลิปบอร์ดแล้ว';

  @override
  String get urlCopied => 'คัดลอก URL ไปยังคลิปบอร์ดแล้ว';

  @override
  String get qrCodeTitle => 'คิวอาร์โค้ด';

  @override
  String get scanToOpen => 'สแกนเพื่อเปิด Gist';

  @override
  String get searchPublicGistsHint => 'ค้นหาหรือ @ชื่อผู้ใช้';

  @override
  String get close => 'ปิด';

  @override
  String get clear => 'ล้าง';

  @override
  String get tryDifferentSearch => 'ลองคำค้นหาอื่น';

  @override
  String showingGistsFromUser(int count) {
    return 'แสดง $count Gist จากผู้ใช้';
  }

  @override
  String foundInLoadedGists(int count) {
    return 'พบ $count ใน Gist ที่โหลดแล้ว ใช้ @ชื่อผู้ใช้เพื่อดึง Gist ทั้งหมดจากผู้ใช้';
  }

  @override
  String get raw => 'ดิบ';

  @override
  String get preview => 'แสดงตัวอย่าง';

  @override
  String get sortBy => 'เรียงตาม';

  @override
  String get sortDateNewest => 'วันที่ (ใหม่สุด)';

  @override
  String get sortDateOldest => 'วันที่ (เก่าสุด)';

  @override
  String get sortNameAsc => 'ชื่อ (A-Z)';

  @override
  String get sortNameDesc => 'ชื่อ (Z-A)';

  @override
  String get sortLanguage => 'ภาษา';

  @override
  String get sortStars => 'ดาว';

  @override
  String get pin => 'ปักหมุด';

  @override
  String get unpin => 'เลิกปักหมุด';

  @override
  String get pinned => 'ปักหมุดแล้ว';

  @override
  String get archive => 'เก็บถาวร';

  @override
  String get unarchive => 'เลิกเก็บถาวร';

  @override
  String get archived => 'เก็บถาวรแล้ว';

  @override
  String get showArchived => 'แสดงที่เก็บถาวร';

  @override
  String get hideArchived => 'ซ่อนที่เก็บถาวร';

  @override
  String get gistPinned => 'ปักหมุด Gist แล้ว';

  @override
  String get gistUnpinned => 'เลิกปักหมุด Gist แล้ว';

  @override
  String get gistArchived => 'เก็บถาวร Gist แล้ว';

  @override
  String get gistUnarchived => 'เลิกเก็บถาวร Gist แล้ว';

  @override
  String get organize => 'จัดระเบียบ';

  @override
  String get exportCurrentFile => 'ส่งออกไฟล์ที่เลือก';

  @override
  String get exportAllFiles => 'ส่งออกไฟล์ทั้งหมด';

  @override
  String get shareCurrentFile => 'แชร์ไฟล์ที่เลือก';

  @override
  String get shareAllFiles => 'แชร์ไฟล์ทั้งหมด';

  @override
  String get deleteSelectedFile => 'ลบไฟล์ที่เลือก';

  @override
  String get deleteAllFiles => 'ลบ Gist ทั้งหมด';

  @override
  String get exportAllSuccess => 'ส่งออกไฟล์ทั้งหมดไปยัง';

  @override
  String filesExported(int count) {
    return 'ส่งออก $count ไฟล์แล้ว';
  }

  @override
  String get openInFinderAfterExport => 'เปิด Finder หลังจากส่งออกไฟล์';

  @override
  String get ok => 'ตกลง';

  @override
  String get open => 'เปิด';

  @override
  String get discard => 'ทง';

  @override
  String errorWithDetails(String error) {
    return 'เกิดข้อผิดพลาด: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'เกิดข้อผิดพลาดในการโหลดเนื้อหา: $statusCode';
  }

  @override
  String get noDescription => 'ไม่มีคำอธิบาย';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ไฟล์อีก',
      one: 'ไฟล์อีก 1 ไฟล์',
    );
    return '... และ $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'สร้างเมื่อ: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'อปเดตล่าสุด: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'อปเดตล่าสุด: $time';
  }

  @override
  String get deleteFile => 'ลบไฟล์';

  @override
  String deleteFileMessage(String fileName) {
    return 'คุณกำลังจะลบไฟล์ \"$fileName\" อย่างถาวร';
  }

  @override
  String get deleteGistMessage => 'คุณกำลังจะลบ Gist นี้อย่างถาวร';

  @override
  String get deleteEntireGistMessage =>
      'คุณกำลังจะลบ Gist ทั้งหมดนี้และไฟล์ทั้งหมดอย่างถาวร';

  @override
  String get conflictResolution => 'การแก้ไขข้อขดแยง';

  @override
  String get allConflictsResolved => 'แก้ไขข้อขดแยงทั้งหมดแล้ว!';

  @override
  String conflictProgress(int current, int total) {
    return 'ความขดแยงที่ $current จาก $total';
  }

  @override
  String get previousConflict => 'ความขดแยงก่อนหน้า';

  @override
  String get nextConflict => 'ความขดแยงถดไป';

  @override
  String get conflictExplanation =>
      'มีการแก้ไขไฟล์นี้ทั้งในเครื่องและจากระยะไกล เลือกเวอร์ชันที่คุณต้องการเก็บไว้';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'เวอร์ชันของคุณ';

  @override
  String get remoteVersionGitHub => 'เวอร์ชันระยะไกล (GitHub)';

  @override
  String get chooseResolution => 'เลือกวิธีแก้ไขข้อขดแยง:';

  @override
  String get keepMyLocalChanges => 'เก็บการเปลี่ยนแปลงของฉันไว้';

  @override
  String get keepMyLocalChangesDescription =>
      'บันทกการเปลี่ยนแปลงของคุณและแทนที่เวอร์ชันบนเซร์ฟเวอร์';

  @override
  String get keepRemoteVersion => 'เก็บเวอร์ชันระยะไกล';

  @override
  String get keepRemoteVersionDescription =>
      'ทงการเปลี่ยนแปลงในเครื่องของคุณและใช้เวอร์ชันของ GitHub';

  @override
  String get discardLocalChanges => 'ทงการเปลี่ยนแปลงในเครื่อง';

  @override
  String get discardLocalChangesDescription =>
      'ลบการดำเนินการนี้ออกจากควการซงค์';

  @override
  String get modifiedUnknown => 'แก้ไข: ไม่ทราบวันที่';

  @override
  String modifiedAt(String time) {
    return 'แก้ไขล่าสุด: $time';
  }

  @override
  String get filesLabel => 'ไฟล์:';

  @override
  String get fileDeletedLabel => 'ลบไปแล้ว';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ตัวอกษร',
      one: '1 ตัวอกษร',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'เมื่อก';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count นาทีที่แล้ว',
      one: '1 นาทีที่แล้ว',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ชั่วโมงที่แล้ว',
      one: '1 ชั่วโมงที่แล้ว',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count วันที่ผ่านมา',
      one: '1 วันที่ผ่านมา',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'เก็บการเปลี่ยนแปลงในเครื่อง?';

  @override
  String get keepLocalChangesMessage =>
      'การเปลี่ยนแปลงในเครื่องของคุณจะถูกบันทกลงในเวอร์ชันออนไลน์ ทาการนี้แล้วจะไม่สามารถยอนกลับได้';

  @override
  String get keepLocal => 'เก็บไว้ในเครื่อง';

  @override
  String get keepRemoteVersionTitle => 'เก็บเวอร์ชันระยะไกลไว้?';

  @override
  String get keepRemoteVersionMessage =>
      'การทำเช่นนี้จะทงการเปลี่ยนแปลงในเครื่องของคุณและเก็บเวอร์ชันจากระยะไกล การดำเนินการนี้ไม่สามารถยกเลกได้';

  @override
  String get keepRemote => 'เก็บรีโมทไว้';

  @override
  String get discardChangesTitle => 'ทงการเปลี่ยนแปลง?';

  @override
  String get discardChangesMessage =>
      'การเปลี่ยนแปลงในเครื่องของคุณจะถูกลบโดยไม่ทำการซงค์ และไม่สามารถยอนกลับได้';

  @override
  String get gistMustHaveOneFile => 'Gist ต้องมีไฟล์อย่างน้อยหนึ่งไฟล์';

  @override
  String errorCreatingGist(String error) {
    return 'เกิดข้อผิดพลาดในการสร้าง Gist: $error';
  }

  @override
  String get gistSavedOffline => 'บันทก Gist แบบออฟไลน์ จะซงค์เมื่อเชื่อมต่อ';

  @override
  String errorSavingGist(String error) {
    return 'เกิดข้อผิดพลาดในการบันทก Gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'บันทกการเปลี่ยนแปลงแบบออฟไลน์ จะซงค์เมื่อเชื่อมต่อ';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'ต้องการลบเฉพาะ \"$fileName\" หรือลบทั้ง Gist เลย?';
  }

  @override
  String errorDeleting(String error) {
    return 'ลบไม่สำเร็จ: $error';
  }

  @override
  String get addFile => 'เพิ่มไฟล์';

  @override
  String get removeFile => 'ลบไฟล์';

  @override
  String newFileNumbered(int number) {
    return 'ไฟล์ใหม่ $number';
  }

  @override
  String get newGist => 'Gist ใหม่';

  @override
  String get filenameHint => 'เช่น script.py';

  @override
  String get offlineNoCachedGists => 'คุณออฟไลน์ ไม่มี Gist ที่บันทกไว้';

  @override
  String get syncStatus => 'สถานะการซงค์';

  @override
  String get syncing => 'กำลังซงค์…';

  @override
  String pendingCountLabel(int count) {
    return 'กำลังรอ: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'ความขดแยง: $count';
  }

  @override
  String get operationsLabel => 'การดำเนินการ:';

  @override
  String get resolveConflicts => 'แก้ไขข้อขดแยง';

  @override
  String get willSyncWhenRestored => 'จะซงค์โดยอัตโนมติเมื่อเชื่อมต่ออีกครั้ง';

  @override
  String get syncNow => 'ซงค์เลย';

  @override
  String get selectLanguage => 'เลือกภาษา';

  @override
  String get offlineChangesWillSync =>
      'คุณออฟไลน์ การเปลี่ยนแปลงจะซงค์เมื่อเชื่อมต่อ';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count รายการรอ',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'เกิดข้อผิดพลาดในการโหลด Gist สาธารณะ: $error';
  }

  @override
  String errorSearching(String error) {
    return 'เกิดข้อผิดพลาดในการค้นหา: $error';
  }

  @override
  String byAuthor(String author) {
    return 'โดย $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'เกิดข้อผิดพลาดในการเข้าสู่ระบบ: $error';
  }

  @override
  String get connectingToGitHub => 'กำลังเชื่อมต่อกับ GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'เกิดข้อผิดพลาดในการตั้งค่าเปิดโปรแกรมเมื่อเข้าสู่ระบบ: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'เกิดข้อผิดพลาดในการปิดแอป: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'เกิดข้อผิดพลาดในการออกจากระบบ: $error';
  }

  @override
  String get tabSize => 'ขนาดแทบ';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ช่องว่าง',
      one: '1 ช่องว่าง',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ปม Tab จะใส่ช่องว่าง $count ช่อง',
      one: 'ปม Tab จะใส่ช่องว่าง 1 ช่อง',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'เกิดข้อผิดพลาดในการโหลดโปรไฟล์ผู้ใช้';

  @override
  String get followers => 'ผู้ติดตาม';

  @override
  String get following => 'ผู้ติดตาม';

  @override
  String get repos => 'ที่เก็บ';

  @override
  String get gists => 'Gist';

  @override
  String joinedDate(String date) {
    return 'เข้ารวมเมื่อ $date';
  }

  @override
  String viewUserGists(String username) {
    return 'ดู Gist ของ $username';
  }

  @override
  String get openLink => 'เปิดลิงก';

  @override
  String openLinkConfirmation(String url) {
    return 'ต้องการเปิดลิงกนี้ในเบราว์เซอร์หรือไม่?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'ไม่สามารถเปิดลิงกได้';

  @override
  String get noFollowersFound => 'ไม่พบผู้ติดตาม';

  @override
  String get noFollowingFound => 'ไม่พบผู้ที่ติดตาม';

  @override
  String errorLoadingFollowers(String error) {
    return 'เกิดข้อผิดพลาดในการโหลดผู้ติดตาม: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'เกิดข้อผิดพลาดในการโหลดผู้ติดตาม: $error';
  }

  @override
  String get deleteIsPermanent => 'การดำเนินการนี้ถาวรและไม่สามารถยอนกลับได้';

  @override
  String typeToConfirm(String text) {
    return 'พิมพ์ \"$text\" เพื่อยืนยน:';
  }

  @override
  String typeExactly(String text) {
    return 'โปรดพิมพ์ \"$text\" ให้ตรงตามนี้';
  }

  @override
  String fileDeleted(String fileName) {
    return 'ไฟล์ \"$fileName\" ถูกลบแล้ว';
  }

  @override
  String errorDeletingFile(String error) {
    return 'ไม่สามารถลบไฟล์ได้: $error';
  }

  @override
  String get gistDeleted => 'ลบ Gist แล้ว';

  @override
  String errorDeletingGist(String error) {
    return 'เกิดข้อผิดพลาดในการลบ Gist: $error';
  }

  @override
  String get noFilesAvailable => 'ไม่มีไฟล์';

  @override
  String get fileDataNotAvailable => 'ข้อมูลไฟล์ไม่พร้อมใช้งาน';

  @override
  String get copied => 'คดลอกแล้ว!';

  @override
  String get copyToClipboard => 'คดลอกไปยังคลิปบอร์ด';

  @override
  String get contentCopiedToClipboard => 'คดลอกเนื้อหาไปยังคลิปบอร์ดแล้ว';

  @override
  String get copyGistContentToClipboard => 'คดลอกเนื้อหา Gist ไปยังคลิปบอร์ด';

  @override
  String get internetNotAvailable => 'ไม่มีการเชื่อมต่ออินเทอร์เนต';

  @override
  String get editGist => 'แก้ไข Gist';
}
