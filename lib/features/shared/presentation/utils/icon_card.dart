import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodappjava/app/assets_path.dart';

class IconCard {
  static Widget deliveryCard({required String deliveryFee}) {
    return Container(
      child: Row(
        children: [
          SvgPicture.asset(AssetsPath.deliveryIcon),
          Text(" $deliveryFee"),
        ],
      ),
    );
  }
  static Widget ratingCard({required String rating}) {
    return Container(
      child: Row(
        children: [
          SvgPicture.asset(AssetsPath.ratingIcon),
          Text(" $rating"),
        ],
      ),
    );
  }
  static Widget durationCard({required String duration}) {
    return Container(
      child: Row(
        children: [
          SvgPicture.asset(AssetsPath.clockIcon),
          Text(" $duration"),
        ],
      ),
    );
  }
}
