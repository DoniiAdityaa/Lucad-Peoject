import 'package:flutter/material.dart';
import 'package:jepad/routes/app_routes.dart';
import 'package:jepad/screen/intro_screen.dart';

void main() {
  runApp(const Jepad());
}

class Jepad extends StatelessWidget {
  const Jepad({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JEPAD',
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.intro,
      routes: {AppRoutes.intro: (context) => const IntroScreen()},
    );
  }
}
