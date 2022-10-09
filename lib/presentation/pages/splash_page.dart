import 'dart:async';

import 'package:flutter/material.dart';
import 'package:udemy_clone/share/styles/themes.dart';
import '../../share/routes.dart' as route;

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, route.guestPage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Image.asset('assets/images/udemy_logo.png'),
              ),
            ),
          ),
          SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(
              color: purple,
              strokeWidth: 3,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
