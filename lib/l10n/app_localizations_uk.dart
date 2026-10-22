// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get signIn => 'Увійти через GitHub';

  @override
  String get search => 'Пошук';

  @override
  String get allLanguages => 'Усі мови';

  @override
  String get darkMode => 'ТЕМНИЙ РЕЖИМ';

  @override
  String get theme => 'Тема';

  @override
  String get lightTheme => 'Світла';

  @override
  String get darkTheme => 'Темна';

  @override
  String get systemTheme => 'Системна';

  @override
  String get fontSize => 'Розмір шрифту';

  @override
  String get logout => 'Вийти';

  @override
  String get account => 'Обліковий запис';

  @override
  String get system => 'Система';

  @override
  String get display => 'Відображення';

  @override
  String get deleteGist => 'Видалити Gist';

  @override
  String get confirmDelete => 'Ви впевнені, що хочете видалити цей gist?';

  @override
  String get permanent => 'Цю дію неможливо скасувати.';

  @override
  String get cancel => 'Скасувати';

  @override
  String get delete => 'Видалити';

  @override
  String get filename => 'Ім\'я файлу';

  @override
  String get description => 'Опис (необов\'язково)';

  @override
  String get public => 'Публічний';

  @override
  String get created => 'створено:';

  @override
  String get lastUpdated => 'Останнє оновлення:';

  @override
  String get loadingGists => 'Завантаження Gists...';

  @override
  String get noGistsYet => 'Поки що немає gistів';

  @override
  String get noMatchingGists => 'Відповідні gistи не знайдено';

  @override
  String get createFirstGist =>
      'Створіть свій перший gist, натиснувши кнопку + нижче';

  @override
  String get adjustSearch => 'Спробуйте налаштувати пошук або мовний фільтр';

  @override
  String get scrollToTop => 'Прокрутити вгору';

  @override
  String get createNewGist => 'Створити новий gist';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => 'Вихід';

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
  String get sortBy => 'Сортувати за';

  @override
  String get sortDateNewest => 'Дата (Новіші)';

  @override
  String get sortDateOldest => 'Дата (Найстаріша)';

  @override
  String get sortNameAsc => 'Ім\'я (А-Я)';

  @override
  String get sortNameDesc => 'Ім\'я (А-Я)';

  @override
  String get sortLanguage => 'Мова';

  @override
  String get sortStars => 'Зірки';

  @override
  String get pin => 'Закріпити';

  @override
  String get unpin => 'Відкріпити';

  @override
  String get pinned => 'Пінований';

  @override
  String get archive => 'Архів';

  @override
  String get unarchive => 'Розархивувати';

  @override
  String get archived => 'Архівований';

  @override
  String get showArchived => 'Показати Архіvaktyvni';

  @override
  String get hideArchived => 'Сховати Архіvakовані';

  @override
  String get gistPinned => 'Гіст піннено';

  @override
  String get gistUnpinned => 'Гіст відпинений';

  @override
  String get gistArchived => 'Навчальна записка збережена';

  @override
  String get gistUnarchived => 'Гіст розархіваційний';

  @override
  String get organize => 'Організувати';

  @override
  String get exportCurrentFile => 'Експорт Вибраного Файлу';

  @override
  String get exportAllFiles => 'Експортувати всі файли';

  @override
  String get shareCurrentFile => 'Поділитися обраною файлом';

  @override
  String get shareAllFiles => 'Поділитися всіма файлами';

  @override
  String get deleteSelectedFile => 'Видалення вибраного файлу';

  @override
  String get deleteAllFiles => 'Видалити всі файли';

  @override
  String get exportAllSuccess => 'Всі файли експортовані до';

  @override
  String filesExported(int count) {
    return '$count файли експортовані';
  }

  @override
  String get openInFinderAfterExport => 'Відкрити Файндер після експорту файлу';

  @override
  String get ok => 'Гаразд';

  @override
  String get open => 'Відкрити';

  @override
  String get discard => 'Відкинути';

  @override
  String errorWithDetails(String error) {
    return 'Помилка: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Помилка завантаження вмісту: $statusCode';
  }

  @override
  String get noDescription => 'Без опису';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count більше файлів',
      one: 'ще 1 файл',
    );
    return '... та $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Створено: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Оновлено: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Оновлено: $time';
  }

  @override
  String get deleteFile => 'Видалити файл';

  @override
  String deleteFileMessage(String fileName) {
    return 'Ви збираєтеся назавжди видалити файл \"$fileName\".';
  }

  @override
  String get deleteGistMessage => 'Ви збираєтеся назавжди видалити цей gist.';

  @override
  String get deleteEntireGistMessage =>
      'Ви збираєтеся назавжди видалити весь цей gist та всі його файли.';

  @override
  String get conflictResolution => 'Вирішення конфліктів';

  @override
  String get allConflictsResolved => 'Усі конфлікти вирішено!';

  @override
  String conflictProgress(int current, int total) {
    return 'Конфлікт $current з $total';
  }

  @override
  String get previousConflict => 'Попередній конфлікт';

  @override
  String get nextConflict => 'Наступний конфлікт';

  @override
  String get conflictExplanation =>
      'Цей Gist було змінено як локально, так і віддалено. Оберіть, яку версію зберегти.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Ваша локальна версія';

  @override
  String get remoteVersionGitHub => 'Віддалена версія (GitHub)';

  @override
  String get chooseResolution => 'Виберіть спосіб вирішення:';

  @override
  String get keepMyLocalChanges => 'Зберегти мої зміни';

  @override
  String get keepMyLocalChangesDescription =>
      'Замінити віддалену версію вашими локальними змінами';

  @override
  String get keepRemoteVersion => 'Залишити віддалену версію';

  @override
  String get keepRemoteVersionDescription =>
      'Відкинути локальні зміни та використати версію з GitHub';

  @override
  String get discardLocalChanges => 'Відкинути локальні зміни';

  @override
  String get discardLocalChangesDescription =>
      'Видалити цю операцію з черги синхронізації';

  @override
  String get modifiedUnknown => 'Змінено: невідомо';

  @override
  String modifiedAt(String time) {
    return 'Змінено: $time';
  }

  @override
  String get filesLabel => 'Файли:';

  @override
  String get fileDeletedLabel => 'видалено';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count символи',
      one: '1 символ',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Щойно';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count хвилин тому',
      one: '1 хвилину тому',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count години тому',
      one: '1 годину тому',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дні тому',
      one: '1 день тому',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Зберегти локальні зміни?';

  @override
  String get keepLocalChangesMessage =>
      'Це перезапише віддалену версію вашими локальними змінами. Цю дію неможливо скасувати.';

  @override
  String get keepLocal => 'Залишити локально';

  @override
  String get keepRemoteVersionTitle => 'Залишити віддалену версію?';

  @override
  String get keepRemoteVersionMessage =>
      'Це відкине ваші локальні зміни та збереже віддалену версію. Дія не може бути скасована.';

  @override
  String get keepRemote => 'Залишити віддалену версію';

  @override
  String get discardChangesTitle => 'Відкинути зміни?';

  @override
  String get discardChangesMessage =>
      'Це видалить ваші локальні зміни без їх синхронізації. Дія не може бути скасована.';

  @override
  String get gistMustHaveOneFile => 'Gist повинен містити хоча б один файл';

  @override
  String errorCreatingGist(String error) {
    return 'Помилка створення gist: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist збережено в офлайн-режимі. Синхронізується після підключення.';

  @override
  String errorSavingGist(String error) {
    return 'Помилка збереження Gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'Зміни збережено в офлайн-режимі. Синхронізується після підключення.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Ви хочете видалити лише \"$fileName\" або весь gist?';
  }

  @override
  String errorDeleting(String error) {
    return 'Помилка видалення: $error';
  }

  @override
  String get addFile => 'Додати файл';

  @override
  String get removeFile => 'Видалити файл';

  @override
  String newFileNumbered(int number) {
    return 'Новий файл $number';
  }

  @override
  String get newGist => 'Новий Gist';

  @override
  String get filenameHint => 'напр., script.py';

  @override
  String get offlineNoCachedGists => 'Ви не в мережі. Немає кешованих Gist.';

  @override
  String get syncStatus => 'Статус синхронізації';

  @override
  String get syncing => 'Синхронізація...';

  @override
  String pendingCountLabel(int count) {
    return 'В очікуванні: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Конфлікти: $count';
  }

  @override
  String get operationsLabel => 'Операції:';

  @override
  String get resolveConflicts => 'Вирішити конфлікти';

  @override
  String get willSyncWhenRestored =>
      'Синхронізація відбудеться автоматично після відновлення з’єднання';

  @override
  String get syncNow => 'Синхронізувати зараз';

  @override
  String get selectLanguage => 'Оберіть мову';

  @override
  String get offlineChangesWillSync =>
      'Ви не в мережі. Зміни синхронізуються після підключення.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count в очікуванні',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Помилка завантаження публічних Gist: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Помилка пошуку: $error';
  }

  @override
  String byAuthor(String author) {
    return 'від $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Помилка входу: $error';
  }

  @override
  String get connectingToGitHub => 'Підключення до GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Помилка встановлення автоматичного запуску: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Помилка під час закриття застосунку: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Помилка виходу: $error';
  }

  @override
  String get tabSize => 'Розмір табуляції';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пробілів',
      one: '1 пробіл',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Кнопка Tab вставлятиме $count пробілів',
      one: 'Кнопка Tab вставлятиме 1 пробіл',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile =>
      'Помилка завантаження профілю користувача';

  @override
  String get followers => 'Підписники';

  @override
  String get following => 'Підписки';

  @override
  String get repos => 'Репозиторії';

  @override
  String get gists => 'Гісти';

  @override
  String joinedDate(String date) {
    return 'Приєднався $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Переглянути Gist\'и користувача $username';
  }

  @override
  String get openLink => 'Відкрити посилання';

  @override
  String openLinkConfirmation(String url) {
    return 'Чи бажаєте ви відкрити це посилання у вашому браузері?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Не вдалося відкрити посилання';

  @override
  String get noFollowersFound => 'Не знайдено підписників';

  @override
  String get noFollowingFound => 'Не знайдено підписок';

  @override
  String errorLoadingFollowers(String error) {
    return 'Помилка завантаження підписників: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Помилка завантаження підписок: $error';
  }

  @override
  String get deleteIsPermanent => 'Цю дію неможливо скасувати.';

  @override
  String typeToConfirm(String text) {
    return 'Введіть \"$text\" для підтвердження:';
  }

  @override
  String typeExactly(String text) {
    return 'Будь ласка, введіть \"$text\" точно';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Файл \"$fileName\" видалено';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Помилка видалення файлу: $error';
  }

  @override
  String get gistDeleted => 'Gist видалено';

  @override
  String errorDeletingGist(String error) {
    return 'Помилка видалення Gist: $error';
  }

  @override
  String get noFilesAvailable => 'Файли відсутні';

  @override
  String get fileDataNotAvailable => 'Дані файлу недоступні';

  @override
  String get copied => 'Скопійовано!';

  @override
  String get copyToClipboard => 'Скопіювати в буфер обміну';

  @override
  String get contentCopiedToClipboard => 'Контент скопійовано в буфер обміну';

  @override
  String get copyGistContentToClipboard =>
      'Скопіювати вміст Gist у буфер обміну';

  @override
  String get internetNotAvailable => 'Немає підключення до Інтернету';

  @override
  String get editGist => 'Редагувати gist';
}
