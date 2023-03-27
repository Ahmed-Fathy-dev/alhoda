import 'dart:async';

import 'package:alhoda/src/app/features/home/children/pray_times/views/pages/prayer_time_view.dart';
import 'package:alhoda/src/core/configs/Routers/routes.dart';
import 'package:alhoda/src/core/constants/enums/response_status.dart';
import 'package:alhoda/src/core/services/location/location_geolocator.dart';
import 'package:alhoda/src/utilities/logger_util.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod/riverpod.dart';

final locationProvider = NotifierProvider<LocationNotifiers, PositionState>(() {
  return LocationNotifiers();
});

class LocationNotifiers extends Notifier<PositionState> {
  // 3. override the [build] method to return a [FutureOr]

  Future<Position?> _getPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    // final position =
    //     await const LocationByCordinates().getGeoLocationPosition();
    // return position;
  }

  void setPositionState(BuildContext ctx) async {
    state = state.copywith(status: ResponseStatus.loading);
    final position = await _getPosition();
    logger.wtf(position, "From Location Provider ");
    if (position == null) {
      state = state.copywith(status: ResponseStatus.failure);
    } else {
      state =
          state.copywith(position: position, status: ResponseStatus.success);
          if(ctx.mounted ){
                ctx.push( const PrayerTimeView());
          }
      
    }
  }

  @override
  PositionState build() {
    return const PositionState();
  }
}

class PositionState extends Equatable {
  final Position? position;
  final ResponseStatus status;

  const PositionState({this.position, this.status = ResponseStatus.initial});

  PositionState copywith({Position? position, ResponseStatus? status}) {
    return PositionState(
      position: position ?? this.position,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [position, status];
}
