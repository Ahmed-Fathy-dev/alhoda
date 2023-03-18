import 'package:alhoda/src/app/features/home/children/pray_times/logic/model/prayer_time_to_json.dart';
import 'package:alhoda/src/app/features/home/children/pray_times/logic/providers/getting_location_provider.dart';
import 'package:alhoda/src/core/services/location/location_geolocator.dart';
import 'package:alhoda/src/utilities/logger_util.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../logic/providers/payer_time_date_provider.dart';

class PrayerTimeView extends ConsumerWidget {
  const PrayerTimeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationProv = ref.watch(locationProvider);
    return locationProv.when(
        data: (loc) {
          final dataProvider = ref.watch(asyncPrayTimeProvider(PrayerTimeToJson(
            date: DateFormat("DD-MM-YYYY").format(DateTime.now()),
            latitude: loc.latitude,
            longitude: loc.longitude,
          )));
          return Container();
        },
        error: (error, stacktrace) {
          return Text("$error");
        },
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}
