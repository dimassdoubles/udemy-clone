import 'package:flutter/material.dart';

import '../../share/styles/themes.dart';

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
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: bold,
                  color: blue,
                ),
          ),
        ),
      ),
    );
  }
}
