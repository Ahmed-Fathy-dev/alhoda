import 'dart:async';

import 'package:alhoda/src/core/services/location/location_geolocator.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod/riverpod.dart';

final locationProvider =
    AsyncNotifierProvider<LocationNotifiers, Position>(() {
  return LocationNotifiers();
});

class LocationNotifiers extends AsyncNotifier<Position> {
  // 3. override the [build] method to return a [FutureOr]

  Future<Position> getPosition() async {
    final position =
        await const LocationByCordinates().getGeoLocationPosition();
    return position;
  }
  @override
  FutureOr<Position> build() async{
   return getPosition();
  }
 
}
