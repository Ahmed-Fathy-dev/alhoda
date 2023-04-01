import 'package:alhoda/src/core/services/storage/hive_storage_keys.dart';
import 'package:alhoda/src/core/services/storage/storage_service_provider.dart';
import 'package:alhoda/src/utilities/logger_util.dart';
import 'package:riverpod/riverpod.dart';

final bookmarkProvider = NotifierProvider<BookmarkNotifier, int?>(
  () {
    return BookmarkNotifier();
  },
);

class BookmarkNotifier extends Notifier<int?> {
  void setBookmarkStatus(int index) {
    final storage = ref.watch(storageServiceProvider);
    storage.set(HiveStorageKeys.indexKey, index);
    logger.wtf(index, "bookmark provider");
    final get = storage.get(
      HiveStorageKeys.indexKey,
    );
    logger.wtf(get, "bookmark provider");
  }

  int? getBookMarkStatus() {
    final storage = ref.watch(storageServiceProvider);
    final index = storage.get(
      HiveStorageKeys.indexKey,
    );
    logger.wtf(index, "bookmark provider");
    return index;
  }

  @override
  build() {
    
    return getBookMarkStatus();
  }
}
