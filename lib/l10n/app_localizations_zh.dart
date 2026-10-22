// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get signIn => '使用 GitHub 登录';

  @override
  String get search => '搜索';

  @override
  String get allLanguages => '所有语言';

  @override
  String get darkMode => '深色模式';

  @override
  String get theme => '主题';

  @override
  String get lightTheme => '浅色';

  @override
  String get darkTheme => '深色';

  @override
  String get systemTheme => '系统';

  @override
  String get fontSize => '字体大小';

  @override
  String get logout => '退出登录';

  @override
  String get account => '账户';

  @override
  String get system => '系统';

  @override
  String get display => '显示';

  @override
  String get deleteGist => '删除 Gist';

  @override
  String get confirmDelete => '确定要删除此 gist 吗？';

  @override
  String get permanent => '此操作无法撤销。';

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get filename => '文件名';

  @override
  String get description => '描述（可选）';

  @override
  String get public => '公开';

  @override
  String get created => '创建时间：';

  @override
  String get lastUpdated => '最后更新：';

  @override
  String get loadingGists => '正在加载 Gists...';

  @override
  String get noGistsYet => '暂无 gists';

  @override
  String get noMatchingGists => '未找到匹配的 gists';

  @override
  String get createFirstGist => '点击下方的 + 按钮创建您的第一个 gist';

  @override
  String get adjustSearch => '尝试调整搜索条件或语言筛选';

  @override
  String get scrollToTop => '滚动到顶部';

  @override
  String get createNewGist => '创建新 gist';

  @override
  String get launchAtLogin => '登录时启动';

  @override
  String get quit => '退出';

  @override
  String get star => '收藏';

  @override
  String get unstar => '取消收藏';

  @override
  String get starred => '已收藏';

  @override
  String get fork => '复刻';

  @override
  String get forked => '已复刻';

  @override
  String get forkSuccess => 'Gist 复刻成功！';

  @override
  String get publicGists => '公开 Gists';

  @override
  String get browsePublicGists => '浏览公开 Gists';

  @override
  String get errorStarring => '收藏 gist 时出错';

  @override
  String get errorForking => '复刻 gist 时出错';

  @override
  String get loadMore => '加载更多';

  @override
  String get noPublicGists => '未找到公开 gists';

  @override
  String get starredGists => '已收藏的 Gists';

  @override
  String get myGists => '我的 Gists';

  @override
  String get share => '分享';

  @override
  String get shareGist => '分享 Gist';

  @override
  String get exportFile => '导出为文件';

  @override
  String get generateQRCode => '生成二维码';

  @override
  String get copyEmbedCode => '复制嵌入代码';

  @override
  String get copyGistUrl => '复制 Gist URL';

  @override
  String get moreActions => '更多操作';

  @override
  String get exportSuccess => 'Gist 导出成功';

  @override
  String get exportError => '导出 gist 时出错';

  @override
  String get embedCodeCopied => '嵌入代码已复制到剪贴板';

  @override
  String get urlCopied => 'URL 已复制到剪贴板';

  @override
  String get qrCodeTitle => '二维码';

  @override
  String get scanToOpen => '扫描以打开 gist';

  @override
  String get searchPublicGistsHint => '搜索或 @用户名';

  @override
  String get close => '关闭';

  @override
  String get clear => '清除';

  @override
  String get tryDifferentSearch => '尝试不同的搜索词';

  @override
  String showingGistsFromUser(int count) {
    return '显示来自用户的 $count 个 gists';
  }

  @override
  String foundInLoadedGists(int count) {
    return '在已加载的 gists 中找到 $count 个。使用 @用户名 获取用户的所有 gists。';
  }

  @override
  String get raw => '原始';

  @override
  String get preview => '预览';

  @override
  String get sortBy => '排序方式';

  @override
  String get sortDateNewest => '日期（最新）';

  @override
  String get sortDateOldest => '日期（最旧）';

  @override
  String get sortNameAsc => '名称（A-Z）';

  @override
  String get sortNameDesc => '名称（Z-A）';

  @override
  String get sortLanguage => '语言';

  @override
  String get sortStars => '收藏数';

  @override
  String get pin => '置顶';

  @override
  String get unpin => '取消置顶';

  @override
  String get pinned => '已置顶';

  @override
  String get archive => '归档';

  @override
  String get unarchive => '取消归档';

  @override
  String get archived => '已归档';

  @override
  String get showArchived => '显示已归档';

  @override
  String get hideArchived => '隐藏已归档';

  @override
  String get gistPinned => 'Gist 已置顶';

  @override
  String get gistUnpinned => 'Gist 已取消置顶';

  @override
  String get gistArchived => 'Gist 已归档';

  @override
  String get gistUnarchived => 'Gist 已取消归档';

  @override
  String get organize => '整理';

  @override
  String get exportCurrentFile => '导出所选文件';

  @override
  String get exportAllFiles => '导出所有文件';

  @override
  String get shareCurrentFile => '分享所选文件';

  @override
  String get shareAllFiles => '分享所有文件';

  @override
  String get deleteSelectedFile => '删除所选文件';

  @override
  String get deleteAllFiles => '删除整个 Gist';

  @override
  String get exportAllSuccess => '所有文件已导出到';

  @override
  String filesExported(int count) {
    return '已导出 $count 个文件';
  }

  @override
  String get openInFinderAfterExport => '导出后在访达中打开';

  @override
  String get ok => '确定';

  @override
  String get open => '打开';

  @override
  String get discard => '放弃';

  @override
  String errorWithDetails(String error) {
    return '错误：$error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return '加载内容失败：$statusCode';
  }

  @override
  String get noDescription => '无描述';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个更多文件',
      one: '1 个更多文件',
    );
    return '... 还有 $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return '创建于：$time';
  }

  @override
  String updatedTimeAgo(String time) {
    return '更新于：$time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return '上次更新：$time';
  }

  @override
  String get deleteFile => '删除文件';

  @override
  String deleteFileMessage(String fileName) {
    return '您即将永久删除文件 \"$fileName\"。';
  }

  @override
  String get deleteGistMessage => '您即将永久删除此 Gist。';

  @override
  String get deleteEntireGistMessage => '您将永久删除此整个 Gist 及其所有文件。';

  @override
  String get conflictResolution => '冲突解决';

  @override
  String get allConflictsResolved => '所有冲突已解决！';

  @override
  String conflictProgress(int current, int total) {
    return '冲突 $current / $total';
  }

  @override
  String get previousConflict => '上一个冲突';

  @override
  String get nextConflict => '下一个冲突';

  @override
  String get conflictExplanation => '此 Gist 同时被本地和远程修改。请选择要保留的版本。';

  @override
  String conflictGistLabel(String name) {
    return 'Gist：$name';
  }

  @override
  String get yourLocalVersion => '您的本地版本';

  @override
  String get remoteVersionGitHub => '远程版本 (GitHub)';

  @override
  String get chooseResolution => '选择解决方案：';

  @override
  String get keepMyLocalChanges => '保留我的本地更改';

  @override
  String get keepMyLocalChangesDescription => '使用本地更改覆盖远程版本';

  @override
  String get keepRemoteVersion => '保留远程版本';

  @override
  String get keepRemoteVersionDescription => '放弃本地修改，使用 GitHub 版本';

  @override
  String get discardLocalChanges => '放弃本地修改';

  @override
  String get discardLocalChangesDescription => '移除此操作在同步队列中的记录';

  @override
  String get modifiedUnknown => '修改：未知';

  @override
  String modifiedAt(String time) {
    return '修改于：$time';
  }

  @override
  String get filesLabel => '文件：';

  @override
  String get fileDeletedLabel => '已删除';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个字符',
      one: '1 个字符',
    );
    return '$_temp0';
  }

  @override
  String get justNow => '刚刚';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count分钟前',
      one: '1分钟前',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count小时前',
      one: '1小时前',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count天前',
      one: '1天前',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => '保留本地更改？';

  @override
  String get keepLocalChangesMessage => '这将用您的本地更改覆盖远程版本。此操作无法撤销。';

  @override
  String get keepLocal => '保留本地';

  @override
  String get keepRemoteVersionTitle => '保留远程版本？';

  @override
  String get keepRemoteVersionMessage => '这将丢弃您的本地修改，并保留远程版本。此操作无法撤销。';

  @override
  String get keepRemote => '保留远程';

  @override
  String get discardChangesTitle => '放弃更改？';

  @override
  String get discardChangesMessage => '这将移除您的本地更改，不会同步到服务器。此操作无法撤销。';

  @override
  String get gistMustHaveOneFile => 'Gist 必须至少包含一个文件';

  @override
  String errorCreatingGist(String error) {
    return '创建 Gist 失败：$error';
  }

  @override
  String get gistSavedOffline => 'Gist 已保存离线。连接后将同步。';

  @override
  String errorSavingGist(String error) {
    return '保存 Gist 失败：$error';
  }

  @override
  String get changesSavedOffline => '更改已保存（离线）。连接后将同步。';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return '您要删除仅 \"$fileName\"，还是整个 Gist？';
  }

  @override
  String errorDeleting(String error) {
    return '删除失败：$error';
  }

  @override
  String get addFile => '添加文件';

  @override
  String get removeFile => '移除文件';

  @override
  String newFileNumbered(int number) {
    return '新建文件 $number';
  }

  @override
  String get newGist => '新建 Gist';

  @override
  String get filenameHint => '例如：script.py';

  @override
  String get offlineNoCachedGists => '离线状态，没有缓存的 Gist。';

  @override
  String get syncStatus => '同步状态';

  @override
  String get syncing => '同步中…';

  @override
  String pendingCountLabel(int count) {
    return '待处理：$count';
  }

  @override
  String conflictCountLabel(int count) {
    return '冲突：$count';
  }

  @override
  String get operationsLabel => '操作：';

  @override
  String get resolveConflicts => '解决冲突';

  @override
  String get willSyncWhenRestored => '连接恢复后将自动同步';

  @override
  String get syncNow => '立即同步';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get offlineChangesWillSync => '您处于离线状态。连接后将同步更改。';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个待同步',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return '加载公共 Gist 失败：$error';
  }

  @override
  String errorSearching(String error) {
    return '搜索失败：$error';
  }

  @override
  String byAuthor(String author) {
    return '作者：$author';
  }

  @override
  String errorSigningIn(String error) {
    return '登录失败：$error';
  }

  @override
  String get connectingToGitHub => '连接到 GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return '设置开机启动失败: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return '退出应用失败：$error';
  }

  @override
  String errorLoggingOut(String error) {
    return '登出失败：$error';
  }

  @override
  String get tabSize => '制表符大小';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个空格',
      one: '1 个空格',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个空格',
      one: '1 个空格',
    );
    return 'Tab 键将插入 $_temp0';
  }

  @override
  String get errorLoadingUserProfile => '加载用户资料失败';

  @override
  String get followers => '关注者';

  @override
  String get following => '关注';

  @override
  String get repos => '仓库';

  @override
  String get gists => 'Gist';

  @override
  String joinedDate(String date) {
    return '加入于 $date';
  }

  @override
  String viewUserGists(String username) {
    return '查看 $username 的 Gist';
  }

  @override
  String get openLink => '打开链接';

  @override
  String openLinkConfirmation(String url) {
    return '您想在浏览器中打开此链接吗？\n\n$url';
  }

  @override
  String get couldNotOpenLink => '无法打开链接';

  @override
  String get noFollowersFound => '没有关注者';

  @override
  String get noFollowingFound => '未找到关注的人';

  @override
  String errorLoadingFollowers(String error) {
    return '加载关注者失败：$error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return '加载关注列表失败：$error';
  }

  @override
  String get deleteIsPermanent => '此操作不可撤销，且具有永久性。';

  @override
  String typeToConfirm(String text) {
    return '输入 \"$text\" 以确认：';
  }

  @override
  String typeExactly(String text) {
    return '请准确输入 \"$text\"';
  }

  @override
  String fileDeleted(String fileName) {
    return '文件 \"$fileName\" 已删除';
  }

  @override
  String errorDeletingFile(String error) {
    return '删除文件失败：$error';
  }

  @override
  String get gistDeleted => 'Gist 已删除';

  @override
  String errorDeletingGist(String error) {
    return '删除 Gist 失败：$error';
  }

  @override
  String get noFilesAvailable => '无文件可用';

  @override
  String get fileDataNotAvailable => '文件数据不可用';

  @override
  String get copied => '已复制！';

  @override
  String get copyToClipboard => '复制到剪贴板';

  @override
  String get contentCopiedToClipboard => '内容已复制到剪贴板';

  @override
  String get copyGistContentToClipboard => '复制 Gist 内容到剪贴板';

  @override
  String get internetNotAvailable => '无法连接互联网';

  @override
  String get editGist => '编辑 gist';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get signIn => '使用 GitHub 登入';

  @override
  String get search => '搜尋';

  @override
  String get allLanguages => '所有語言';

  @override
  String get darkMode => '深色模式';

  @override
  String get theme => '主題';

  @override
  String get lightTheme => '淺色';

  @override
  String get darkTheme => '深色';

  @override
  String get systemTheme => '系統';

  @override
  String get fontSize => '字型大小';

  @override
  String get logout => '登出';

  @override
  String get account => '帳戶';

  @override
  String get system => '系統';

  @override
  String get display => '顯示';

  @override
  String get deleteGist => '刪除 Gist';

  @override
  String get confirmDelete => '確定要刪除此 gist 嗎？';

  @override
  String get permanent => '此操作無法復原。';

  @override
  String get cancel => '取消';

  @override
  String get delete => '刪除';

  @override
  String get filename => '檔案名稱';

  @override
  String get description => '描述（選填）';

  @override
  String get public => '公開';

  @override
  String get created => '建立時間：';

  @override
  String get lastUpdated => '最後更新：';

  @override
  String get loadingGists => '正在載入 Gists...';

  @override
  String get noGistsYet => '尚無 gists';

  @override
  String get noMatchingGists => '找不到符合的 gists';

  @override
  String get createFirstGist => '點擊下方的 + 按鈕建立您的第一個 gist';

  @override
  String get adjustSearch => '嘗試調整搜尋條件或語言篩選';

  @override
  String get scrollToTop => '捲動至頂端';

  @override
  String get createNewGist => '建立新 gist';

  @override
  String get launchAtLogin => '登入時啟動';

  @override
  String get quit => '結束';

  @override
  String get star => '收藏';

  @override
  String get unstar => '取消收藏';

  @override
  String get starred => '已收藏';

  @override
  String get fork => '複製';

  @override
  String get forked => '已複製';

  @override
  String get forkSuccess => 'Gist 複製成功！';

  @override
  String get publicGists => '公開 Gists';

  @override
  String get browsePublicGists => '瀏覽公開 Gists';

  @override
  String get errorStarring => '收藏 gist 時發生錯誤';

  @override
  String get errorForking => '複製 gist 時發生錯誤';

  @override
  String get loadMore => '載入更多';

  @override
  String get noPublicGists => '找不到公開 gists';

  @override
  String get starredGists => '已收藏的 Gists';

  @override
  String get myGists => '我的 Gists';

  @override
  String get share => '分享';

  @override
  String get shareGist => '分享 Gist';

  @override
  String get exportFile => '匯出為檔案';

  @override
  String get generateQRCode => '產生 QR 碼';

  @override
  String get copyEmbedCode => '複製嵌入代碼';

  @override
  String get copyGistUrl => '複製 Gist URL';

  @override
  String get moreActions => '更多操作';

  @override
  String get exportSuccess => 'Gist 匯出成功';

  @override
  String get exportError => '匯出 gist 時發生錯誤';

  @override
  String get embedCodeCopied => '嵌入代碼已複製到剪貼簿';

  @override
  String get urlCopied => 'URL 已複製到剪貼簿';

  @override
  String get qrCodeTitle => 'QR 碼';

  @override
  String get scanToOpen => '掃描以開啟 gist';

  @override
  String get searchPublicGistsHint => '搜尋或 @使用者名稱';

  @override
  String get close => '關閉';

  @override
  String get clear => '清除';

  @override
  String get tryDifferentSearch => '嘗試不同的搜尋詞';

  @override
  String showingGistsFromUser(int count) {
    return '顯示來自使用者的 $count 個 gists';
  }

  @override
  String foundInLoadedGists(int count) {
    return '在已載入的 gists 中找到 $count 個。使用 @使用者名稱 取得使用者的所有 gists。';
  }

  @override
  String get raw => '原始';

  @override
  String get preview => '預覽';

  @override
  String get sortBy => '排序方式';

  @override
  String get sortDateNewest => '日期（最新）';

  @override
  String get sortDateOldest => '日期（最舊）';

  @override
  String get sortNameAsc => '名稱（A-Z）';

  @override
  String get sortNameDesc => '名稱（Z-A）';

  @override
  String get sortLanguage => '語言';

  @override
  String get sortStars => '收藏數';

  @override
  String get pin => '置頂';

  @override
  String get unpin => '取消置頂';

  @override
  String get pinned => '已置頂';

  @override
  String get archive => '封存';

  @override
  String get unarchive => '取消封存';

  @override
  String get archived => '已封存';

  @override
  String get showArchived => '顯示已封存';

  @override
  String get hideArchived => '隱藏已封存';

  @override
  String get gistPinned => 'Gist 已置頂';

  @override
  String get gistUnpinned => 'Gist 已取消置頂';

  @override
  String get gistArchived => 'Gist 已封存';

  @override
  String get gistUnarchived => 'Gist 已取消封存';

  @override
  String get organize => '整理';

  @override
  String get exportCurrentFile => '匯出所選檔案';

  @override
  String get exportAllFiles => '匯出所有檔案';

  @override
  String get shareCurrentFile => '分享所選檔案';

  @override
  String get shareAllFiles => '分享所有檔案';

  @override
  String get deleteSelectedFile => '刪除所選檔案';

  @override
  String get deleteAllFiles => '刪除整個 Gist';

  @override
  String get exportAllSuccess => '所有檔案已匯出至';

  @override
  String filesExported(int count) {
    return '已匯出 $count 個檔案';
  }

  @override
  String get openInFinderAfterExport => '匯出後在 Finder 中開啟';

  @override
  String get ok => '確定';

  @override
  String get open => '開啟';

  @override
  String get discard => '捨棄';

  @override
  String errorWithDetails(String error) {
    return '錯誤：$error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return '載入內容失敗：$statusCode';
  }

  @override
  String get noDescription => '無描述';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個更多檔案',
      one: '1 個更多檔案',
    );
    return '還有 $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return '建立時間：$time';
  }

  @override
  String updatedTimeAgo(String time) {
    return '更新於：$time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return '上次更新：$time';
  }

  @override
  String get deleteFile => '刪除檔案';

  @override
  String deleteFileMessage(String fileName) {
    return '您即將永久刪除檔案 \"$fileName\"。';
  }

  @override
  String get deleteGistMessage => '您即將永久刪除此 Gist。';

  @override
  String get deleteEntireGistMessage => '您即將永久刪除這個完整的 Gist 及其所有檔案。';

  @override
  String get conflictResolution => '衝突解決';

  @override
  String get allConflictsResolved => '所有衝突已解決！';

  @override
  String conflictProgress(int current, int total) {
    return '衝突 $current / $total';
  }

  @override
  String get previousConflict => '上一個衝突';

  @override
  String get nextConflict => '下一個衝突';

  @override
  String get conflictExplanation => '這個 Gist 同時在本地和遠端都經過修改。請選擇要保留的版本。';

  @override
  String conflictGistLabel(String name) {
    return 'Gist：$name';
  }

  @override
  String get yourLocalVersion => '您的本地版本';

  @override
  String get remoteVersionGitHub => '遠端版本 (GitHub)';

  @override
  String get chooseResolution => '選擇解決方案：';

  @override
  String get keepMyLocalChanges => '保留我的本地變更';

  @override
  String get keepMyLocalChangesDescription => '以您的本地變更覆寫遠端版本';

  @override
  String get keepRemoteVersion => '保留遠端版本';

  @override
  String get keepRemoteVersionDescription => '捨棄您的本地變更，使用 GitHub 版本';

  @override
  String get discardLocalChanges => '捨棄本地變更';

  @override
  String get discardLocalChangesDescription => '移除此操作的同步佇列';

  @override
  String get modifiedUnknown => '修改日期：未知';

  @override
  String modifiedAt(String time) {
    return '修改於：$time';
  }

  @override
  String get filesLabel => '檔案：';

  @override
  String get fileDeletedLabel => '已刪除';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個字元',
      one: '1 個字元',
    );
    return '$_temp0';
  }

  @override
  String get justNow => '剛剛';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 分鐘前',
      one: '1 分鐘前',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 小時前',
      one: '1 小時前',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count天前',
      one: '1天前',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => '保留本地變更？';

  @override
  String get keepLocalChangesMessage => '這會用您的本地變更覆寫遠端版本。此動作無法撤銷。';

  @override
  String get keepLocal => '保留本地';

  @override
  String get keepRemoteVersionTitle => '保留遠端版本？';

  @override
  String get keepRemoteVersionMessage => '這會捨棄您的本機變更，並保留遠端版本。此動作無法撤銷。';

  @override
  String get keepRemote => '保留遠端';

  @override
  String get discardChangesTitle => '捨棄變更？';

  @override
  String get discardChangesMessage => '這會移除您的本機變更，且不會同步。此動作無法撤銷。';

  @override
  String get gistMustHaveOneFile => 'Gist 至少需要包含一個檔案';

  @override
  String errorCreatingGist(String error) {
    return '建立 Gist 失敗：$error';
  }

  @override
  String get gistSavedOffline => '已儲存離線 Gist。連線時會同步。';

  @override
  String errorSavingGist(String error) {
    return '儲存 Gist 失敗：$error';
  }

  @override
  String get changesSavedOffline => '變更已儲存離線。連線後將同步。';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return '您要刪除僅 \"$fileName\"，還是整個 Gist？';
  }

  @override
  String errorDeleting(String error) {
    return '刪除失敗：$error';
  }

  @override
  String get addFile => '新增檔案';

  @override
  String get removeFile => '移除檔案';

  @override
  String newFileNumbered(int number) {
    return '新增檔案 $number';
  }

  @override
  String get newGist => '新增 Gist';

  @override
  String get filenameHint => '例如：script.py';

  @override
  String get offlineNoCachedGists => '離線狀態。沒有快取 Gist 可用。';

  @override
  String get syncStatus => '同步狀態';

  @override
  String get syncing => '同步中...';

  @override
  String pendingCountLabel(int count) {
    return '待處理：$count';
  }

  @override
  String conflictCountLabel(int count) {
    return '衝突：$count';
  }

  @override
  String get operationsLabel => '作業：';

  @override
  String get resolveConflicts => '解決衝突';

  @override
  String get willSyncWhenRestored => '連線恢復後將自動同步';

  @override
  String get syncNow => '立即同步';

  @override
  String get selectLanguage => '選擇語言';

  @override
  String get offlineChangesWillSync => '您目前離線。連線後將同步變更。';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個待處理',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return '載入公開 Gist 時發生錯誤：$error';
  }

  @override
  String errorSearching(String error) {
    return '搜尋錯誤：$error';
  }

  @override
  String byAuthor(String author) {
    return '作者：$author';
  }

  @override
  String errorSigningIn(String error) {
    return '登入失敗：$error';
  }

  @override
  String get connectingToGitHub => '正在連接 GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return '設定自動開機時發生錯誤：$error';
  }

  @override
  String errorQuittingApp(String error) {
    return '關閉應用程式時發生錯誤：$error';
  }

  @override
  String errorLoggingOut(String error) {
    return '登出失敗：$error';
  }

  @override
  String get tabSize => '縮排大小';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個空格',
      one: '1 個空格',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '按下 Tab 鍵會插入 $count 個空格',
      one: '按下 Tab 鍵會插入 1 個空格',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile => '載入使用者資料失敗';

  @override
  String get followers => '追蹤者';

  @override
  String get following => '追蹤';

  @override
  String get repos => '倉庫';

  @override
  String get gists => '程式碼片段';

  @override
  String joinedDate(String date) {
    return '加入於 $date';
  }

  @override
  String viewUserGists(String username) {
    return '檢視 $username 的 Gists';
  }

  @override
  String get openLink => '開啟連結';

  @override
  String openLinkConfirmation(String url) {
    return '您想要在瀏覽器中開啟此連結嗎？\n\n$url';
  }

  @override
  String get couldNotOpenLink => '無法開啟連結';

  @override
  String get noFollowersFound => '沒有粉絲';

  @override
  String get noFollowingFound => '尚無追蹤對象';

  @override
  String errorLoadingFollowers(String error) {
    return '載入追蹤者失敗：$error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return '載入追蹤對象失敗：$error';
  }

  @override
  String get deleteIsPermanent => '此動作不可逆，確定永久刪除？';

  @override
  String typeToConfirm(String text) {
    return '輸入「$text」以確認：';
  }

  @override
  String typeExactly(String text) {
    return '請完全輸入 \"$text\"';
  }

  @override
  String fileDeleted(String fileName) {
    return '檔案「$fileName」已刪除';
  }

  @override
  String errorDeletingFile(String error) {
    return '刪除檔案失敗：$error';
  }

  @override
  String get gistDeleted => 'Gist 已刪除';

  @override
  String errorDeletingGist(String error) {
    return '刪除 Gist 失敗：$error';
  }

  @override
  String get noFilesAvailable => '無可用檔案';

  @override
  String get fileDataNotAvailable => '檔案資料不可用';

  @override
  String get copied => '已複製！';

  @override
  String get copyToClipboard => '複製到剪貼簿';

  @override
  String get contentCopiedToClipboard => '內容已複製到剪貼簿';

  @override
  String get copyGistContentToClipboard => '複製 Gist 內容到剪貼簿';

  @override
  String get internetNotAvailable => '網路連線不可用';

  @override
  String get editGist => '編輯 gist';
}
