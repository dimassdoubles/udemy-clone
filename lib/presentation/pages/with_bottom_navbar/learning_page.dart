import 'package:flutter/material.dart';

import '../../../share/routes.dart';

class LearningPage extends StatelessWidget {
  const LearningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {
          Navigator.pushNamed(context, playerPage);
        },
        child: const Text('Go to player page'),
      ),
    );
  }
}
