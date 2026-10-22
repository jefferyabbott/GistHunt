// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get signIn => 'GitHubでサインイン';

  @override
  String get search => '検索';

  @override
  String get allLanguages => 'すべての言語';

  @override
  String get darkMode => 'ダークモード';

  @override
  String get theme => 'テーマ';

  @override
  String get lightTheme => 'ライト';

  @override
  String get darkTheme => 'ダーク';

  @override
  String get systemTheme => 'システム';

  @override
  String get fontSize => 'フォントサイズ';

  @override
  String get logout => 'ログアウト';

  @override
  String get account => 'アカウント';

  @override
  String get system => 'システム';

  @override
  String get display => '表示';

  @override
  String get deleteGist => 'Gistを削除';

  @override
  String get confirmDelete => 'このgistを削除してもよろしいですか？';

  @override
  String get permanent => 'この操作は取り消せません。';

  @override
  String get cancel => 'キャンセル';

  @override
  String get delete => '削除';

  @override
  String get filename => 'ファイル名';

  @override
  String get description => '説明（任意）';

  @override
  String get public => '公開';

  @override
  String get created => '作成日時：';

  @override
  String get lastUpdated => '最終更新日時：';

  @override
  String get loadingGists => 'Gistsを読み込み中...';

  @override
  String get noGistsYet => 'まだgistがありません';

  @override
  String get noMatchingGists => '一致するgistが見つかりません';

  @override
  String get createFirstGist => '下の+ボタンをタップして最初のgistを作成してください';

  @override
  String get adjustSearch => '検索または言語フィルターを調整してみてください';

  @override
  String get scrollToTop => 'トップへスクロール';

  @override
  String get createNewGist => '新しいgistを作成';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => '終了';

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
  String get sortBy => 'ソートする';

  @override
  String get sortDateNewest => 'Date (Newest)';

  @override
  String get sortDateOldest => 'Date (Oldest)';

  @override
  String get sortNameAsc => 'Name (A-Z)';

  @override
  String get sortNameDesc => 'Name (A-Z) \n\n(, )';

  @override
  String get sortLanguage => '言語';

  @override
  String get sortStars => 'スター';

  @override
  String get pin => 'Pin';

  @override
  String get unpin => 'unpin';

  @override
  String get pinned => 'ピン留め済み';

  @override
  String get archive => 'アーカイブ';

  @override
  String get unarchive =>
      'unarchive \n\n(No changes were made to the original English string.)';

  @override
  String get archived => 'アーカイブ済み';

  @override
  String get showArchived => 'アーカイブを表示';

  @override
  String get hideArchived => 'アーカイブを非表示に';

  @override
  String get gistPinned => 'Gistを固定しました。';

  @override
  String get gistUnpinned => 'Gistをピン解除しました。';

  @override
  String get gistArchived => 'Gistが保存されました。';

  @override
  String get gistUnarchived => 'Gistが解凍されました。';

  @override
  String get organize => '組織化';

  @override
  String get exportCurrentFile => '選択したファイルをエクスポート';

  @override
  String get exportAllFiles => 'すべてのファイルをエクスポート';

  @override
  String get shareCurrentFile => '選択したファイルを共有する';

  @override
  String get shareAllFiles => 'すべてのファイルを共有する';

  @override
  String get deleteSelectedFile => '選択したファイルを削除';

  @override
  String get deleteAllFiles => '全てのgistを削除';

  @override
  String get exportAllSuccess => 'すべてのファイルをエクスポートしました。';

  @override
  String filesExported(int count) {
    return '$count 個のファイルがエクスポートされました。';
  }

  @override
  String get openInFinderAfterExport => 'ファイルをエクスポートした後、ファインダーを開く';

  @override
  String get ok => 'OK';

  @override
  String get open => '開く';

  @override
  String get discard => '破棄';

  @override
  String errorWithDetails(String error) {
    return 'エラー：$error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'コンテンツの読み込みに失敗しました: $statusCode';
  }

  @override
  String get noDescription => '説明はありません';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count個のファイル',
      one: 'もう1つのファイル',
    );
    return '...と$_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return '作成: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return '更新: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return '最終更新：$time';
  }

  @override
  String get deleteFile => 'ファイルを削除';

  @override
  String deleteFileMessage(String fileName) {
    return 'ファイル \"$fileName\" を完全に削除します。よろしいですか？';
  }

  @override
  String get deleteGistMessage => 'このGistを完全に削除します。よろしいですか？';

  @override
  String get deleteEntireGistMessage => 'この Gist とすべてのファイルを完全に削除します。よろしいですか？';

  @override
  String get conflictResolution => '競合の解決';

  @override
  String get allConflictsResolved => '競合はすべて解決されました！';

  @override
  String conflictProgress(int current, int total) {
    return '競合 $current / $total 件';
  }

  @override
  String get previousConflict => '前の競合';

  @override
  String get nextConflict => '次の競合';

  @override
  String get conflictExplanation =>
      'このGistはローカルとリモートで両方変更されました。どちらのバージョンを保持するか選択してください。';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'ローカルのバージョン';

  @override
  String get remoteVersionGitHub => 'リモートバージョン (GitHub)';

  @override
  String get chooseResolution => '解決方法を選択:';

  @override
  String get keepMyLocalChanges => 'ローカルの変更を保持';

  @override
  String get keepMyLocalChangesDescription => 'ローカルの変更でリモートを上書きします';

  @override
  String get keepRemoteVersion => 'リモートのバージョンを保持';

  @override
  String get keepRemoteVersionDescription => 'ローカルの変更を破棄してGitHubのバージョンを使用します';

  @override
  String get discardLocalChanges => 'ローカルの変更を破棄';

  @override
  String get discardLocalChangesDescription => '同期キューからこの操作を削除します';

  @override
  String get modifiedUnknown => '変更日時不明';

  @override
  String modifiedAt(String time) {
    return '変更日: $time';
  }

  @override
  String get filesLabel => 'ファイル:';

  @override
  String get fileDeletedLabel => '削除済み';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count文字',
      one: '1文字',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'さっき';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count分前',
      one: '1分前',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count時間前',
      one: '1時間前',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count日 ago',
      one: '1日 ago',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'ローカルの変更を保持しますか？';

  @override
  String get keepLocalChangesMessage =>
      'リモートのバージョンはあなたのローカルの変更で上書きされます。この操作は元に戻せません。';

  @override
  String get keepLocal => 'ローカル変更を保持';

  @override
  String get keepRemoteVersionTitle => 'リモートのバージョンを保持しますか？';

  @override
  String get keepRemoteVersionMessage =>
      'ローカルの変更は破棄され、リモートのバージョンが保持されます。この操作は元に戻せません。';

  @override
  String get keepRemote => 'リモートを保持';

  @override
  String get discardChangesTitle => '変更を破棄しますか？';

  @override
  String get discardChangesMessage => 'ローカルの変更は破棄され、同期されません。この操作は元に戻せません。';

  @override
  String get gistMustHaveOneFile => 'Gistには少なくとも1つのファイルが必要です';

  @override
  String errorCreatingGist(String error) {
    return 'Gist の作成に失敗しました: $error';
  }

  @override
  String get gistSavedOffline => 'Gistをオフラインで保存しました。接続され次第同期します。';

  @override
  String errorSavingGist(String error) {
    return 'Gist の保存に失敗しました: $error';
  }

  @override
  String get changesSavedOffline => '変更はオフラインで保存されました。接続され次第同期されます。';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return '\"$fileName\"のみを削除しますか？それともGist全体を削除しますか？';
  }

  @override
  String errorDeleting(String error) {
    return '削除エラー: $error';
  }

  @override
  String get addFile => 'ファイルを追加';

  @override
  String get removeFile => 'ファイルを削除';

  @override
  String newFileNumbered(int number) {
    return '新規ファイル $number';
  }

  @override
  String get newGist => '新しい Gist';

  @override
  String get filenameHint => '例: script.py';

  @override
  String get offlineNoCachedGists => 'オフラインです。キャッシュされたGistはありません。';

  @override
  String get syncStatus => '同期状況';

  @override
  String get syncing => '同期中…';

  @override
  String pendingCountLabel(int count) {
    return '保留: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return '競合: $count';
  }

  @override
  String get operationsLabel => '操作:';

  @override
  String get resolveConflicts => '競合を解決';

  @override
  String get willSyncWhenRestored => '接続回復時に自動で同期されます';

  @override
  String get syncNow => '今すぐ同期';

  @override
  String get selectLanguage => '言語を選択';

  @override
  String get offlineChangesWillSync => 'オフラインです。接続され次第変更が同期されます。';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個保留中',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return '公開Gistの読み込みに失敗しました: $error';
  }

  @override
  String errorSearching(String error) {
    return '検索エラー：$error';
  }

  @override
  String byAuthor(String author) {
    return '$author 著';
  }

  @override
  String errorSigningIn(String error) {
    return 'サインインエラー: $error';
  }

  @override
  String get connectingToGitHub => 'GitHubに接続中';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return '起動時の自動起動設定に失敗しました: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'アプリの終了に失敗しました: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'ログアウトに失敗しました: $error';
  }

  @override
  String get tabSize => 'タブサイズ';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countスペース',
      one: '1スペース',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tabキーで$count個のスペースが挿入されます',
      one: 'Tabキーで1つのスペースが挿入されます',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'ユーザープロファイルの読み込みに失敗しました';

  @override
  String get followers => 'フォロワー';

  @override
  String get following => 'フォロー中';

  @override
  String get repos => 'リポジトリ';

  @override
  String get gists => 'Gist';

  @override
  String joinedDate(String date) {
    return '参加日: $date';
  }

  @override
  String viewUserGists(String username) {
    return '$usernameさんのGistを見る';
  }

  @override
  String get openLink => 'リンクを開く';

  @override
  String openLinkConfirmation(String url) {
    return 'このリンクをブラウザで開きますか？\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'リンクを開けませんでした';

  @override
  String get noFollowersFound => 'フォロワーはいません';

  @override
  String get noFollowingFound => 'フォローが見つかりませんでした';

  @override
  String errorLoadingFollowers(String error) {
    return 'フォロワーの読み込みに失敗しました: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'フォローの読み込みに失敗しました: $error';
  }

  @override
  String get deleteIsPermanent => 'この操作は取り消せません。';

  @override
  String typeToConfirm(String text) {
    return '\"$text\"と入力して確認してください:';
  }

  @override
  String typeExactly(String text) {
    return '\"$text\"を正確に入力してください。';
  }

  @override
  String fileDeleted(String fileName) {
    return 'ファイル \"$fileName\" を削除しました。';
  }

  @override
  String errorDeletingFile(String error) {
    return 'ファイルの削除に失敗しました: $error';
  }

  @override
  String get gistDeleted => 'Gist を削除しました';

  @override
  String errorDeletingGist(String error) {
    return 'Gist の削除に失敗しました: $error';
  }

  @override
  String get noFilesAvailable => 'ファイルがありません';

  @override
  String get fileDataNotAvailable => 'ファイルデータがありません';

  @override
  String get copied => 'コピーしました！';

  @override
  String get copyToClipboard => 'クリップボードにコピー';

  @override
  String get contentCopiedToClipboard => 'コンテンツをクリップボードにコピーしました';

  @override
  String get copyGistContentToClipboard => 'Gistの内容をクリップボードにコピー';

  @override
  String get internetNotAvailable => 'インターネットに接続できません';

  @override
  String get editGist => 'Gistを編集';
}
