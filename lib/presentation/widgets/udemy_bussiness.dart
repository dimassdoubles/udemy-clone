import 'package:flutter/material.dart';

import '../../../share/constants/colors.dart';
import '../../../share/constants/text_styles.dart';
import '../../share/styles/themes.dart';

class UdemyBussiness extends StatelessWidget {
  const UdemyBussiness({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: borderTopCompanyColor,
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                'Top companies trust Udemy',
                style: titleCompanyText.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Image.asset('assets/images/home/sponsor.png'),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Try Udemy Bussiness',
                style: tryUdemyBussinessText.copyWith(
                  fontWeight: bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
