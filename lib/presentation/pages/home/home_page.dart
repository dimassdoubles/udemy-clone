import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:udemy_clone/core/constants/colors.dart';
import 'package:udemy_clone/core/constants/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.asset(
            'assets/images/home/top.png',
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Learning that fits',
            style: loginTitle.copyWith(
              fontSize: 36,
              fontWeight: semiBold,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Skills for your present (and future)',
            style: loginBody,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Featured',
            style: loginBody.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              FeaturedItem(),
              FeaturedItem(),
            ],
          ),
        ),
        const SizedBox(
          height: 48,
        ),
      ],
    );
  }
}

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 16,
      ),
      width: MediaQuery.of(context).size.width * 2 / 3 - 32,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'The Perfect Golf Swing - TimeLess Golf Instruction',
              maxLines: 2,
              style: loginBody.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Jim McLellan',
              style: greyTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  '4.6',
                  style: ratingNumberText.copyWith(
                    fontSize: 12,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                RatingBar(
                  itemSize: 14,
                  initialRating: 4,
                  ratingWidget: RatingWidget(
                    empty: Icon(
                      Icons.star_border_outlined,
                      color: ratingStarColor,
                    ),
                    half: Icon(
                      Icons.star,
                      color: ratingStarColor,
                    ),
                    full: Icon(
                      Icons.star,
                      color: ratingStarColor,
                    ),
                  ),
                  onRatingUpdate: (value) {},
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '(749)',
                  style: reviewText.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Web Exclusive',
              style: loginBody.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                color: labelBestSelleColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
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
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
