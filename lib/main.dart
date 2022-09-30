import 'package:flutter/material.dart';
import 'core/constants/routes.dart' as route;
import 'injections.dart' as injections;

void main() async {
  await injections.setup();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashPage(),
      onGenerateRoute: route.controller,
      initialRoute: route.splashPage,
    );
  }
}
