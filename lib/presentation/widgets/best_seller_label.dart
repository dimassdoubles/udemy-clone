import 'package:flutter/material.dart';

import '../../../share/constants/colors.dart';
import '../../../share/constants/text_styles.dart';
import '../../share/styles/themes.dart';

class BestSellerLabel extends StatelessWidget {
  const BestSellerLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: labelBestSelleColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          6,
        ),
        child: Text(
          'Bestseller',
          style: loginBody.copyWith(fontWeight: bold),
        ),
      ),
    );
  }
}
