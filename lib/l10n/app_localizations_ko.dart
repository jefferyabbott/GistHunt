// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get signIn => 'GitHub로 로그인';

  @override
  String get search => '검색';

  @override
  String get allLanguages => '모든 언어';

  @override
  String get darkMode => '다크 모드';

  @override
  String get theme => '테마';

  @override
  String get lightTheme => '라이트';

  @override
  String get darkTheme => '다크';

  @override
  String get systemTheme => '시스템';

  @override
  String get fontSize => '글꼴 크기';

  @override
  String get logout => '로그아웃';

  @override
  String get account => '계정';

  @override
  String get system => '시스템';

  @override
  String get display => '표시';

  @override
  String get deleteGist => 'Gist 삭제';

  @override
  String get confirmDelete => '이 gist를 삭제하시겠습니까?';

  @override
  String get permanent => '이 작업은 취소할 수 없습니다.';

  @override
  String get cancel => '취소';

  @override
  String get delete => '삭제';

  @override
  String get filename => '파일 이름';

  @override
  String get description => '설명 (선택사항)';

  @override
  String get public => '공개';

  @override
  String get created => '생성됨:';

  @override
  String get lastUpdated => '마지막 업데이트:';

  @override
  String get loadingGists => 'Gists 로딩 중...';

  @override
  String get noGistsYet => '아직 gist가 없습니다';

  @override
  String get noMatchingGists => '일치하는 gist를 찾을 수 없습니다';

  @override
  String get createFirstGist => '아래 + 버튼을 눌러 첫 번째 gist를 만드세요';

  @override
  String get adjustSearch => '검색 또는 언어 필터를 조정해 보세요';

  @override
  String get scrollToTop => '맨 위로 스크롤';

  @override
  String get createNewGist => '새 gist 만들기';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => '종료';

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
  String get sortBy => '정렬 기준으로 정렬하십시오';

  @override
  String get sortDateNewest => '날짜 (최신)';

  @override
  String get sortDateOldest => '날짜 (가장 오래된)';

  @override
  String get sortNameAsc => '이름 (A-Z)';

  @override
  String get sortNameDesc => '이름 (A-Z)';

  @override
  String get sortLanguage => '언어';

  @override
  String get sortStars => '별수대로 정렬';

  @override
  String get pin => '핀';

  @override
  String get unpin => 'Unpin';

  @override
  String get pinned => '핀드됨';

  @override
  String get archive => '아카이브';

  @override
  String get unarchive => 'unarchive \n\n(원래 상태로 되돌리기)';

  @override
  String get archived => 'archived';

  @override
  String get showArchived => 'archived gist을 보여줍니다';

  @override
  String get hideArchived => 'archived gist을 숨기기';

  @override
  String get gistPinned => 'Gist를 고정했습니다';

  @override
  String get gistUnpinned => 'gistUnpinned \n\n( gist 가 언핀되었습니다 )';

  @override
  String get gistArchived => 'Gist가 저장소에 보관되었습니다';

  @override
  String get gistUnarchived => 'gistUnarchived \n\n( gist 가 언아카이브되었습니다.)';

  @override
  String get organize => '조직화';

  @override
  String get exportCurrentFile => '선택한 파일 내보내기';

  @override
  String get exportAllFiles => '전체 파일 내보내기';

  @override
  String get shareCurrentFile => 'Selected File Sharing';

  @override
  String get shareAllFiles => '전체 파일 공유';

  @override
  String get deleteSelectedFile => '선택된 파일 삭제';

  @override
  String get deleteAllFiles => '전체 gist 삭제';

  @override
  String get exportAllSuccess => '모든 파일을 성공적으로 내보냈습니다';

  @override
  String filesExported(int count) {
    return '$count 파일이 내보내졌습니다';
  }

  @override
  String get openInFinderAfterExport => '파일 내보내기 후 폴더 열기';

  @override
  String get ok => '확인';

  @override
  String get open => '열기';

  @override
  String get discard => '취소';

  @override
  String errorWithDetails(String error) {
    return '오류: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return '콘텐츠 로딩 오류: $statusCode';
  }

  @override
  String get noDescription => '설명 없음';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개 더 파일',
      one: '파일 1개 더',
    );
    return '... 그리고 $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return '만든 날짜: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return '업데이트됨: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return '최근 업데이트: $time';
  }

  @override
  String get deleteFile => '파일 삭제';

  @override
  String deleteFileMessage(String fileName) {
    return '파일 \"$fileName\"을 영구적으로 삭제하시겠습니까?';
  }

  @override
  String get deleteGistMessage => '이 Gist를 영구히 삭제하시겠습니까?';

  @override
  String get deleteEntireGistMessage => '이 Gist와 모든 파일을 영구히 삭제합니다. 확인하세요.';

  @override
  String get conflictResolution => '충돌 해결';

  @override
  String get allConflictsResolved => '충돌 해결 완료!';

  @override
  String conflictProgress(int current, int total) {
    return '충돌 $current / $total';
  }

  @override
  String get previousConflict => '이전 충돌';

  @override
  String get nextConflict => '다음 충돌';

  @override
  String get conflictExplanation =>
      '이 Gist는 로컬과 원격에서 모두 수정되었습니다. 유지할 버전을 선택하세요.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => '내 로컬 버전';

  @override
  String get remoteVersionGitHub => 'GitHub 원격 버전';

  @override
  String get chooseResolution => '해결 방법 선택:';

  @override
  String get keepMyLocalChanges => '내 변경 사항 유지';

  @override
  String get keepMyLocalChangesDescription => '로컬 변경 사항으로 원격 버전 덮어쓰기';

  @override
  String get keepRemoteVersion => '원격 버전 유지';

  @override
  String get keepRemoteVersionDescription => '로컬 변경 사항을 버리고 GitHub 버전을 사용합니다';

  @override
  String get discardLocalChanges => '로컬 변경 사항 버리기';

  @override
  String get discardLocalChangesDescription => '동기화 대기열에서 이 작업을 제거합니다';

  @override
  String get modifiedUnknown => '수정 날짜: 알 수 없음';

  @override
  String modifiedAt(String time) {
    return '수정됨: $time';
  }

  @override
  String get filesLabel => '파일:';

  @override
  String get fileDeletedLabel => '삭제됨';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 문자',
      one: '1 문자',
    );
    return '$_temp0';
  }

  @override
  String get justNow => '방금';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count분 전',
      one: '1분 전',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count시간 전',
      one: '1시간 전',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일 전',
      one: '1일 전',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => '로컬 변경 사항 유지?';

  @override
  String get keepLocalChangesMessage =>
      '로컬 변경 사항으로 원격 버전을 덮어씁니다. 이 작업은 되돌릴 수 없습니다.';

  @override
  String get keepLocal => '로컬 변경 사항 유지';

  @override
  String get keepRemoteVersionTitle => '원격 버전 유지?';

  @override
  String get keepRemoteVersionMessage =>
      '로컬 변경 사항을 삭제하고 원격 버전을 유지합니다. 이 작업은 되돌릴 수 없습니다.';

  @override
  String get keepRemote => '원격 버전 유지';

  @override
  String get discardChangesTitle => '변경 사항을 버리시겠습니까?';

  @override
  String get discardChangesMessage =>
      '로컬 변경 사항은 동기화되지 않고 삭제됩니다. 이 작업은 되돌릴 수 없습니다.';

  @override
  String get gistMustHaveOneFile => 'Gist는 최소 한 개의 파일이 있어야 합니다';

  @override
  String errorCreatingGist(String error) {
    return 'Gist 생성 오류: $error';
  }

  @override
  String get gistSavedOffline => 'Gist가 오프라인에 저장되었습니다. 연결되면 동기화됩니다.';

  @override
  String errorSavingGist(String error) {
    return 'Gist 저장 오류: $error';
  }

  @override
  String get changesSavedOffline => '변경 사항이 오프라인에 저장되었습니다. 연결되면 동기화됩니다.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return '\"$fileName\"만 삭제하시겠습니까, 아니면 전체 Gist를 삭제하시겠습니까?';
  }

  @override
  String errorDeleting(String error) {
    return '삭제 오류: $error';
  }

  @override
  String get addFile => '파일 추가';

  @override
  String get removeFile => '파일 제거';

  @override
  String newFileNumbered(int number) {
    return '새 파일 $number';
  }

  @override
  String get newGist => '새 Gist';

  @override
  String get filenameHint => '예: script.py';

  @override
  String get offlineNoCachedGists => '오프라인입니다. 캐시된 Gist가 없습니다.';

  @override
  String get syncStatus => '동기화 상태';

  @override
  String get syncing => '동기화 중...';

  @override
  String pendingCountLabel(int count) {
    return '대기 중: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return '충돌: $count개';
  }

  @override
  String get operationsLabel => '작업:';

  @override
  String get resolveConflicts => '충돌 해결';

  @override
  String get willSyncWhenRestored => '연결이 복원되면 자동으로 동기화됩니다';

  @override
  String get syncNow => '동기화 지금';

  @override
  String get selectLanguage => '언어 선택';

  @override
  String get offlineChangesWillSync => '오프라인 상태입니다. 연결되면 변경 사항이 동기화됩니다.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개 보류 중',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return '공용 Gist 로드 오류: $error';
  }

  @override
  String errorSearching(String error) {
    return '검색 오류: $error';
  }

  @override
  String byAuthor(String author) {
    return '$author님 작성';
  }

  @override
  String errorSigningIn(String error) {
    return '로그인 오류: $error';
  }

  @override
  String get connectingToGitHub => 'GitHub에 연결 중';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return '로그인 시 자동 시작 설정 오류: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return '앱 종료 오류: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return '로그아웃 실패: $error';
  }

  @override
  String get tabSize => '탭 크기';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count칸',
      one: '1칸',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tab 키는 $count개의 공백을 삽입합니다',
      one: 'Tab 키는 공백 1개를 삽입합니다',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile => '사용자 프로필 로드 오류';

  @override
  String get followers => '팔로워';

  @override
  String get following => '팔로잉';

  @override
  String get repos => '저장소';

  @override
  String get gists => '깃';

  @override
  String joinedDate(String date) {
    return '가입일: $date';
  }

  @override
  String viewUserGists(String username) {
    return '$username님의 Gist 보기';
  }

  @override
  String get openLink => '링크 열기';

  @override
  String openLinkConfirmation(String url) {
    return '이 링크를 브라우저에서 열시겠습니까?\n\n$url';
  }

  @override
  String get couldNotOpenLink => '링크를 열 수 없습니다';

  @override
  String get noFollowersFound => '팔로워가 없습니다';

  @override
  String get noFollowingFound => '팔로우하는 사용자가 없습니다';

  @override
  String errorLoadingFollowers(String error) {
    return '팔로워 로딩 오류: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return '팔로우 목록 로딩 오류: $error';
  }

  @override
  String get deleteIsPermanent => '이 작업은 되돌릴 수 없으며 영구적으로 삭제됩니다.';

  @override
  String typeToConfirm(String text) {
    return '\"$text\"를 입력하여 확인하세요';
  }

  @override
  String typeExactly(String text) {
    return '$text를 정확히 입력해주세요';
  }

  @override
  String fileDeleted(String fileName) {
    return '파일 \"$fileName\"이(가) 삭제되었습니다';
  }

  @override
  String errorDeletingFile(String error) {
    return '파일 삭제 오류: $error';
  }

  @override
  String get gistDeleted => 'Gist가 삭제되었습니다';

  @override
  String errorDeletingGist(String error) {
    return 'Gist 삭제 오류: $error';
  }

  @override
  String get noFilesAvailable => '파일이 없습니다';

  @override
  String get fileDataNotAvailable => '파일 데이터 없음';

  @override
  String get copied => '복사됨!';

  @override
  String get copyToClipboard => '클립보드에 복사';

  @override
  String get contentCopiedToClipboard => '내용이 클립보드에 복사되었습니다';

  @override
  String get copyGistContentToClipboard => 'Gist 내용 복사';

  @override
  String get internetNotAvailable => '인터넷 연결 없음';

  @override
  String get editGist => 'gist 수정';
}
