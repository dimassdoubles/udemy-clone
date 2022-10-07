import 'package:flutter/material.dart';
import 'package:udemy_clone/share/styles/themes.dart';
import 'share/constants/routes.dart' as route;
import 'injections.dart' as injections;

void main() async {
  await injections.setup();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      onGenerateRoute: route.controller,
      initialRoute: route.splashPage,
    );
  }
}
