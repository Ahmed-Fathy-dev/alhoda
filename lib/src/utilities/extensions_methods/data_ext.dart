import 'package:alhoda/src/app/features/home/children/pray_times/logic/model/pray_count_down.dart';
import 'package:alhoda/src/app/features/home/children/pray_times/logic/model/pray_time_model.dart';
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

extension ToArabicNumber on String {
  String toArabic() {
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

extension ExtOnTiming on Timings {
  PrayCountDown whatIsNextPray(DateTime timeNow) {
    final timingModel = this;
    final duhr = _getParserTime(timingModel.dhuhr!);
    final asr = _getParserTime(timingModel.asr!);
    final maghrib = _getParserTime(timingModel.maghrib!);
    final isha = _getParserTime(timingModel.isha!);
    final fajr = _getParserTime(timingModel.fajr!);
    final sunrise = _getParserTime(timingModel.sunrise!);
    final midnight = _getParserTime("24:00");
    final newDAY = _getParserTime("00:00");

    if (timeNow.isBefore(duhr) && timeNow.isAfter(sunrise)) {
      final totalduration = duhr.difference(sunrise);
      final remainTime = duhr.difference(timeNow);
      return PrayCountDown(
          totalduration: totalduration,
          nextPrayName: "الظهر",
          remainingTime: remainTime,
          previousPrayName: "الشروق");
    }
    if (timeNow.isBefore(asr) && timeNow.isAfter(duhr)) {
      final remainTime = asr.difference(timeNow);
      final totalduration = asr.difference(duhr);
      return PrayCountDown(
          totalduration: totalduration,
          nextPrayName: "العصر",
          remainingTime: remainTime,
          previousPrayName: "الظهر");
    }
    if (timeNow.isBefore(maghrib) && timeNow.isAfter(asr)) {
      final remainTime = maghrib.difference(timeNow);
      final totalduration = maghrib.difference(asr);
      return PrayCountDown(
          totalduration: totalduration,
          nextPrayName: "المغرب",
          remainingTime: remainTime,
          previousPrayName: "العصر");
    }
    if (timeNow.isBefore(isha) && timeNow.isAfter(maghrib)) {
      final remainTime = isha.difference(timeNow);
      final totalduration = isha.difference(maghrib);

      return PrayCountDown(
          totalduration: totalduration,
          nextPrayName: "العشاء",
          remainingTime: remainTime,
          previousPrayName: "المغرب");
    }
    if (timeNow.isBefore(midnight) && timeNow.isAfter(isha)) {
      final fajrDuration = _getfajrduration(timingModel.fajr!);
      final remainTime = midnight.difference(timeNow) + fajrDuration;
      final totalduration = midnight.difference(isha) + fajrDuration;
      return PrayCountDown(
          totalduration: totalduration,
          nextPrayName: "الفجر",
          remainingTime: remainTime,
          previousPrayName: "العشاء");
    }
    if (timeNow.isBefore(fajr) && timeNow.isAfter(newDAY)) {
      final remainTime = fajr.difference(timeNow);
      final totalduration = _getfajrduration(timingModel.fajr!);
      return PrayCountDown(
          totalduration: totalduration,
          nextPrayName: "الفجر",
          remainingTime: remainTime,
          previousPrayName: "العشاء");
    }
    if (timeNow.isBefore(sunrise) && timeNow.isAfter(fajr)) {
      final remainTime = sunrise.difference(timeNow);
      final totalduration = sunrise.difference(fajr);

      return PrayCountDown(
          totalduration: totalduration,
          nextPrayName: "الشروق",
          remainingTime: remainTime,
          previousPrayName: "الفجر");
    } else {
      return const PrayCountDown(
          totalduration: Duration(hours: 999999),
          nextPrayName: "خطأ",
          remainingTime: Duration(hours: 999999),
          previousPrayName: "الفجر");
    }
  }

  DateTime _getParserTime(
    String value,
  ) {
    final spilitTime = value.split(":");
    final dateTimeParser = DateTime.now().copyWith(
        hour: int.parse(spilitTime[0]), minute: int.parse(spilitTime[1]));

    return dateTimeParser;
  }

  Duration _getfajrduration(
    String value,
  ) {
    final spilitTime = value.split(":");
    final dateTimeParser = Duration(
        hours: int.parse(spilitTime[0]), minutes: int.parse(spilitTime[1]));

    return dateTimeParser;
  }
}

extension DurationToTime on Duration {
  String durationInHhMm() {
    final duration = this;
    final hh = (duration.inHours).toString().padLeft(2, '0');
    final mm = (duration.inMinutes % 60).toString().padLeft(2, '0');
    final ss = (duration.inSeconds % 60).toString().padLeft(2, '0');

    return '$hh:$mm:$ss';
  }
}

extension DurationString on int {
  String get durationString {
    final duration = this;
    final hh = ((duration / 60) % 60).toString().padLeft(2, '0');
    final minutes = ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final seconds = (duration % 60).floor().toString().padLeft(2, '0');
    return '$hh$minutes:$seconds';
  }
}
