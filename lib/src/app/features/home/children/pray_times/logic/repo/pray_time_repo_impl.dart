import 'package:alhoda/src/app/features/home/children/pray_times/logic/model/prayer_time_to_json.dart';
import 'package:alhoda/src/app/features/home/children/pray_times/logic/model/pray_time_model.dart';
import 'package:alhoda/src/app/features/home/children/pray_times/logic/repo/pray_time_repo.dart';
import 'package:alhoda/src/core/services/api/http_service.dart';

import '../model/pray_time_calender.dart';

class PrayTimeRepoImpl implements PrayTimeRepo {
  final HttpService httpService;

  PrayTimeRepoImpl(this.httpService);

  @override
  String getPraytimeUri(date) => 'timings/$date';

  @override
  String getPrayCalenderUri(higriYear, higrimonth) =>
      "hijriCalendar/$higriYear/$higrimonth";

  @override
  Future<PrayerTimeMRes> getPraytime(PrayerTimeToJson prayertime) async {
    final responseData = await httpService
        .get(getPraytimeUri(prayertime.date), queryParameters: <String, dynamic>{
      "latitude": prayertime.latitude,
      "longitude": prayertime.longitude,
      "method": prayertime.method,
    });
    return PrayerTimeMRes.fromJson(responseData);
  }

  @override
  Future<CalenderMRes> getPrayCalender(PrayerTimeToJson prayertime) async {
    final responseData = await httpService
        .get(getPrayCalenderUri(prayertime.higriYear,prayertime.higrimonth), queryParameters: <String, dynamic>{
      "latitude": prayertime.latitude,
      "longitude": prayertime.longitude,
      "method": prayertime.method,
    });
    return CalenderMRes.fromJson(responseData);
  }

  
}
