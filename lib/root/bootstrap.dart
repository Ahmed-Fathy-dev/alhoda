import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'rivepod_observer.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
    () async {
      // await InitialFile().call();
      // await ThemeInitialize.instance;
      await runZoned(
        (() async => runApp(
              ProviderScope(
                observers: [ObserverLogger()],
                child: await builder(),
              ),
            )),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
