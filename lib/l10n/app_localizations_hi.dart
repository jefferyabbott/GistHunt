// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get signIn => 'GitHub से साइन इन करें';

  @override
  String get search => 'खोजें';

  @override
  String get allLanguages => 'सभी भाषाएं';

  @override
  String get darkMode => 'डार्क मोड';

  @override
  String get theme => 'थीम';

  @override
  String get lightTheme => 'लाइट';

  @override
  String get darkTheme => 'डार्क';

  @override
  String get systemTheme => 'सिस्टम';

  @override
  String get fontSize => 'फ़ॉन्ट आकार';

  @override
  String get logout => 'लॉग आउट';

  @override
  String get account => 'खाता';

  @override
  String get system => 'सिस्टम';

  @override
  String get display => 'डिस्प्ले';

  @override
  String get deleteGist => 'Gist हटाएं';

  @override
  String get confirmDelete => 'क्या आप वाकई इस gist को हटाना चाहते हैं?';

  @override
  String get permanent => 'यह क्रिया पूर्ववत नहीं की जा सकती।';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get delete => 'हटाएं';

  @override
  String get filename => 'फ़ाइल नाम';

  @override
  String get description => 'विवरण (वैकल्पिक)';

  @override
  String get public => 'सार्वजनिक';

  @override
  String get created => 'बनाया गया:';

  @override
  String get lastUpdated => 'अंतिम अपडेट:';

  @override
  String get loadingGists => 'Gists लोड हो रहे हैं...';

  @override
  String get noGistsYet => 'अभी कोई gists नहीं';

  @override
  String get noMatchingGists => 'कोई मिलान gists नहीं मिले';

  @override
  String get createFirstGist => 'नीचे + बटन पर टैप करके अपना पहला gist बनाएं';

  @override
  String get adjustSearch =>
      'अपनी खोज या भाषा फ़िल्टर समायोजित करने का प्रयास करें';

  @override
  String get scrollToTop => 'शीर्ष पर स्क्रॉल करें';

  @override
  String get createNewGist => 'नया gist बनाएं';

  @override
  String get launchAtLogin => 'लॉगिन पर लॉन्च करें';

  @override
  String get quit => 'बाहर निकलें';

  @override
  String get star => 'स्टार';

  @override
  String get unstar => 'अनस्टार';

  @override
  String get starred => 'स्टार किया गया';

  @override
  String get fork => 'फ़ोर्क';

  @override
  String get forked => 'फ़ोर्क किया गया';

  @override
  String get forkSuccess => 'Gist सफलतापूर्वक फ़ोर्क किया गया!';

  @override
  String get publicGists => 'सार्वजनिक Gists';

  @override
  String get browsePublicGists => 'सार्वजनिक Gists ब्राउज़ करें';

  @override
  String get errorStarring => 'gist को स्टार करने में त्रुटि';

  @override
  String get errorForking => 'gist को फ़ोर्क करने में त्रुटि';

  @override
  String get loadMore => 'और लोड करें';

  @override
  String get noPublicGists => 'कोई सार्वजनिक gists नहीं मिले';

  @override
  String get starredGists => 'स्टार किए गए Gists';

  @override
  String get myGists => 'मेरे Gists';

  @override
  String get share => 'शेयर करें';

  @override
  String get shareGist => 'Gist शेयर करें';

  @override
  String get exportFile => 'फ़ाइल के रूप में निर्यात करें';

  @override
  String get generateQRCode => 'QR कोड जेनरेट करें';

  @override
  String get copyEmbedCode => 'एम्बेड कोड कॉपी करें';

  @override
  String get copyGistUrl => 'Gist URL कॉपी करें';

  @override
  String get moreActions => 'अधिक क्रियाएं';

  @override
  String get exportSuccess => 'Gist सफलतापूर्वक निर्यात किया गया';

  @override
  String get exportError => 'gist निर्यात करने में त्रुटि';

  @override
  String get embedCodeCopied => 'एम्बेड कोड क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String get urlCopied => 'URL क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String get qrCodeTitle => 'QR कोड';

  @override
  String get scanToOpen => 'gist खोलने के लिए स्कैन करें';

  @override
  String get searchPublicGistsHint => 'खोजें या @उपयोगकर्तानाम';

  @override
  String get close => 'बंद करें';

  @override
  String get clear => 'साफ़ करें';

  @override
  String get tryDifferentSearch => 'एक अलग खोज शब्द आज़माएं';

  @override
  String showingGistsFromUser(int count) {
    return 'उपयोगकर्ता से $count gists दिखा रहे हैं';
  }

  @override
  String foundInLoadedGists(int count) {
    return 'लोड किए गए gists में $count मिले। उपयोगकर्ता के सभी gists प्राप्त करने के लिए @उपयोगकर्तानाम का उपयोग करें।';
  }

  @override
  String get raw => 'रॉ';

  @override
  String get preview => 'पूर्वावलोकन';

  @override
  String get sortBy => 'इसके अनुसार क्रमबद्ध करें';

  @override
  String get sortDateNewest => 'तारीख (नवीनतम)';

  @override
  String get sortDateOldest => 'तारीख (सबसे पुराना)';

  @override
  String get sortNameAsc => 'नाम (A-Z)';

  @override
  String get sortNameDesc => 'नाम (Z-A)';

  @override
  String get sortLanguage => 'भाषा';

  @override
  String get sortStars => 'स्टार';

  @override
  String get pin => 'पिन करें';

  @override
  String get unpin => 'अनपिन करें';

  @override
  String get pinned => 'पिन किया गया';

  @override
  String get archive => 'संग्रह करें';

  @override
  String get unarchive => 'असंग्रहित करें';

  @override
  String get archived => 'संग्रहित';

  @override
  String get showArchived => 'संग्रहित दिखाएं';

  @override
  String get hideArchived => 'संग्रहित छुपाएं';

  @override
  String get gistPinned => 'Gist पिन किया गया';

  @override
  String get gistUnpinned => 'Gist अनपिन किया गया';

  @override
  String get gistArchived => 'Gist संग्रहित किया गया';

  @override
  String get gistUnarchived => 'Gist असंग्रहित किया गया';

  @override
  String get organize => 'व्यवस्थित करें';

  @override
  String get exportCurrentFile => 'चयनित फ़ाइल निर्यात करें';

  @override
  String get exportAllFiles => 'सभी फ़ाइलें निर्यात करें';

  @override
  String get shareCurrentFile => 'चयनित फ़ाइल शेयर करें';

  @override
  String get shareAllFiles => 'सभी फ़ाइलें शेयर करें';

  @override
  String get deleteSelectedFile => 'चयनित फ़ाइल हटाएं';

  @override
  String get deleteAllFiles => 'पूरा Gist हटाएं';

  @override
  String get exportAllSuccess => 'सभी फ़ाइलें निर्यात की गईं';

  @override
  String filesExported(int count) {
    return '$count फ़ाइलें निर्यात की गईं';
  }

  @override
  String get openInFinderAfterExport => 'निर्यात के बाद Finder में खोलें';

  @override
  String get ok => 'ठीक है';

  @override
  String get open => 'खल';

  @override
  String get discard => 'त्याग करें';

  @override
  String errorWithDetails(String error) {
    return 'त्रट: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'सामग्री लोड करने में त्रुट: $statusCode';
  }

  @override
  String get noDescription => 'कोई विवरण नहीं';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count और फ़इल',
      one: '1 और फ़इल',
    );
    return '...और $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'बनाया गया: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'अद्यतत: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'अतिम अपडेट: $time';
  }

  @override
  String get deleteFile => 'फ़इल हटाएं';

  @override
  String deleteFileMessage(String fileName) {
    return 'आप फ़इल \"$fileName\" को स्थायी रूप से हटाने जा रहे हैं।';
  }

  @override
  String get deleteGistMessage => 'आप यह गस्ट स्थायी रूप से हटाने वाले हैं।';

  @override
  String get deleteEntireGistMessage =>
      'आप इस पूरे गस्ट और इसकी सभी फ़इलों को स्थायी रूप से हटाने वाले हैं।';

  @override
  String get conflictResolution => 'संघर्ष समाधान';

  @override
  String get allConflictsResolved => 'सभी टकराव हल हो गए!';

  @override
  String conflictProgress(int current, int total) {
    return 'संघर्ष $current में से $total';
  }

  @override
  String get previousConflict => 'पिछला विवाद';

  @override
  String get nextConflict => 'अगला विवाद';

  @override
  String get conflictExplanation =>
      'यह गस्ट स्थानीय रूप से और दूरस्थ रूप से दोनों जगह संशोधित किया गया था। किस संस्करण को रखना है, चुनें।';

  @override
  String conflictGistLabel(String name) {
    return 'गस्ट: $name';
  }

  @override
  String get yourLocalVersion => 'आपका स्थानीय संस्करण';

  @override
  String get remoteVersionGitHub => 'रमट संस्करण (GitHub)';

  @override
  String get chooseResolution => 'संकल्प चुनें:';

  @override
  String get keepMyLocalChanges => 'मेरे स्थानीय बदलाव रखें';

  @override
  String get keepMyLocalChangesDescription =>
      'अपनी स्थानीय बदलाव से रिमोट संस्करण को बदल।';

  @override
  String get keepRemoteVersion => 'रमट संस्करण रखें';

  @override
  String get keepRemoteVersionDescription =>
      'अपने स्थानीय बदलाव को त्याग और GitHub संस्करण का उपयोग करें।';

  @override
  String get discardLocalChanges => 'स्थनीय बदलाव त्याग';

  @override
  String get discardLocalChangesDescription => 'सिक क्यू से यह ऑपरेशन हटाएं';

  @override
  String get modifiedUnknown => 'संशोधत: अज्ञात';

  @override
  String modifiedAt(String time) {
    return 'संशोधत: $time';
  }

  @override
  String get filesLabel => 'फ़इल:';

  @override
  String get fileDeletedLabel => 'हटाया गया';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अक्षर',
      one: '1 अक्षर',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'अभी';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count मिनट पहले',
      one: '1 मिनट पहले',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count घंटे पहले',
      one: '1 घंटा पहले',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन पहले',
      one: '1 दिन पहले',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'स्थनीय परिवर्तन रखें?';

  @override
  String get keepLocalChangesMessage =>
      'यह आपके स्थानीय परिवर्तनों से रिमोट संस्करण को अधिलेखित कर देगा। यह क्रिया रद्द नहीं की जा सकती।';

  @override
  String get keepLocal => 'स्थनीय रखें';

  @override
  String get keepRemoteVersionTitle => 'रमट संस्करण रखें?';

  @override
  String get keepRemoteVersionMessage =>
      'यह आपके स्थानीय बदलाव को त्याग देगा और रिमोट संस्करण रखेगा। यह क्रिया रद्द नहीं की जा सकती।';

  @override
  String get keepRemote => 'रमट रखें';

  @override
  String get discardChangesTitle => 'परवर्तन त्याग?';

  @override
  String get discardChangesMessage =>
      'आपके स्थानीय बदलाव को बिना सिक किए हटा दिया जाएगा। यह क्रिया रद्द नहीं की जा सकती।';

  @override
  String get gistMustHaveOneFile => 'गस्ट में कम से कम एक फ़इल होनी चाहिए।';

  @override
  String errorCreatingGist(String error) {
    return 'गस्ट बनाने में त्रुट: $error';
  }

  @override
  String get gistSavedOffline =>
      'गस्ट ऑफ़लाइन सहेजा गया। कनेक्ट होने पर सिक होगा।';

  @override
  String errorSavingGist(String error) {
    return 'गस्ट सहेजने में त्रुट: $error';
  }

  @override
  String get changesSavedOffline =>
      'परवर्तन ऑफ़लाइन सहेजे गए। कनेक्ट होने पर सिंक्रोनाइज़ किया जाएगा।';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'क्या आप केवल \"$fileName\" हटाना चाहते हैं या पूरा गस्ट?';
  }

  @override
  String errorDeleting(String error) {
    return 'हटाने में त्रुट: $error';
  }

  @override
  String get addFile => 'फ़इल जोड़';

  @override
  String get removeFile => 'फ़इल हटाएं';

  @override
  String newFileNumbered(int number) {
    return 'नया फ़इल $number';
  }

  @override
  String get newGist => 'नया Gist';

  @override
  String get filenameHint => 'उदाहरण के लिए, script.py';

  @override
  String get offlineNoCachedGists =>
      'आप ऑफ़लाइन हैं। कोई कैश किए गए गस्ट उपलब्ध नहीं हैं।';

  @override
  String get syncStatus => 'सिक स्थिति';

  @override
  String get syncing => 'सिक हो रहा है...';

  @override
  String pendingCountLabel(int count) {
    return 'लबित: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'संघर्ष: $count';
  }

  @override
  String get operationsLabel => 'संचलन:';

  @override
  String get resolveConflicts => 'संघर्ष हल करें';

  @override
  String get willSyncWhenRestored =>
      'कनेक्शन बहाल होते ही स्वतः सिंक्रोनाइज़ हो जाएगा।';

  @override
  String get syncNow => 'सिक करें';

  @override
  String get selectLanguage => 'भाषा चुनें';

  @override
  String get offlineChangesWillSync =>
      'आप ऑफ़लाइन हैं। कनेक्ट होने पर बदलाव सिक हो जाएंगे।';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count लंबित',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'सारजनिक गस्ट लोड करने में त्रुट: $error';
  }

  @override
  String errorSearching(String error) {
    return 'खज में त्रुट: $error';
  }

  @override
  String byAuthor(String author) {
    return 'द्वारा $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'साइन इन करने में त्रुट: $error';
  }

  @override
  String get connectingToGitHub => 'GitHub से कनेक्ट हो रहा है';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'लगन पर शुरू करने में त्रुट: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'ऐप बंद करने में त्रुट: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'लग आउट करने में त्रुट: $error';
  }

  @override
  String get tabSize => 'टब आकार';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count स्थान',
      one: '1 स्थान',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'टब कुंजी $count स्थान डालेगी',
      one: 'टब कुंजी 1 स्थान डालेगी',
    );
    return '$_temp0';
  }

  @override
  String get errorLoadingUserProfile =>
      'उपयोगकर्ता प्रोफ़इल लोड करने में त्रुट';

  @override
  String get followers => 'अनुयायी';

  @override
  String get following => 'अनुसरण करने वाले';

  @override
  String get repos => 'रिपोज़टरीज़';

  @override
  String get gists => 'गस्ट';

  @override
  String joinedDate(String date) {
    return 'जुड़ा $date';
  }

  @override
  String viewUserGists(String username) {
    return '$username के Gists देखें';
  }

  @override
  String get openLink => 'लिक खोल';

  @override
  String openLinkConfirmation(String url) {
    return 'क्या आप यह लिंक अपने ब्राउज़र में खोलना चाहते हैं?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'लिक नहीं खोल पाए';

  @override
  String get noFollowersFound => 'कोई अनुयायी नहीं मिला';

  @override
  String get noFollowingFound => 'कोई भी फॉलो नहीं किया गया';

  @override
  String errorLoadingFollowers(String error) {
    return 'अनुयाययों को लोड करने में त्रुट: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'फ़लोइंग लोड करने में त्रुट: $error';
  }

  @override
  String get deleteIsPermanent =>
      'यह क्रिया अपरवर्तनीय है और इसे पूर्ववत नहीं किया जा सकता।';

  @override
  String typeToConfirm(String text) {
    return '\"$text\" टाइप करके पुष्टि करें:';
  }

  @override
  String typeExactly(String text) {
    return 'कृपया \"$text\" बिलकुल वैसा ही टाइप करें।';
  }

  @override
  String fileDeleted(String fileName) {
    return 'फ़इल \"$fileName\" हटई गई।';
  }

  @override
  String errorDeletingFile(String error) {
    return 'फ़इल हटाने में त्रुट: $error';
  }

  @override
  String get gistDeleted => 'गस्ट हटा दिया गया';

  @override
  String errorDeletingGist(String error) {
    return 'गस्ट हटाने में त्रुट: $error';
  }

  @override
  String get noFilesAvailable => 'कोई फ़इल उपलब्ध नहीं हैं';

  @override
  String get fileDataNotAvailable => 'फ़इल डेटा उपलब्ध नहीं है';

  @override
  String get copied => 'कॉपी किया गया!';

  @override
  String get copyToClipboard => 'क्पबोर्ड में कॉपी करें';

  @override
  String get contentCopiedToClipboard => 'सामग्री क्पबोर्ड में कॉपी की गई';

  @override
  String get copyGistContentToClipboard => 'गस्ट सामग्री को कॉपी करें';

  @override
  String get internetNotAvailable => 'इंटरनेट कनेक्शन उपलब्ध नहीं है';

  @override
  String get editGist => 'गस्ट संपादित करें';
}
