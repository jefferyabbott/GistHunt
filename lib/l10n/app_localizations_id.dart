// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get signIn => 'Masuk dengan GitHub';

  @override
  String get search => 'Cari';

  @override
  String get allLanguages => 'Semua Bahasa';

  @override
  String get darkMode => 'MODE GELAP';

  @override
  String get theme => 'Tema';

  @override
  String get lightTheme => 'Terang';

  @override
  String get darkTheme => 'Gelap';

  @override
  String get systemTheme => 'Sistem';

  @override
  String get fontSize => 'Ukuran Font';

  @override
  String get logout => 'Keluar';

  @override
  String get account => 'Akun';

  @override
  String get system => 'Sistem';

  @override
  String get display => 'Tampilan';

  @override
  String get deleteGist => 'Hapus Gist';

  @override
  String get confirmDelete => 'Apakah Anda yakin ingin menghapus gist ini?';

  @override
  String get permanent => 'Tindakan ini tidak dapat dibatalkan.';

  @override
  String get cancel => 'Batal';

  @override
  String get delete => 'Hapus';

  @override
  String get filename => 'Nama File';

  @override
  String get description => 'Deskripsi (opsional)';

  @override
  String get public => 'Publik';

  @override
  String get created => 'dibuat:';

  @override
  String get lastUpdated => 'Terakhir diperbarui:';

  @override
  String get loadingGists => 'Memuat Gists...';

  @override
  String get noGistsYet => 'Belum ada gists';

  @override
  String get noMatchingGists => 'Tidak ada gists yang cocok';

  @override
  String get createFirstGist =>
      'Buat gist pertama Anda dengan mengetuk tombol + di bawah';

  @override
  String get adjustSearch => 'Coba sesuaikan pencarian atau filter bahasa Anda';

  @override
  String get scrollToTop => 'Gulir ke atas';

  @override
  String get createNewGist => 'Buat gist baru';

  @override
  String get launchAtLogin => 'Jalankan saat Login';

  @override
  String get quit => 'Keluar';

  @override
  String get star => 'Bintang';

  @override
  String get unstar => 'Hapus Bintang';

  @override
  String get starred => 'Dibintangi';

  @override
  String get fork => 'Fork';

  @override
  String get forked => 'Di-fork';

  @override
  String get forkSuccess => 'Gist berhasil di-fork!';

  @override
  String get publicGists => 'Gists Publik';

  @override
  String get browsePublicGists => 'Jelajahi Gists Publik';

  @override
  String get errorStarring => 'Kesalahan membintangi gist';

  @override
  String get errorForking => 'Kesalahan mem-fork gist';

  @override
  String get loadMore => 'Muat Lebih Banyak';

  @override
  String get noPublicGists => 'Tidak ada gists publik ditemukan';

  @override
  String get starredGists => 'Gists Berbintang';

  @override
  String get myGists => 'Gists Saya';

  @override
  String get share => 'Bagikan';

  @override
  String get shareGist => 'Bagikan Gist';

  @override
  String get exportFile => 'Ekspor sebagai File';

  @override
  String get generateQRCode => 'Buat Kode QR';

  @override
  String get copyEmbedCode => 'Salin Kode Embed';

  @override
  String get copyGistUrl => 'Salin URL Gist';

  @override
  String get moreActions => 'Tindakan Lainnya';

  @override
  String get exportSuccess => 'Gist berhasil diekspor';

  @override
  String get exportError => 'Kesalahan mengekspor gist';

  @override
  String get embedCodeCopied => 'Kode embed disalin ke clipboard';

  @override
  String get urlCopied => 'URL disalin ke clipboard';

  @override
  String get qrCodeTitle => 'Kode QR';

  @override
  String get scanToOpen => 'Pindai untuk membuka gist';

  @override
  String get searchPublicGistsHint => 'Cari atau @namapengguna';

  @override
  String get close => 'Tutup';

  @override
  String get clear => 'Hapus';

  @override
  String get tryDifferentSearch => 'Coba istilah pencarian yang berbeda';

  @override
  String showingGistsFromUser(int count) {
    return 'Menampilkan $count gists dari pengguna';
  }

  @override
  String foundInLoadedGists(int count) {
    return 'Ditemukan $count di gists yang dimuat. Gunakan @namapengguna untuk mengambil semua gists dari pengguna.';
  }

  @override
  String get raw => 'Mentah';

  @override
  String get preview => 'Pratinjau';

  @override
  String get sortBy => 'Urutkan berdasarkan';

  @override
  String get sortDateNewest => 'Tanggal (Terbaru)';

  @override
  String get sortDateOldest => 'Tanggal (Terlama)';

  @override
  String get sortNameAsc => 'Nama (A-Z)';

  @override
  String get sortNameDesc => 'Nama (Z-A)';

  @override
  String get sortLanguage => 'Bahasa';

  @override
  String get sortStars => 'Bintang';

  @override
  String get pin => 'Sematkan';

  @override
  String get unpin => 'Lepas Sematan';

  @override
  String get pinned => 'Disematkan';

  @override
  String get archive => 'Arsipkan';

  @override
  String get unarchive => 'Batalkan Arsip';

  @override
  String get archived => 'Diarsipkan';

  @override
  String get showArchived => 'Tampilkan Arsip';

  @override
  String get hideArchived => 'Sembunyikan Arsip';

  @override
  String get gistPinned => 'Gist disematkan';

  @override
  String get gistUnpinned => 'Gist dilepas sematan';

  @override
  String get gistArchived => 'Gist diarsipkan';

  @override
  String get gistUnarchived => 'Gist dibatalkan arsip';

  @override
  String get organize => 'Atur';

  @override
  String get exportCurrentFile => 'Ekspor File Terpilih';

  @override
  String get exportAllFiles => 'Ekspor Semua File';

  @override
  String get shareCurrentFile => 'Bagikan File Terpilih';

  @override
  String get shareAllFiles => 'Bagikan Semua File';

  @override
  String get deleteSelectedFile => 'Hapus File Terpilih';

  @override
  String get deleteAllFiles => 'Hapus Seluruh Gist';

  @override
  String get exportAllSuccess => 'Semua file diekspor ke';

  @override
  String filesExported(int count) {
    return '$count file diekspor';
  }

  @override
  String get openInFinderAfterExport => 'Buka Finder setelah ekspor file';

  @override
  String get ok => 'OK';

  @override
  String get open => 'Buka';

  @override
  String get discard => 'Batal';

  @override
  String errorWithDetails(String error) {
    return 'Kesalahan: $error';
  }

  @override
  String errorLoadingContent(int statusCode) {
    return 'Gagal memuat konten: $statusCode';
  }

  @override
  String get noDescription => 'Tidak ada deskripsi';

  @override
  String moreFiles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count file lagi',
      one: '1 file lagi',
    );
    return '... dan $_temp0';
  }

  @override
  String createdTimeAgo(String time) {
    return 'Dibuat: $time';
  }

  @override
  String updatedTimeAgo(String time) {
    return 'Diperbarui: $time';
  }

  @override
  String lastUpdatedTimeAgo(String time) {
    return 'Terakhir diperbarui: $time';
  }

  @override
  String get deleteFile => 'Hapus File';

  @override
  String deleteFileMessage(String fileName) {
    return 'Anda akan menghapus berkas \"$fileName\" secara permanen.';
  }

  @override
  String get deleteGistMessage =>
      'Anda akan menghapus gist ini secara permanen.';

  @override
  String get deleteEntireGistMessage =>
      'Anda akan menghapus seluruh gist ini dan semua filenya secara permanen.';

  @override
  String get conflictResolution => 'Resolusi Konflik';

  @override
  String get allConflictsResolved => 'Semua konflik teratasi!';

  @override
  String conflictProgress(int current, int total) {
    return 'Konflik $current dari $total';
  }

  @override
  String get previousConflict => 'Konflik sebelumnya';

  @override
  String get nextConflict => 'Konflik berikutnya';

  @override
  String get conflictExplanation =>
      'Gist ini dimodifikasi secara lokal dan jarak jauh. Pilih versi mana yang ingin disimpan.';

  @override
  String conflictGistLabel(String name) {
    return 'Gist: $name';
  }

  @override
  String get yourLocalVersion => 'Versi Lokal Anda';

  @override
  String get remoteVersionGitHub => 'Versi Jarak Jauh (GitHub)';

  @override
  String get chooseResolution => 'Pilih Resolusi:';

  @override
  String get keepMyLocalChanges => 'Simpan Perubahan Lokal Saya';

  @override
  String get keepMyLocalChangesDescription =>
      'Timpa versi jarak jauh dengan perubahan lokal Anda';

  @override
  String get keepRemoteVersion => 'Simpan Versi Jarak Jauh';

  @override
  String get keepRemoteVersionDescription =>
      'Buang perubahan lokal Anda dan gunakan versi GitHub';

  @override
  String get discardLocalChanges => 'Buang Perubahan Lokal';

  @override
  String get discardLocalChangesDescription =>
      'Hapus operasi ini dari antrean sinkronisasi';

  @override
  String get modifiedUnknown => 'Dimodifikasi: tidak diketahui';

  @override
  String modifiedAt(String time) {
    return 'Dimodifikasi: $time';
  }

  @override
  String get filesLabel => 'Berkas:';

  @override
  String get fileDeletedLabel => 'terhapus';

  @override
  String charCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count karakter',
      one: '1 karakter',
    );
    return '$_temp0';
  }

  @override
  String get justNow => 'Baru saja';

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count menit lalu',
      one: '1 menit lalu',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jam lalu',
      one: '1 jam lalu',
    );
    return '$_temp0';
  }

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari lalu',
      one: '1 hari lalu',
    );
    return '$_temp0';
  }

  @override
  String get keepLocalChangesTitle => 'Simpan Perubahan Lokal?';

  @override
  String get keepLocalChangesMessage =>
      'Perubahan lokal Anda akan menimpa versi jarak jauh. Tindakan ini tidak dapat dibatalkan.';

  @override
  String get keepLocal => 'Simpan Lokal';

  @override
  String get keepRemoteVersionTitle => 'Simpan Versi Jarak Jauh?';

  @override
  String get keepRemoteVersionMessage =>
      'Ini akan membuang perubahan lokal Anda dan menyimpan versi jarak jauh. Tindakan ini tidak dapat dibatalkan.';

  @override
  String get keepRemote => 'Simpan Remote';

  @override
  String get discardChangesTitle => 'Buang Perubahan?';

  @override
  String get discardChangesMessage =>
      'Perubahan lokal Anda akan dihapus tanpa disinkronkan. Tindakan ini tidak dapat dibatalkan.';

  @override
  String get gistMustHaveOneFile => 'Gist harus memiliki setidaknya satu file';

  @override
  String errorCreatingGist(String error) {
    return 'Gagal membuat gist: $error';
  }

  @override
  String get gistSavedOffline =>
      'Gist disimpan secara offline. Akan disinkronkan saat terhubung.';

  @override
  String errorSavingGist(String error) {
    return 'Gagal menyimpan gist: $error';
  }

  @override
  String get changesSavedOffline =>
      'Perubahan disimpan secara offline. Akan disinkronkan saat terhubung.';

  @override
  String deleteFileOrGistPrompt(String fileName) {
    return 'Apakah Anda ingin menghapus hanya \"$fileName\" atau seluruh gist?';
  }

  @override
  String errorDeleting(String error) {
    return 'Gagal menghapus: $error';
  }

  @override
  String get addFile => 'Tambahkan berkas';

  @override
  String get removeFile => 'Hapus berkas';

  @override
  String newFileNumbered(int number) {
    return 'File Baru $number';
  }

  @override
  String get newGist => 'Gist Baru';

  @override
  String get filenameHint => 'mis., script.py';

  @override
  String get offlineNoCachedGists =>
      'Anda sedang offline. Tidak ada Gist yang tersimpan.';

  @override
  String get syncStatus => 'Status Sinkronisasi';

  @override
  String get syncing => 'Menyinkronkan...';

  @override
  String pendingCountLabel(int count) {
    return 'Tertunda: $count';
  }

  @override
  String conflictCountLabel(int count) {
    return 'Konflik: $count';
  }

  @override
  String get operationsLabel => 'Operasi:';

  @override
  String get resolveConflicts => 'Selesaikan Konflik';

  @override
  String get willSyncWhenRestored =>
      'Akan disinkronkan secara otomatis saat koneksi dipulihkan';

  @override
  String get syncNow => 'Sinkronkan Sekarang';

  @override
  String get selectLanguage => 'Pilih Bahasa';

  @override
  String get offlineChangesWillSync =>
      'Anda sedang offline. Perubahan akan disinkronkan saat terhubung.';

  @override
  String pendingBadge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tertunda',
    );
    return '$_temp0';
  }

  @override
  String errorLoadingPublicGists(String error) {
    return 'Gagal memuat gist publik: $error';
  }

  @override
  String errorSearching(String error) {
    return 'Kesalahan pencarian: $error';
  }

  @override
  String byAuthor(String author) {
    return 'oleh $author';
  }

  @override
  String errorSigningIn(String error) {
    return 'Kesalahan saat masuk: $error';
  }

  @override
  String get connectingToGitHub => 'Menghubungkan ke GitHub';

  @override
  String errorSettingLaunchAtLogin(String error) {
    return 'Gagal mengatur peluncuran saat masuk: $error';
  }

  @override
  String errorQuittingApp(String error) {
    return 'Kesalahan saat keluar aplikasi: $error';
  }

  @override
  String errorLoggingOut(String error) {
    return 'Kesalahan saat keluar: $error';
  }

  @override
  String get tabSize => 'Ukuran Tab';

  @override
  String tabSizeSpaces(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spasi',
      one: '1 spasi',
    );
    return '$_temp0';
  }

  @override
  String tabKeyWillInsert(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count spasi',
      one: '1 spasi',
    );
    return 'Tombol Tab akan menyisipkan $_temp0';
  }

  @override
  String get errorLoadingUserProfile => 'Gagal memuat profil pengguna';

  @override
  String get followers => 'Pengikut';

  @override
  String get following => 'Mengikuti';

  @override
  String get repos => 'Repositori';

  @override
  String get gists => 'Gist';

  @override
  String joinedDate(String date) {
    return 'Bergabung pada $date';
  }

  @override
  String viewUserGists(String username) {
    return 'Lihat Gist milik $username';
  }

  @override
  String get openLink => 'Buka Tautan';

  @override
  String openLinkConfirmation(String url) {
    return 'Apakah Anda ingin membuka tautan ini di peramban Anda?\n\n$url';
  }

  @override
  String get couldNotOpenLink => 'Tidak dapat membuka tautan';

  @override
  String get noFollowersFound => 'Tidak ada pengikut ditemukan';

  @override
  String get noFollowingFound => 'Tidak ada yang diikuti';

  @override
  String errorLoadingFollowers(String error) {
    return 'Gagal memuat pengikut: $error';
  }

  @override
  String errorLoadingFollowing(String error) {
    return 'Gagal memuat daftar berikut: $error';
  }

  @override
  String get deleteIsPermanent =>
      'Aksi ini bersifat permanen dan tidak dapat dibatalkan.';

  @override
  String typeToConfirm(String text) {
    return 'Ketik \"$text\" untuk mengonfirmasi:';
  }

  @override
  String typeExactly(String text) {
    return 'Ketik \"$text\" persis sama';
  }

  @override
  String fileDeleted(String fileName) {
    return 'File \"$fileName\" telah dihapus';
  }

  @override
  String errorDeletingFile(String error) {
    return 'Gagal menghapus berkas: $error';
  }

  @override
  String get gistDeleted => 'Gist dihapus';

  @override
  String errorDeletingGist(String error) {
    return 'Gagal menghapus gist: $error';
  }

  @override
  String get noFilesAvailable => 'Tidak ada berkas tersedia';

  @override
  String get fileDataNotAvailable => 'Data file tidak tersedia';

  @override
  String get copied => 'Tersalin!';

  @override
  String get copyToClipboard => 'Salin ke papan klip';

  @override
  String get contentCopiedToClipboard => 'Konten disalin ke papan klip';

  @override
  String get copyGistContentToClipboard => 'Salin konten gist ke papan klip';

  @override
  String get internetNotAvailable => 'Koneksi internet tidak tersedia';

  @override
  String get editGist => 'Sunting gist';
}
