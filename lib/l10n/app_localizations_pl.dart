// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get signIn => 'Zaloguj się przez GitHub';

  @override
  String get search => 'Szukaj';

  @override
  String get allLanguages => 'Wszystkie języki';

  @override
  String get darkMode => 'TRYB CIEMNY';

  @override
  String get theme => 'Motyw';

  @override
  String get lightTheme => 'Jasny';

  @override
  String get darkTheme => 'Ciemny';

  @override
  String get systemTheme => 'System';

  @override
  String get fontSize => 'Rozmiar czcionki';

  @override
  String get logout => 'Wyloguj';

  @override
  String get account => 'Konto';

  @override
  String get system => 'System';

  @override
  String get display => 'Wyświetlanie';

  @override
  String get deleteGist => 'Usuń Gist';

  @override
  String get confirmDelete => 'Czy na pewno chcesz usunąć ten gist?';

  @override
  String get permanent => 'Tej akcji nie można cofnąć.';

  @override
  String get cancel => 'Anuluj';

  @override
  String get delete => 'Usuń';

  @override
  String get filename => 'Nazwa pliku';

  @override
  String get description => 'Opis (opcjonalnie)';

  @override
  String get public => 'Publiczny';

  @override
  String get created => 'utworzono:';

  @override
  String get lastUpdated => 'Ostatnia aktualizacja:';

  @override
  String get loadingGists => 'Ładowanie Gists...';

  @override
  String get noGistsYet => 'Nie ma jeszcze gistów';

  @override
  String get noMatchingGists => 'Nie znaleziono pasujących gistów';

  @override
  String get createFirstGist =>
      'Utwórz swój pierwszy gist, dotykając przycisku + poniżej';

  @override
  String get adjustSearch => 'Spróbuj dostosować wyszukiwanie lub filtr języka';

  @override
  String get scrollToTop => 'Przewiń do góry';

  @override
  String get createNewGist => 'Utwórz nowy gist';

  @override
  String get launchAtLogin => 'Launch at Login';

  @override
  String get quit => 'Wyjdź';

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
  String get sortBy => 'Sortuj według';

  @override
  String get sortDateNewest => 'Data (Najnowsze)';

  @override
  String get sortDateOldest => 'Data (Najstarsza)';

  @override
  String get sortNameAsc => 'Imię (A-Z)';

  @override
  String get sortNameDesc => 'Imię (A-Z)';

  @override
  String get sortLanguage => 'Język';

  @override
  String get sortStars => 'Gwiazdy';

  @override
  String get pin => 'Oczywiście!\n\nPin';

  @override
  String get unpin => 'Odpinaj';

  @override
  String get pinned => 'Poniesione';

  @override
  String get archive => 'Zarchiwuj';

  @override
  String get unarchive => 'Odtworz archiwum';

  @override
  String get archived => 'Zarchiwizowany';

  @override
  String get showArchived => 'Pokaż Archiwum';

  @override
  String get hideArchived => 'Ukryj Archiwum';

  @override
  String get gistPinned => 'Gist zablokowany';

  @override
  String get gistUnpinned => 'Gist odpinowany';

  @override
  String get gistArchived => 'Gist archiwizowany';

  @override
  String get gistUnarchived => 'Gist odarzynowany';

  @override
  String get organize => 'Zorganizuj';

  @override
  String get exportCurrentFile => 'Eksportuj Wybrany Plik';

  @override
  String get exportAllFiles => 'Eksportuj wszystkie pliki';

  @override
  String get shareCurrentFile => 'Udostępnij wybrany plik';

  @override
  String get shareAllFiles => 'Udostępnij wszystkie pliki';

  @override
  String get deleteSelectedFile => 'Usuń wybrany plik';

  @override
  String get deleteAllFiles => 'Usuń cały gist';

  @override
  String get exportAllSuccess => 'Wszystkie pliki wyeksportowane do';

  @override
  String filesExported(int count) {
    return '$count plików wyeksportowano';
  }

  @override
  String get openInFinderAfterExport =>
      'Otwórz Finder po wyeksportowaniu pliku';

  @override
  String get ok => 'OK';

  @override
  String get open => 'Otwórz';

  @override
  String get discard => 'Odrzuć';

  @override
  String errorWithDetails(String error) {
    return 'Błąd: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Błąd ładowania zawartości: $statusCode';
  }

  @override
  String get noDescription => 'Brak opisu';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dodatkowe pliki',
      one: '1 dodatkowy plik',
    );
    return '... i $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Utworzono: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Zaktualizowano: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Ostatnio zaktualizowano: $time';
  }

  @override
  String get deleteFile => 'Usuń plik';

  @override
  String deleteFileMessage(String fileName) {
    return 'Zamierzasz trwale usunąć plik \"$fileName\".';
  }

  @override
  String get deleteGistMessage => 'Zamierzasz trwale usunąć tę notatkę.';

  @override
  String get deleteEntireGistMessage =>
      'Zamierzasz trwale usunąć cały ten gist wraz ze wszystkimi plikami.';

  @override
  String get conflictResolution => 'Rozwiązywanie konfliktów';

  @override
  String get allConflictsResolved => 'Wszystkie konflikty zostały rozwiązane!';

  @override
  String conflictProgress(int current, int total) {
    return 'Konflikt $current z $total';
  }

  @override
  String get previousConflict => 'Poprzedni konflikt';

  @override
  String get nextConflict => 'Następny konflikt';

  @override
  String get conflictExplanation =>
      'Ten Gist został zmodyfikowany lokalnie i zdalnie. Wybierz, którą wersję zachować.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Twoja lokalna wersja';

  @override
  String get remoteVersionGitHub => 'Wersja zdalna (GitHub)';

  @override
  String get chooseResolution => 'Wybierz sposób rozwiązania:';

  @override
  String get keepMyLocalChanges => 'Zachowaj moje zmiany';

  @override
  String get keepMyLocalChangesDescription =>
      'Zastąp wersję zdalną Twoimi lokalnymi zmianami';

  @override
  String get keepRemoteVersion => 'Zachowaj wersję zdalną';

  @override
  String get keepRemoteVersionDescription =>
      'Odrzuć lokalne zmiany i użyj wersji z GitHub';

  @override
  String get discardLocalChanges => 'Odrzuć lokalne zmiany';

  @override
  String get discardLocalChangesDescription =>
      'Usuń tę operację z kolejki synchronizacji';

  @override
  String get modifiedUnknown => 'Zmodyfikowano: nieznany';

  @override
  String modifiedAt(String time) {
    return 'Zmodyfikowano: $time';
  }

  @override
  String get filesLabel => 'Pliki:';

  @override
  String get fileDeletedLabel => 'usunięto';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count znaki',
      one: '1 znak',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Teraz';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuty temu',
      one: '1 minuta temu',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count godziny temu',
      one: '1 godzina temu',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dni temu',
      one: '1 dzień temu',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Zachować lokalne zmiany?';

  @override
  String get keepLocalChangesMessage =>
      'Zastąpi to zdalną wersję Twoimi lokalnymi zmianami. Ta czynność nie może zostać cofnięta.';

  @override
  String get keepLocal => 'Zachowaj lokalnie';

  @override
  String get keepRemoteVersionTitle => 'Zachować wersję zdalną?';

  @override
  String get keepRemoteVersionMessage =>
      'To spowoduje odrzucenie lokalnych zmian i zachowanie wersji zdalnej. Ta czynność nie może zostać cofnięta.';

  @override
  String get keepRemote => 'Zachowaj zdalne';

  @override
  String get discardChangesTitle => 'Odrzucić zmiany?';

  @override
  String get discardChangesMessage =>
      'Twoje lokalne zmiany zostaną usunięte bez synchronizacji. Ta czynność jest nieodwracalna.';

  @override
  String get gistMustHaveOneFile => 'Gist musi zawierać co najmniej jeden plik';

  @override
  String errorCreatingGist(String error) {
    return 'Błąd podczas tworzenia gista: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist zapisany w trybie offline. Zsynchronizowany po połączeniu.';

  @override
  String errorSavingGist(String error) {
    return 'Błąd podczas zapisywania gista: $error';
  }

  @override
  String get changesSavedOffline =>
      'Zmiany zapisane offline. Zsynchronizują się po połączeniu.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Czy chcesz usunąć tylko \"$fileName\" czy cały gist?';
  }

  @override
  String errorDeleting(String error) {
    return 'Błąd usuwania: $error';
  }

  @override
  String get addFile => 'Dodaj plik';

  @override
  String get removeFile => 'Usuń plik';

  @override
  String newFileNumbered(int number) {
    return 'Nowy plik $number';
  }

  @override
  String get newGist => 'Nowy Gist';

  @override
  String get filenameHint => 'np. skrypt.py';

  @override
  String get offlineNoCachedGists =>
      'Jesteś offline. Brak dostępnych zapisanych notatek.';

  @override
  String get syncStatus => 'Status synchronizacji';

  @override
  String get syncing => 'Synchronizacja...';

  @override
  String pendingCountLabel(int count) {
    return 'W oczekiwaniu: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Konflikty: $count';
  }

  @override
  String get operationsLabel => 'Operacje:';

  @override
  String get resolveConflicts => 'Rozwiąż konflikty';

  @override
  String get willSyncWhenRestored =>
      'Synchronizacja nastąpi automatycznie po ponownym połączeniu';

  @override
  String get syncNow => 'Synchronizuj teraz';

  @override
  String get selectLanguage => 'Wybierz język';

  @override
  String get offlineChangesWillSync =>
      'Jesteś offline. Zmiany zostaną zsynchronizowane po połączeniu.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count oczekujących',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Błąd podczas ładowania publicznych gistów: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Błąd wyszukiwania: $error';
  }

  @override
  String byAuthor(String author) {
    return 'autor: $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Błąd podczas logowania: $error';
  }

  @override
  String get connectingToGitHub => 'Łączenie z GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Błąd włączania przy starcie systemu: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Błąd podczas zamykania aplikacji: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Błąd podczas wylogowywania: $error';
  }

  @override
  String get tabSize => 'Rozmiar tabulacji';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count odstępy',
      one: '1 odstęp',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Klawisz Tab wstawia $count spacje',
      one: 'Klawisz Tab wstawia 1 spację',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'Błąd ładowania profilu użytkownika';

  @override
  String get followers => 'Obserwujący';

  @override
  String get following => 'Obserwujący';

  @override
  String get repos => 'Repozytoria';

  @override
  String get gists => 'Gisty';

  @override
  String joinedDate(String date) {
    return 'Dołączył(a) $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Wyświetl gisty użytkownika $username';
  }

  @override
  String get openLink => 'Otwórz link';

  @override
  String openLinkConfirmation(String url) {
    return 'Czy chcesz otworzyć ten link w przeglądarce?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Nie można otworzyć linku';

  @override
  String get noFollowersFound => 'Brak obserwujących';

  @override
  String get noFollowingFound => 'Nie znaleziono obserwujących';

  @override
  String errorLoadingFollowers(String error) {
    return 'Błąd podczas ładowania obserwujących: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Błąd ładowania obserwujących: $error';
  }

  @override
  String get deleteIsPermanent => 'Ta operacja jest nieodwracalna.';

  @override
  String typeToConfirm(String text) {
    return 'Wpisz \"$text\", aby potwierdzić:';
  }

  @override
  String typeExactly(String text) {
    return 'Wpisz dokładnie \"$text\"';
  }

  @override
  String fileDeleted(String fileName) {
    return 'Plik \"$fileName\" został usunięty';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Błąd usuwania pliku: $error';
  }

  @override
  String get gistDeleted => 'Gist usunięto';

  @override
  String errorDeletingGist(String error) {
    return 'Błąd usuwania gistu: $error';
  }

  @override
  String get noFilesAvailable => 'Brak plików';

  @override
  String get fileDataNotAvailable => 'Brak danych pliku';

  @override
  String get copied => 'Skopiowano!';

  @override
  String get copyToClipboard => 'Skopiuj do schowka';

  @override
  String get contentCopiedToClipboard => 'Zawartość skopiowana do schowka';

  @override
  String get copyGistContentToClipboard => 'Skopiuj zawartość gista do schowka';

  @override
  String get internetNotAvailable => 'Brak połączenia z Internetem';

  @override
  String get editGist => 'Edytuj notatkę';
}
