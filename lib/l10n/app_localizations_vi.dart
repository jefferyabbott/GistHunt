// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get signIn => 'Đăng nhập bằng GitHub';

  @override
  String get search => 'Tìm kiếm';

  @override
  String get allLanguages => 'Tất cả ngôn ngữ';

  @override
  String get darkMode => 'CHẾ ĐỘ TỐI';

  @override
  String get theme => 'Chủ đề';

  @override
  String get lightTheme => 'Sáng';

  @override
  String get darkTheme => 'Tối';

  @override
  String get systemTheme => 'Hệ thống';

  @override
  String get fontSize => 'Cỡ chữ';

  @override
  String get logout => 'Đăng xuất';

  @override
  String get account => 'Tài khoản';

  @override
  String get system => 'Hệ thống';

  @override
  String get display => 'Hiển thị';

  @override
  String get deleteGist => 'Xóa Gist';

  @override
  String get confirmDelete => 'Bạn có chắc chắn muốn xóa gist này?';

  @override
  String get permanent => 'Hành động này không thể hoàn tác.';

  @override
  String get cancel => 'Hủy';

  @override
  String get delete => 'Xóa';

  @override
  String get filename => 'Tên tệp';

  @override
  String get description => 'Mô tả (tùy chọn)';

  @override
  String get public => 'Công khai';

  @override
  String get created => 'đã tạo:';

  @override
  String get lastUpdated => 'Cập nhật lần cuối:';

  @override
  String get loadingGists => 'Đang tải Gists...';

  @override
  String get noGistsYet => 'Chưa có gists nào';

  @override
  String get noMatchingGists => 'Không tìm thấy gists phù hợp';

  @override
  String get createFirstGist =>
      'Tạo gist đầu tiên của bạn bằng cách nhấn nút + bên dưới';

  @override
  String get adjustSearch => 'Hãy thử điều chỉnh tìm kiếm hoặc bộ lọc ngôn ngữ';

  @override
  String get scrollToTop => 'Cuộn lên đầu';

  @override
  String get createNewGist => 'Tạo gist mới';

  @override
  String get launchAtLogin => 'Khởi chạy khi Đăng nhập';

  @override
  String get quit => 'Thoát';

  @override
  String get star => 'Đánh dấu sao';

  @override
  String get unstar => 'Bỏ đánh dấu sao';

  @override
  String get starred => 'Đã đánh dấu sao';

  @override
  String get fork => 'Fork';

  @override
  String get forked => 'Đã fork';

  @override
  String get forkSuccess => 'Fork gist thành công!';

  @override
  String get publicGists => 'Gists công khai';

  @override
  String get browsePublicGists => 'Duyệt Gists công khai';

  @override
  String get errorStarring => 'Lỗi khi đánh dấu sao gist';

  @override
  String get errorForking => 'Lỗi khi fork gist';

  @override
  String get loadMore => 'Tải thêm';

  @override
  String get noPublicGists => 'Không tìm thấy gists công khai';

  @override
  String get starredGists => 'Gists đã đánh dấu sao';

  @override
  String get myGists => 'Gists của tôi';

  @override
  String get share => 'Chia sẻ';

  @override
  String get shareGist => 'Chia sẻ Gist';

  @override
  String get exportFile => 'Xuất dưới dạng tệp';

  @override
  String get generateQRCode => 'Tạo mã QR';

  @override
  String get copyEmbedCode => 'Sao chép mã nhúng';

  @override
  String get copyGistUrl => 'Sao chép URL Gist';

  @override
  String get moreActions => 'Hành động khác';

  @override
  String get exportSuccess => 'Xuất gist thành công';

  @override
  String get exportError => 'Lỗi khi xuất gist';

  @override
  String get embedCodeCopied => 'Mã nhúng đã được sao chép vào clipboard';

  @override
  String get urlCopied => 'URL đã được sao chép vào clipboard';

  @override
  String get qrCodeTitle => 'Mã QR';

  @override
  String get scanToOpen => 'Quét để mở gist';

  @override
  String get searchPublicGistsHint => 'Tìm kiếm hoặc @tênngườidùng';

  @override
  String get close => 'Đóng';

  @override
  String get clear => 'Xóa';

  @override
  String get tryDifferentSearch => 'Thử từ khóa tìm kiếm khác';

  @override
  String showingGistsFromUser(int count) {
    return 'Hiển thị $count gists từ người dùng';
  }

  @override
  String foundInLoadedGists(int count) {
    return 'Tìm thấy $count trong các gists đã tải. Sử dụng @tênngườidùng để lấy tất cả gists từ người dùng.';
  }

  @override
  String get raw => 'Thô';

  @override
  String get preview => 'Xem trước';

  @override
  String get sortBy => 'Sắp xếp theo';

  @override
  String get sortDateNewest => 'Ngày (Mới nhất)';

  @override
  String get sortDateOldest => 'Ngày (Cũ nhất)';

  @override
  String get sortNameAsc => 'Tên (A-Z)';

  @override
  String get sortNameDesc => 'Tên (Z-A)';

  @override
  String get sortLanguage => 'Ngôn ngữ';

  @override
  String get sortStars => 'Sao';

  @override
  String get pin => 'Ghim';

  @override
  String get unpin => 'Bỏ ghim';

  @override
  String get pinned => 'Đã ghim';

  @override
  String get archive => 'Lưu trữ';

  @override
  String get unarchive => 'Hủy lưu trữ';

  @override
  String get archived => 'Đã lưu trữ';

  @override
  String get showArchived => 'Hiển thị đã lưu trữ';

  @override
  String get hideArchived => 'Ẩn đã lưu trữ';

  @override
  String get gistPinned => 'Gist đã được ghim';

  @override
  String get gistUnpinned => 'Gist đã được bỏ ghim';

  @override
  String get gistArchived => 'Gist đã được lưu trữ';

  @override
  String get gistUnarchived => 'Gist đã được hủy lưu trữ';

  @override
  String get organize => 'Sắp xếp';

  @override
  String get exportCurrentFile => 'Xuất tệp đã chọn';

  @override
  String get exportAllFiles => 'Xuất tất cả tệp';

  @override
  String get shareCurrentFile => 'Chia sẻ tệp đã chọn';

  @override
  String get shareAllFiles => 'Chia sẻ tất cả tệp';

  @override
  String get deleteSelectedFile => 'Xóa tệp đã chọn';

  @override
  String get deleteAllFiles => 'Xóa toàn bộ Gist';

  @override
  String get exportAllSuccess => 'Tất cả tệp đã được xuất đến';

  @override
  String filesExported(int count) {
    return '$count tệp đã được xuất';
  }

  @override
  String get openInFinderAfterExport => 'Mở Finder sau khi xuất tệp';

  @override
  String get ok => 'OK';

  @override
  String get open => 'Mở';

  @override
  String get discard => 'Hủy bỏ';

  @override
  String errorWithDetails(String error) {
    return 'Lỗi: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Không thể tải nội dung: $statusCode';
  }

  @override
  String get noDescription => 'Không có mô tả';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tệp khác',
      one: '1 tệp khác',
    );
    return '... và $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Đã tạo: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Đã cập nhật: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Cập nhật lần cuối: $time';
  }

  @override
  String get deleteFile => 'Xóa tệp';

  @override
  String deleteFileMessage(String fileName) {
    return 'Bạn sắp xóa vĩnh viễn tệp \"$fileName\".';
  }

  @override
  String get deleteGistMessage => 'Bạn sắp xóa vĩnh viễn gist này.';

  @override
  String get deleteEntireGistMessage =>
      'Bạn sắp xóa vĩnh viễn toàn bộ gist này và tất cả các tệp của nó.';

  @override
  String get conflictResolution => 'Giải quyết xung đột';

  @override
  String get allConflictsResolved => 'Đã giải quyết tất cả xung đột!';

  @override
  String conflictProgress(int current, int total) {
    return 'Xung đột $current trên $total';
  }

  @override
  String get previousConflict => 'Xung đột trước';

  @override
  String get nextConflict => 'Xung đột tiếp theo';

  @override
  String get conflictExplanation =>
      'Gist này đã được chỉnh sửa cả cục bộ và từ xa. Chọn phiên bản bạn muốn giữ.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Phiên bản cục bộ của bạn';

  @override
  String get remoteVersionGitHub => 'Phiên bản từ xa (GitHub)';

  @override
  String get chooseResolution => 'Chọn cách giải quyết:';

  @override
  String get keepMyLocalChanges => 'Giữ Thay Đổi Của Tôi';

  @override
  String get keepMyLocalChangesDescription =>
      'Ghi đè phiên bản từ xa bằng thay đổi cục bộ của bạn';

  @override
  String get keepRemoteVersion => 'Giữ phiên bản từ xa';

  @override
  String get keepRemoteVersionDescription =>
      'Hủy bỏ thay đổi cục bộ và sử dụng phiên bản GitHub';

  @override
  String get discardLocalChanges => 'Hủy bỏ thay đổi cục bộ';

  @override
  String get discardLocalChangesDescription =>
      'Loại bỏ thao tác này khỏi hàng đợi đồng bộ hóa';

  @override
  String get modifiedUnknown => 'Đã sửa đổi: không xác định';

  @override
  String modifiedAt(String time) {
    return 'Đã sửa đổi: $time';
  }

  @override
  String get filesLabel => 'Tệp:';

  @override
  String get fileDeletedLabel => 'đã xóa';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ký tự',
      one: '1 ký tự',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Vừa xong';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count phút trước',
      one: '1 phút trước',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giờ trước',
      one: '1 giờ trước',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ngày trước',
      one: '1 ngày trước',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Giữ thay đổi cục bộ?';

  @override
  String get keepLocalChangesMessage =>
      'Hành động này sẽ ghi đè phiên bản từ xa bằng thay đổi cục bộ của bạn. Không thể hoàn tác.';

  @override
  String get keepLocal => 'Giữ cục bộ';

  @override
  String get keepRemoteVersionTitle => 'Giữ phiên bản từ xa?';

  @override
  String get keepRemoteVersionMessage =>
      'Hành động này sẽ xóa các thay đổi cục bộ của bạn và giữ phiên bản từ xa. Không thể hoàn tác hành động này.';

  @override
  String get keepRemote => 'Giữ Bản Từ Xa';

  @override
  String get discardChangesTitle => 'Huỷ thay đổi?';

  @override
  String get discardChangesMessage =>
      'Hành động này sẽ xóa các thay đổi cục bộ mà không đồng bộ hóa chúng. Không thể hoàn tác hành động này.';

  @override
  String get gistMustHaveOneFile => 'Gist phải có ít nhất một tệp';

  @override
  String errorCreatingGist(String error) {
    return 'Lỗi khi tạo Gist: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist đã lưu ngoại tuyến. Sẽ đồng bộ khi kết nối.';

  @override
  String errorSavingGist(String error) {
    return 'Lỗi khi lưu Gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'Thay đổi đã lưu ngoại tuyến. Sẽ đồng bộ khi kết nối.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Bạn có muốn chỉ xóa \"$fileName\" hay toàn bộ gist?';
  }

  @override
  String errorDeleting(String error) {
    return 'Lỗi khi xóa: $error';
  }

  @override
  String get addFile => 'Thêm tệp';

  @override
  String get removeFile => 'Xóa tệp';

  @override
  String newFileNumbered(int number) {
    return 'Tệp mới $number';
  }

  @override
  String get newGist => 'Gist Mới';

  @override
  String get filenameHint => 'ví dụ: script.py';

  @override
  String get offlineNoCachedGists =>
      'Bạn đang ngoại tuyến. Không có Gist đã lưu nào khả dụng.';

  @override
  String get syncStatus => 'Trạng thái đồng bộ hóa';

  @override
  String get syncing => 'Đang đồng bộ...';

  @override
  String pendingCountLabel(int count) {
    return 'Đang chờ: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Xung đột: $count';
  }

  @override
  String get operationsLabel => 'Các thao tác:';

  @override
  String get resolveConflicts => 'Giải quyết xung đột';

  @override
  String get willSyncWhenRestored =>
      'Sẽ tự động đồng bộ khi kết nối được khôi phục';

  @override
  String get syncNow => 'Đồng bộ ngay';

  @override
  String get selectLanguage => 'Chọn ngôn ngữ';

  @override
  String get offlineChangesWillSync =>
      'Bạn đang ngoại tuyến. Dữ liệu sẽ đồng bộ khi kết nối lại.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count đang chờ',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Không thể tải gists công khai: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Lỗi khi tìm kiếm: $error';
  }

  @override
  String byAuthor(String author) {
    return 'của $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Lỗi đăng nhập: $error';
  }

  @override
  String get connectingToGitHub => 'Đang kết nối tới GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Lỗi thiết lập khởi động cùng Windows: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Lỗi khi đóng ứng dụng: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Lỗi khi đăng xuất: $error';
  }

  @override
  String get tabSize => 'Kích thước Tab';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count khoảng trắng',
      one: '1 khoảng trắng',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count khoảng trắng',
      one: '1 khoảng trắng',
    );
    return 'Phím Tab sẽ chèn $_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'Không thể tải thông tin người dùng';

  @override
  String get followers => 'Người theo dõi';

  @override
  String get following => 'Đang theo dõi';

  @override
  String get repos => 'Kho lưu trữ';

  @override
  String get gists => 'Gists';

  @override
  String joinedDate(String date) {
    return 'Tham gia $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Xem Gists của $username';
  }

  @override
  String get openLink => 'Mở Liên kết';

  @override
  String openLinkConfirmation(String url) {
    return 'Bạn có muốn mở liên kết này trong trình duyệt không?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Không thể mở liên kết';

  @override
  String get noFollowersFound => 'Chưa có người theo dõi';

  @override
  String get noFollowingFound => 'Chưa có ai được theo dõi';

  @override
  String errorLoadingFollowers(String error) {
    return 'Không thể tải danh sách người theo dõi: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Không thể tải danh sách người theo dõi: $error';
  }

  @override
  String get deleteIsPermanent =>
      'Hành động này là vĩnh viễn và không thể hoàn tác.';

  @override
  String typeToConfirm(String text) {
    return 'Nhập \"$text\" để xác nhận:';
  }

  @override
  String typeExactly(String text) {
    return 'Vui lòng nhập chính xác \"$text\"';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Tệp \"$fileName\" đã xóa';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Lỗi khi xóa tệp: $error';
  }

  @override
  String get gistDeleted => 'Gist đã xóa';

  @override
  String errorDeletingGist(String error) {
    return 'Lỗi khi xóa Gist: $error';
  }

  @override
  String get noFilesAvailable => 'Không có tệp nào khả dụng';

  @override
  String get fileDataNotAvailable => 'Dữ liệu tệp không khả dụng';

  @override
  String get copied => 'Đã sao chép!';

  @override
  String get copyToClipboard => 'Sao chép vào khay nhớ tạm';

  @override
  String get contentCopiedToClipboard =>
      'Nội dung đã được sao chép vào khay nhớ tạm';

  @override
  String get copyGistContentToClipboard =>
      'Sao chép nội dung Gist ra bảng nhớ tạm';

  @override
  String get internetNotAvailable => 'Không có kết nối internet';

  @override
  String get editGist => 'Chỉnh sửa gist';
}
