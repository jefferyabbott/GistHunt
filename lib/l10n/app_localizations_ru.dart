// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get signIn => 'Войти через GitHub';

  @override
  String get search => 'Поиск';

  @override
  String get allLanguages => 'Все языки';

  @override
  String get darkMode => 'ТЕМНЫЙ РЕЖИМ';

  @override
  String get theme => 'Тема';

  @override
  String get lightTheme => 'Светлая';

  @override
  String get darkTheme => 'Темная';

  @override
  String get systemTheme => 'Системная';

  @override
  String get fontSize => 'Размер шрифта';

  @override
  String get logout => 'Выйти';

  @override
  String get account => 'Аккаунт';

  @override
  String get system => 'Система';

  @override
  String get display => 'Отображение';

  @override
  String get deleteGist => 'Удалить Gist';

  @override
  String get confirmDelete => 'Вы уверены, что хотите удалить этот gist?';

  @override
  String get permanent => 'Это действие нельзя отменить.';

  @override
  String get cancel => 'Отмена';

  @override
  String get delete => 'Удалить';

  @override
  String get filename => 'Имя файла';

  @override
  String get description => 'Описание (необязательно)';

  @override
  String get public => 'Публичный';

  @override
  String get created => 'создано:';

  @override
  String get lastUpdated => 'Последнее обновление:';

  @override
  String get loadingGists => 'Загрузка Gists...';

  @override
  String get noGistsYet => 'Пока нет gistов';

  @override
  String get noMatchingGists => 'Соответствующие gistы не найдены';

  @override
  String get createFirstGist =>
      'Создайте свой первый gist, нажав кнопку + ниже';

  @override
  String get adjustSearch => 'Попробуйте изменить поиск или языковой фильтр';

  @override
  String get scrollToTop => 'Прокрутить вверх';

  @override
  String get createNewGist => 'Создать новый gist';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => 'Выход';

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
  String get sortBy => 'Сортировать по';

  @override
  String get sortDateNewest => 'Дата (новейшая)';

  @override
  String get sortDateOldest => 'Дата (Самая старая)';

  @override
  String get sortNameAsc => 'Имя (А-Я)';

  @override
  String get sortNameDesc => 'Имя (А-Я)';

  @override
  String get sortLanguage => 'Язык';

  @override
  String get sortStars => 'Звезды';

  @override
  String get pin => 'Закрепить';

  @override
  String get unpin => 'Отпинать';

  @override
  String get pinned => 'Прикреплён';

  @override
  String get archive => 'Архив';

  @override
  String get unarchive => 'Разархивировать';

  @override
  String get archived => 'Архивировано';

  @override
  String get showArchived => 'Показать Архивные';

  @override
  String get hideArchived => 'Скрыть архивные';

  @override
  String get gistPinned => 'Gist pinchata';

  @override
  String get gistUnpinned => 'Gist отпиннут';

  @override
  String get gistArchived => 'Gist архивирован';

  @override
  String get gistUnarchived => 'Gist расархивирован';

  @override
  String get organize => 'Организовать';

  @override
  String get exportCurrentFile => 'Экспорт выбранного файла';

  @override
  String get exportAllFiles => 'Экспорт всех файлов';

  @override
  String get shareCurrentFile => 'Share Selected File';

  @override
  String get shareAllFiles => 'Сохранить все файлы';

  @override
  String get deleteSelectedFile => 'Удалить выбранный файл';

  @override
  String get deleteAllFiles => 'Удалить всю гисту';

  @override
  String get exportAllSuccess => 'Все файлы экспортированы в';

  @override
  String filesExported(int count) {
    return '$count файлов экспортировано';
  }

  @override
  String get openInFinderAfterExport =>
      'Открыть Файловый Менеджер после экспорта файла';

  @override
  String get ok => 'OK';

  @override
  String get open => 'Открыть';

  @override
  String get discard => 'Отменить';

  @override
  String errorWithDetails(String error) {
    return 'Ошибка: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Ошибка загрузки содержимого: $statusCode';
  }

  @override
  String get noDescription => 'Без описания';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ещё файлов',
      one: 'ещё 1 файл',
    );
    return '... и $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Создано: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Обновлено: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Обновлено: $time';
  }

  @override
  String get deleteFile => 'Удалить файл';

  @override
  String deleteFileMessage(String fileName) {
    return 'Вы собираетесь безвозвратно удалить файл \"$fileName\".';
  }

  @override
  String get deleteGistMessage =>
      'Вы собираетесь безвозвратно удалить этот gist.';

  @override
  String get deleteEntireGistMessage =>
      'Вы собираетесь навсегда удалить этот весь gist и все его файлы.';

  @override
  String get conflictResolution => 'Разрешение конфликтов';

  @override
  String get allConflictsResolved => 'Все конфликты разрешены!';

  @override
  String conflictProgress(int current, int total) {
    return 'Конфликт $current из $total';
  }

  @override
  String get previousConflict => 'Предыдущий конфликт';

  @override
  String get nextConflict => 'Следующий конфликт';

  @override
  String get conflictExplanation =>
      'Этот Gist был изменен как локально, так и удалённо. Выберите, какую версию сохранить.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Ваша локальная версия';

  @override
  String get remoteVersionGitHub => 'Удалённая версия (GitHub)';

  @override
  String get chooseResolution => 'Выберите способ разрешения:';

  @override
  String get keepMyLocalChanges => 'Сохранить мои изменения';

  @override
  String get keepMyLocalChangesDescription =>
      'Перезаписать удалённую версию вашими локальными изменениями';

  @override
  String get keepRemoteVersion => 'Сохранить версию с сервера';

  @override
  String get keepRemoteVersionDescription =>
      'Отменить локальные изменения и использовать версию с GitHub';

  @override
  String get discardLocalChanges => 'Отменить локальные изменения';

  @override
  String get discardLocalChangesDescription =>
      'Удалить эту операцию из очереди синхронизации';

  @override
  String get modifiedUnknown => 'Изменено: неизвестно';

  @override
  String modifiedAt(String time) {
    return 'Изменено: $time';
  }

  @override
  String get filesLabel => 'Файлы:';

  @override
  String get fileDeletedLabel => 'удален';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count символа',
      one: '1 символ',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Только что';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count минуты назад',
      one: '1 минуту назад',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count часа назад',
      one: '1 час назад',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня назад',
      one: '1 день назад',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Сохранить локальные изменения?';

  @override
  String get keepLocalChangesMessage =>
      'Это перезапишет удалённую версию вашими локальными изменениями. Это действие нельзя отменить.';

  @override
  String get keepLocal => 'Сохранить локальные изменения';

  @override
  String get keepRemoteVersionTitle => 'Сохранить удалённую версию?';

  @override
  String get keepRemoteVersionMessage =>
      'Это отменит ваши локальные изменения и сохранит удалённую версию. Это действие нельзя будет отменить.';

  @override
  String get keepRemote => 'Сохранить удалённую версию';

  @override
  String get discardChangesTitle => 'Отменить изменения?';

  @override
  String get discardChangesMessage =>
      'Это отменит ваши локальные изменения без синхронизации. Действие нельзя будет отменить.';

  @override
  String get gistMustHaveOneFile => 'В Gist должен быть хотя бы один файл';

  @override
  String errorCreatingGist(String error) {
    return 'Ошибка создания gist: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist сохранен в автономном режиме. Синхронизация произойдет при подключении.';

  @override
  String errorSavingGist(String error) {
    return 'Ошибка сохранения Gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'Изменения сохранены в автономном режиме. Синхронизируются при подключении.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Вы хотите удалить только \"$fileName\" или весь gist?';
  }

  @override
  String errorDeleting(String error) {
    return 'Ошибка удаления: $error';
  }

  @override
  String get addFile => 'Добавить файл';

  @override
  String get removeFile => 'Удалить файл';

  @override
  String newFileNumbered(int number) {
    return 'Новый файл $number';
  }

  @override
  String get newGist => 'Новый Gist';

  @override
  String get filenameHint => 'напр., script.py';

  @override
  String get offlineNoCachedGists =>
      'Нет подключения к интернету. Нет сохраненных заметок.';

  @override
  String get syncStatus => 'Статус синхронизации';

  @override
  String get syncing => 'Синхронизация...';

  @override
  String pendingCountLabel(int count) {
    return 'В ожидании: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Конфликты: $count';
  }

  @override
  String get operationsLabel => 'Операции:';

  @override
  String get resolveConflicts => 'Разрешить конфликты';

  @override
  String get willSyncWhenRestored =>
      'Синхронизация произойдет автоматически после восстановления соединения';

  @override
  String get syncNow => 'Синхронизировать сейчас';

  @override
  String get selectLanguage => 'Выберите язык';

  @override
  String get offlineChangesWillSync =>
      'Вы не в сети. Изменения синхронизируются при подключении.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pending',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Ошибка загрузки публичных Gist: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Ошибка поиска: $error';
  }

  @override
  String byAuthor(String author) {
    return 'от $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Ошибка при входе: $error';
  }

  @override
  String get connectingToGitHub => 'Подключение к GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Ошибка при настройке запуска при входе в систему: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Ошибка при закрытии приложения: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Ошибка выхода: $error';
  }

  @override
  String get tabSize => 'Размер табуляции';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пробела',
      one: '1 пробел',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Клавиша Tab вставит $count пробелов',
      one: 'Клавиша Tab вставит 1 пробел',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'Ошибка загрузки профиля пользователя';

  @override
  String get followers => 'Подписчики';

  @override
  String get following => 'Подписки';

  @override
  String get repos => 'Репозитории';

  @override
  String get gists => 'Гистограммы';

  @override
  String joinedDate(String date) {
    return 'Присоединился $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Просмотреть Gist\'ы пользователя $username';
  }

  @override
  String get openLink => 'Открыть ссылку';

  @override
  String openLinkConfirmation(String url) {
    return 'Вы хотите открыть эту ссылку в браузере?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Не удалось открыть ссылку';

  @override
  String get noFollowersFound => 'Подписчиков не найдено';

  @override
  String get noFollowingFound => 'Нет подписок';

  @override
  String errorLoadingFollowers(String error) {
    return 'Ошибка загрузки подписчиков: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Ошибка загрузки подписок: $error';
  }

  @override
  String get deleteIsPermanent => 'Это действие необратимо.';

  @override
  String typeToConfirm(String text) {
    return 'Введите \"$text\", чтобы подтвердить:';
  }

  @override
  String typeExactly(String text) {
    return 'Пожалуйста, введите \"$text\" точно';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Файл \"$fileName\" удалён';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Ошибка удаления файла: $error';
  }

  @override
  String get gistDeleted => 'Gist удален';

  @override
  String errorDeletingGist(String error) {
    return 'Ошибка удаления gist: $error';
  }

  @override
  String get noFilesAvailable => 'Файлы отсутствуют';

  @override
  String get fileDataNotAvailable => 'Данные файла недоступны';

  @override
  String get copied => 'Скопировано!';

  @override
  String get copyToClipboard => 'Копировать в буфер обмена';

  @override
  String get contentCopiedToClipboard => 'Контент скопирован в буфер обмена';

  @override
  String get copyGistContentToClipboard =>
      'Скопировать содержимое gist в буфер обмена';

  @override
  String get internetNotAvailable => 'Нет подключения к интернету';

  @override
  String get editGist => 'Изменить заметку';
}
