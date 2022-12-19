import 'dart:async';
import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'init_setup.dart';
import 'rivepod_observer.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await runZonedGuarded(
    () async {
      await InitialFile().call();
      // await ThemeInitialize.instance;
      await runZoned(
        (() async => runApp(
              ProviderScope(
                observers: [ObserverLogger()],
                child: EasyLocalization(
                    startLocale:const Locale('ar', 'EG'),
                    supportedLocales: _supportedLocales,
                    path:
                        'assets/translations', // <-- change the path of the translation files
                    // fallbackLocale:const Locale('ar', 'EG'),
                    child: await builder()),
              ),
            )),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

// const _localizationsDelegates = [
//   GlobalMaterialLocalizations.delegate,
//   GlobalWidgetsLocalizations.delegate,
//   GlobalCupertinoLocalizations.delegate,
// ];

const _supportedLocales = [
  Locale('en', ''), // English, no country code
  Locale('ar', 'EG'),
];
