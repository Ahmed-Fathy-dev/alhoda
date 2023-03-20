import 'dart:async';
import 'dart:io';

import 'package:alhoda/src/app/features/home/children/pray_times/logic/model/pray_time_to_json.dart';
import 'package:alhoda/src/app/features/home/children/pray_times/logic/model/pray_time_model.dart';
import 'package:alhoda/src/app/features/home/children/pray_times/logic/repo/pray_time_repo.dart';
import 'package:alhoda/src/utilities/logger_util.dart';
import 'package:riverpod/riverpod.dart';

final PrayTimeProvider = AsyncNotifierProviderFamily<PayerTimeQpNotifier,
    PrayerTimeModel, PrayerTimeToJson>(PayerTimeQpNotifier.new);

class PayerTimeQpNotifier
    extends FamilyAsyncNotifier<PrayerTimeModel, PrayerTimeToJson> {

      
  Future<PrayerTimeModel> _fetchPayerTime(PrayerTimeToJson prayerParm) async {
    final repo = ref.watch(prayTimeRepoProvider);
    final response = await repo.getPraytime(prayerParm);
    logger.wtf(response,"from Api");
    return response.data!;
  }

  @override
  FutureOr<PrayerTimeModel> build(arg) async {
    try {
      return await _fetchPayerTime(arg);
    } on HttpException catch (e) {
      logger.e(e.message);
      state = AsyncValue.error(e, StackTrace.current);
      rethrow;
    }
  }
}
