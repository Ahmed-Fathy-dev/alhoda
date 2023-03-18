import 'package:alhoda/src/app/features/home/children/pray_times/logic/model/pray_time_calender.dart';
import 'package:alhoda/src/core/services/api/base_url.dart';
import 'package:alhoda/src/core/services/api/http_service_provider.dart';
import 'package:riverpod/riverpod.dart';

import '../model/pray_time_to_json.dart';
import '../model/pray_time_model.dart';
import 'pray_time_repo_impl.dart';

final prayTimeRepoProvider = Provider<PrayTimeRepo>((ref) {
  final httpService = ref.watch(httpServiceProvider(BaseUrls.prayerTime));
  return PrayTimeRepoImpl(httpService);
});

abstract class PrayTimeRepo {
  String getPraytimeUri(date);
  String getPrayCalenderUri(year, month);

  Future<PrayerTimeMRes> getPraytime(PrayerTimeToJson payertime);

  Future<CalenderMRes> getPrayCalender(PrayerTimeToJson payertime);
}
