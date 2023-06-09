import 'dart:ui';

import 'package:flutter/material.dart';

class CostWidget extends StatelessWidget {
  final Color color;
  final double cost;
  const CostWidget({
    Key? key,
    required this.color,
    required this.cost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "₹",
          style: TextStyle(
            color: color,
            fontSize: 16,
            fontFeatures: const [
              FontFeature.superscripts(),
            ],
          ),
        ),
        Text(
          cost.toInt().toString(),
          style: TextStyle(
            fontSize: 25,
            color: color,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          (cost - cost.truncate()).toStringAsFixed(2),
          style: TextStyle(
            fontSize: 10,
            color: color,
            fontFeatures: const [
              FontFeature.superscripts(),
            ],
          ),
        )
      ],
    );
  }
}
