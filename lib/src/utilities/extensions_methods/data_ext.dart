import 'package:alhoda/src/app/features/home/children/quran/logic/model/quran_param_model.dart';
import 'package:alhoda/src/utilities/logger_util.dart';

import '../../app/features/home/children/quran/logic/model/quran_model.dart';
import '../../core/constants/Strings/quraan_strings.dart';

extension DataExtensions on int {
  String suraPlace() {
    final getSuraPlace = this;
    if (getSuraPlace == 0) {
      return QuraanStr.mekkaString;
    } else {
      return QuraanStr.madinaString;
    }
  }
}

extension FilterData on QuranParam {
  num? getFromParam() {
    final quranParam = this;
    logger.d(quranParam, 'quranParam Model');
    Map<String, num?> paramMap = {
      'index': quranParam.index,
      'juzzId': quranParam.juzzId,
      'hezbId': quranParam.hezbId,
      'part': quranParam.part,
      'suraId': quranParam.suraId,
    };
    final value = paramMap.values.firstWhere((element) => element != null);
    logger.d(value, 'value Model');

    return value;
  }

  int getIndexFromParams(List<QuranModel> allQuran) {
    final quranParam = this;
    // Map<String, dynamic> paramFilter;
    int? index;
    // final suraId = quranParam.suraId;
    // final juzzId = quranParam.juzzId;
    // final hezbId = quranParam.hezbId;
    // final part = quranParam.part;
    Map<String, num?> paramMap = {
      'index': quranParam.index,
      'juzzId': quranParam.juzzId,
      'hezbId': quranParam.hezbId,
      'part': quranParam.part,
      'suraId': quranParam.suraId,
    };
    logger.d(quranParam, 'quranParam Model');
    if (allQuran.isNotEmpty) {
      if (paramMap['index'] != null) {
        index = paramMap['index']!.toInt() - 1;
      } else if (paramMap['suraId'] != null) {
        index = allQuran
            .indexWhere((element) => element.sura?.id == paramMap['suraId']);
      } else if (paramMap['juzzId'] != null) {
        index = allQuran
            .indexWhere((element) => element.juzz?.id == paramMap['juzzId']);
      } else if (paramMap['hezbId'] != null) {
        index = allQuran.indexWhere(
            (element) => element.juzz?.hezb?.id == paramMap['hezbId']);
      } else if (paramMap['part'] != null) {
        index = allQuran.indexWhere(
            (element) => element.juzz?.hezb?.part == paramMap['part']);
      }
    }
    logger.wtf(index, 'index from ext');
    return index ?? 0;
  }
}

extension ToFarsiNumber on String {
  String toFarsi() {
    const Map<String, String> numbers = {
      '0': '٠',
      '1': '١',
      '2': '٢',
      '3': '٣',
      '4': '٤',
      '5': '٥',
      '6': '٦',
      '7': '۷',
      '8': '۸',
      '9': '۹',
    };

    return replaceAllMapped(
      RegExp('[0-9]'),
      (match) => numbers[this[match.start]]!,
    );
  }
}
