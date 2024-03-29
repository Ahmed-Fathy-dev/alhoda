import 'package:hive_flutter/adapters.dart';

/// Storage service interface
abstract class StorageService {
  /// Initializes service
  // Future<void> init();

  /// Initializes service
  Future<void> openBox<T>(String boxName);

  /// Initializes service
  Box<T> box<T>(String boxName);

  /// Initializes service
  void registerAdapter<T>(dynamic adaptor);

  /// Removes item from storage by a key
  Future<void> remove(String key);

  /// Retrieves item from storage by a key
  dynamic get(String key);

  /// Updating the value of the key.
  dynamic update(String key, dynamic value);

  /// Retrieves all items from storage
  dynamic getAll();

  /// Clears storage
  Future<void> clear();

  /// Checks if an item exists in storage by a key
  bool has(String key);

  /// Sets an item data in storage by a key
  Future<void> set(String? key, dynamic data);

  /// Terminates service
  Future<void> close();
}
