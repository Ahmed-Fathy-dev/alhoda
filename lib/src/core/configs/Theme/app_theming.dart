import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'color_scheme_theme.dart';
part 'widget_app_theme.dart';

// part './widget_app_theme.dart';

class AppThemeData {
  static ThemeData get darkThemeData => _themeData(
        colorScheme: AppColorScheme.darkColorScheme,
        textTheme: GoogleFonts.reemKufiTextTheme(ThemeData.dark().textTheme),
      );
  static ThemeData get lightThemeData => _themeData(
        colorScheme: AppColorScheme.lightColorScheme,
        textTheme: GoogleFonts.reemKufiTextTheme(ThemeData.light().textTheme),
      );

  static ThemeData _themeData({
    required ColorScheme colorScheme,
    TextTheme? textTheme,
  }) =>
      ThemeData.from(
        colorScheme: colorScheme,
        textTheme: textTheme,
      ).copyWith(
        useMaterial3: true,
        appBarTheme: WidgetAppTheme.appBarTheme(colorScheme),
        // elevatedButtonTheme: WidgetAppTheme.elevatedButton(colorScheme),
        // inputDecorationTheme: WidgetAppTheme.inputDecoration(colorScheme)
      );
}




  // static ThemeData darkThemeData = themeData(AppColorScheme.darkColorScheme);
  // static ThemeData lightThemeData = themeData(AppColorScheme.lightColorScheme);

  // // static ThemeData mobileThemeData = themeData(AppColors.lightColorScheme);

  // static ThemeData themeData(ColorScheme colorScheme) {
  //   return ThemeData(
  //     colorScheme: colorScheme,
  //     primaryColor: colorScheme.primary,
  //     toggleableActiveColor: colorScheme.onPrimary,
  //     scaffoldBackgroundColor: colorScheme.background,
  //     // indicatorColor: Colors.transparent,
  //     elevatedButtonTheme: WidgetAppTheme.elevatedButton(colorScheme),
  //     tabBarTheme: WidgetAppTheme.tabBarTheme(colorScheme),
  //     bottomNavigationBarTheme: WidgetAppTheme.bottomNavBar(colorScheme),
  //     appBarTheme: WidgetAppTheme.appBarTheme(colorScheme),
  //     // textTheme: GoogleFonts.latoTextTheme(TextAppTheme.textTheme),
  //     // inputDecorationTheme: WidgetAppTheme.inputDecoration(colorScheme),
  //   );
  // }