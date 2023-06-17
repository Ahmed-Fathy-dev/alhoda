import 'dart:async';
import 'dart:math';

import 'package:alhoda/src/app/components/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QiblahCompass extends ConsumerStatefulWidget {
  const QiblahCompass({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QiblahCompassState();
}

class _QiblahCompassState extends ConsumerState<QiblahCompass> {
  final _locationStreamController =
      StreamController<LocationStatus>.broadcast();

  get stream => _locationStreamController.stream;

  @override
  void initState() {
    _checkLocationStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      child: StreamBuilder(
        stream: stream,
        builder: (context, AsyncSnapshot<LocationStatus> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingWidget();
          }

          if (snapshot.data!.enabled == true) {
            switch (snapshot.data!.status) {
              case LocationPermission.always:
              case LocationPermission.whileInUse:
                return QiblahCompassWidget();

              case LocationPermission.denied:
                return const Text("Location Denied");
              case LocationPermission.deniedForever:
                return const Text("Location Denied Forever");
              // case GeolocationStatus.unknown:
              //   return LocationErrorWidget(
              //     error: "Unknown Location service error",
              //     callback: _checkLocationStatus,
              //   );
              default:
                return const SizedBox();
            }
          } else {
            return const Text("Please Open Location");
          }
        },
      ),
    );
  }

  Future<void> _checkLocationStatus() async {
    final locationStatus = await FlutterQiblah.checkLocationStatus();
    if (locationStatus.enabled &&
        locationStatus.status == LocationPermission.denied) {
      await FlutterQiblah.requestPermissions();
      final s = await FlutterQiblah.checkLocationStatus();
      _locationStreamController.sink.add(s);
    } else {
      _locationStreamController.sink.add(locationStatus);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _locationStreamController.close();
    FlutterQiblah().dispose();
  }
}

class QiblahCompassWidget extends StatelessWidget {
  final secQibla = Image.asset(
    'assets/qibla2.png',
    fit: BoxFit.contain,
  );
  final _compassSvg = SvgPicture.asset(
    'assets/compass.svg',
    fit: BoxFit.contain,
  );
  final _needleSvg = SvgPicture.asset(
    'assets/needle.svg',
    fit: BoxFit.contain,
    height: 350,
    alignment: Alignment.center,
  );

  QiblahCompassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FlutterQiblah.qiblahStream,
      builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingWidget();
        }

        final qiblahDirection = snapshot.data!;

        return Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Visibility(
              visible: false,
              child: Transform.rotate(
                angle: (qiblahDirection.direction * (pi / 180) * -1),
                child: _compassSvg,
              ),
            ),
            Visibility(
              visible: true,
              child: Transform.rotate(
                angle: (qiblahDirection.qiblah * (pi / 180) * -1),
                alignment: Alignment.center,
                child: _needleSvg,
              ),
            ),
             
            Visibility(
              visible: true,
              child: Transform.rotate(
                angle: (qiblahDirection.direction * (pi / 180) * -1),
                alignment: Alignment.center,
                child: secQibla,
              ),
            )
          ],
        );
      },
    );
  }
}
