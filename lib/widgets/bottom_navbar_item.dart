import 'package:flutter/material.dart';
import 'package:mangojek/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final String icon;
  final String name;
  final bool isActive;
  const BottomNavbarItem({
    super.key,
    this.isActive = false,
    this.icon = '',
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(),
        Icon(
          Icons.explore,
          color: isActive ? greenColor : greyColor,
        ),
        const SizedBox(height: 6),
        Text(
          name,
          style: isActive
              ? greenTextStyle.copyWith(fontSize: 12)
              : greyNavTextStyle.copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
