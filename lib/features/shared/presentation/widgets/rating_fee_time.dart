import 'package:flutter/material.dart';
import 'package:foodappjava/features/shared/presentation/utils/icon_card.dart';

class RatingFeeTime extends StatelessWidget {
  const RatingFeeTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconCard.ratingCard(rating: '4.7'),
        const SizedBox(width: 20),
        IconCard.deliveryCard(deliveryFee: 'Free'),
        const SizedBox(width: 20),
        IconCard.durationCard(duration: '20min'),
      ],
    );
  }
}
