import 'package:flutter/material.dart';

List<AppBar> appBars = [
  homeAppBar,
  searchAppBar,
  learningAppBar,
  wishlistAppBar,
  accountAppBar
];

AppBar homeAppBar = AppBar(
  actions: [
    TextButton(
      onPressed: () {},
      child: const Text(
        'SIGN IN',
        // style: greyTextStyle.copyWith(fontWeight: semiBold),
      ),
    ),
  ],
);

AppBar searchAppBar = AppBar(
  centerTitle: true,
  title: const Text('Search App Bar'),
);

AppBar learningAppBar = AppBar(
  centerTitle: true,
  title: const Text('Learning App Bar'),
);

AppBar wishlistAppBar = AppBar(
  centerTitle: true,
  title: const Text('Wishlist App Bar'),
);

AppBar accountAppBar = AppBar(
  centerTitle: true,
  title: const Text('Account App Bar'),
);
