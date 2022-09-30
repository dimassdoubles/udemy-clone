import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/text_styles.dart';

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
