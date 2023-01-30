import 'package:alhoda/src/utilities/logger_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

final firestoreProvider = Provider<FirestoreService>((_) {
  return FirestoreService();
});

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Map<String, dynamic>?> getDataResponse({
    required String collectionName,
    required int docName,
  }) async {
    final docRef = _firestore.collection(collectionName).doc('$docName');
    try {
      final data = await docRef.get();
      logger.d(data.data());
      return data.data();
    } on Exception catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  Future<Map<String, dynamic>> getFilteredDataResponse({
    required String collectionName,
    required String filter,
    required String filterParam,
  }) async {
    final docRef = _firestore
        .collection(collectionName)
        .where(filter, isEqualTo: filterParam)
        .limit(1);
    try {
      final snapData = await docRef.get();
      final data = snapData.docs.first.data();
      return data;
    } on Exception catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
