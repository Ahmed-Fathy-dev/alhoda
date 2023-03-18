import 'dart:async';
import 'dart:io';
import 'package:alhoda/src/app/features/home/children/pray_times/logic/repo/pray_time_repo.dart';
import 'package:alhoda/src/utilities/logger_util.dart';
import 'package:riverpod/riverpod.dart';
import '../model/pray_time_calender.dart';
import '../model/prayer_time_to_json.dart';

final asyncPrayCalenderProvider = AsyncNotifierProviderFamily<PrayerCalenderNotifier,
    List<PrayCalenderModel>,PrayerTimeToJson>(PrayerCalenderNotifier.new);

class PrayerCalenderNotifier extends FamilyAsyncNotifier<List<PrayCalenderModel>, PrayerTimeToJson> {
  
  
  Future<List<PrayCalenderModel>> _fetchPrayerCalender(PrayerTimeToJson prayerParm) async {

    final repo = ref.watch(prayTimeRepoProvider);
    final response = await repo.getPrayCalender(prayerParm);
    logger.wtf(response, "from Api");
    return response.data!;
  }

  @override
  FutureOr<List<PrayCalenderModel>> build(arg) async {
    try {
      return await _fetchPrayerCalender(arg);
    } on HttpException catch (e) {
      logger.e(e.message);
      state = AsyncValue.error(e, StackTrace.current);
      rethrow;
    }
  }
}
