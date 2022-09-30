import 'package:flutter/material.dart';

import '../../../core/constants/text_styles.dart';

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: seeAllText.copyWith(
              fontSize: 18,
              fontWeight: bold,
            ),
          ),
        ),
      ),
    );
  }
}
