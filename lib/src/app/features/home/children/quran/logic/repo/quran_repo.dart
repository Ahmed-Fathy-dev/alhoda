import 'dart:convert';

import 'package:alhoda/src/core/services/firebase/firestore/firestore_service.dart';
import 'package:flutter/services.dart';
import 'package:riverpod/riverpod.dart';

import '../../../../../../../core/services/firebase/firestore/query_keys.dart';
import '../model/quran_model.dart';

final quranRepoProvider = Provider.autoDispose<QuranRepo>((ref) {
  final service = ref.watch<FirestoreService>(firestoreProvider);
  return QuranRepoImpl(service);
});

abstract class QuranRepo {
  Future<QuranModelResponse> getAllQuran();
  Future<QuranModel> getQuranPages({
    required int doc,
  });

  Future<QuranModel> getFilteredQuran({
    required String filter,
    required String filterParam,
  });
}

class QuranRepoImpl extends QuranRepo {
  final FirestoreService _service;

  QuranRepoImpl(this._service);
  @override
  Future<QuranModel> getQuranPages({
    required int doc,
  }) async {
    const collection = Querykeys.quranCollection;
    final response = await _service.getDataResponse(
      collectionName: collection,
      docName: doc,
    );
    return QuranModel.fromJson(response!);
  }

  @override
  Future<QuranModel> getFilteredQuran({
    required String filter,
    required String filterParam,
  }) async {
    const collection = Querykeys.quranCollection;
    final response = await _service.getFilteredDataResponse(
      collectionName: collection,
      filter: filter,
      filterParam: filterParam,
    );

    return QuranModel.fromJson(response);
  }

  @override
  Future<QuranModelResponse> getAllQuran() async {
    final quranData = await rootBundle.loadString('assets/data/quran.json');
    final data = await json.decode(quranData);
    return QuranModelResponse.fromJson(data);
  }
}
