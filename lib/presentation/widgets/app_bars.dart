import 'package:flutter/material.dart';
import '../../share/styles/themes.dart';

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
      child: Text(
        'SIGN IN',
        style: TextStyle(color: darkGray),
      ),
    ),
  ],
);

AppBar searchAppBar = AppBar(
  centerTitle: true,
  title: const Text('Search App Bar'),
);

AppBar learningAppBar = AppBar(
  actions: [
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.shopping_cart_outlined),
    )
  ],
  title: Text(
    'All courses',
    style: TextStyle(color: nearBlack, fontWeight: bold),
  ),
);

AppBar wishlistAppBar = AppBar(
  centerTitle: true,
  title: const Text('Wishlist App Bar'),
);

AppBar accountAppBar = AppBar(
  centerTitle: true,
  title: const Text('Account App Bar'),
);
