import 'package:flutter/material.dart';
import 'package:jepad/screen/detail_screen.dart';
import 'package:jepad/screen/home_screen.dart';
import 'package:jepad/screen/intro_screen.dart';
import '../core/models/wisata.dart';

class AppRoutes {
  static const String intro = '/';
  static const String home = '/home';
  static const String detail = '/detail';

  static Map<String, WidgetBuilder> get routes {
    return {
      intro: (context) => const IntroScreen(),
      home: (context) => const HomeScreen(),
    };
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    if (settings.name == detail) {
      final wisata = settings.arguments as Wisata;
      return MaterialPageRoute(
        builder: (context) => DetailScreen(wisata: wisata),
      );
    }

    return MaterialPageRoute(builder: (_) => const IntroScreen());
  }
}
