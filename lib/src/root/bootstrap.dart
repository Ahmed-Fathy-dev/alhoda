import 'dart:async';
import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/services/storage/hive_storage_keys.dart';
import '../core/services/storage/hive_storage_service.dart';
import '../core/services/storage/storage_service.dart';
import '../core/services/storage/storage_service_provider.dart';
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
      await Hive.initFlutter();
      final StorageService initializedStorageService = HiveStorageService();

      await initializedStorageService
          .openBox<int>(HiveStorageKeys.quranBoxKey);

      await runZoned(
        (() async => runApp(
              ProviderScope(
                overrides: [
                  storageServiceProvider
                      .overrideWithValue(initializedStorageService),
                ],
                observers: [ObserverLogger()],
                child: EasyLocalization(
                    startLocale: const Locale('ar', 'EG'),
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
