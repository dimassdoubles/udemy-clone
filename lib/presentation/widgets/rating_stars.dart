import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../share/constants/colors.dart';

class RatingStars extends StatelessWidget {
  final double rating;
  const RatingStars({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      itemSize: 14,
      initialRating: rating,
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
    );
  }
}
