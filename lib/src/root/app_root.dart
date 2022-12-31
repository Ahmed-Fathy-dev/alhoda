import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../core/configs/Routers/route_name.dart';
import '../core/configs/Routers/router.dart';
import '../core/configs/Theme/app_theming.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: AppThemeData.lightThemeData,
      themeMode: ThemeMode.light,
      darkTheme: AppThemeData.darkThemeData,
      initialRoute: '/${RouteName.homepage}',
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
