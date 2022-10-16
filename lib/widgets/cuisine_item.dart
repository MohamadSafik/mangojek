import 'package:flutter/material.dart';
import 'package:mangojek_mobile/theme.dart';

class CuisineItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  const CuisineItem({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          width: 0.2,
          color: greyColor,
        ),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            width: 55,
            height: 55,
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(imageUrl),
            ),
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
