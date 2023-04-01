import 'package:hive_flutter/hive_flutter.dart';

import 'storage_service.dart';

/// [StorageService] interface implementation using the Hive package
///
/// See: https://pub.dev/packages/hive_flutter
class HiveStorageService implements StorageService {
  /// A Hive Box
  static late Box<dynamic> hiveBox;

  /// Opens a Hive box by its name
  @override
  Future<void> openBox<T>(String boxName) async {
    hiveBox = await Hive.openBox<T>(boxName);
  }

  @override
  void registerAdapter<T>(dynamic adapter) {
    Hive.registerAdapter<T>(adapter);
  }

  @override
  Box<T> box<T>(String boxName) => Hive.box<T>(boxName);

  // @override
  // Future<void> init() async {
  //   await openBox();
  // }

  @override
  Future<void> remove(String key) async {
    await hiveBox.delete(key);
  }

  @override
  dynamic get(String key) {
    return hiveBox.get(key);
  }

  @override
  dynamic update(String key, dynamic value) {
    return hiveBox.put(key, value);
  }

  @override
  dynamic getAll() {
    return hiveBox.values.toList();
  }

  @override
  bool has(String key) {
    return hiveBox.containsKey(key);
  }

  @override
  Future<void> set(String? key, dynamic data) async {
    await hiveBox.put(key, data);
  }

  @override
  Future<void> clear() async {
    await hiveBox.clear();
  }

  @override
  Future<void> close() async {
    await hiveBox.close();
  }
}
