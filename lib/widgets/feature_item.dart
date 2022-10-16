import 'package:flutter/material.dart';
import 'package:mangojek/theme.dart';

class FeatureItem extends StatelessWidget {
  final String imageUrl;
  final String name;

  const FeatureItem({
    super.key,
    required this.imageUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      // margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        border: Border.all(color: greenColor, width: 0.5),
        // color: greenColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Image.asset(
              imageUrl,
              width: 35,
              height: 35,
            ),
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: blackTextStyle.copyWith(
              overflow: TextOverflow.ellipsis,
              fontSize: 10,
              fontWeight: medium,
            ),
          )
        ],
      ),
    );
  }
}
