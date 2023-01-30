import 'package:alhoda/src/app/features/home/views/pages/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../app/features/home/children/quran/views/pages/quran_page.dart';
import 'route_name.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/${RouteName.homepage}':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case '/${RouteName.quraanMainPage}':
        return MaterialPageRoute(
          builder: (_) => const QuranMainPage(),
        );
      // case '/${RouteName.}':
      // return MaterialPageRoute(builder: (_) =>const ());
      // case '/${RouteName.}':
      // return MaterialPageRoute(builder: (_) =>const ());
      // case '/${RouteName.}':
      // return MaterialPageRoute(builder: (_) =>const ());
      // case '/${RouteName.}':
      // return MaterialPageRoute(builder: (_) =>const ());
      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScaffold(
            body: Text('Error Page Route'),
          ),
        );
    }
  }
}

class ErrorScaffold extends StatelessWidget {
  const ErrorScaffold({
    required this.body,
    Key? key,
  }) : super(key: key);

  final Widget body;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Page Not Found'),
        ),
        body: body,
      );
}
