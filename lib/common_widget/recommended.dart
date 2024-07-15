import 'package:flutter/material.dart';

import '../common/colors.dart';

class RecommendedCell extends StatelessWidget {
  final Map mObj;
  const RecommendedCell({super.key, required this.mObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(19),
            child: Image.asset(
              mObj["image"],
              width: double.maxFinite,
              height: 125,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
                mObj["name"],
                maxLines: 1,
                style: TextStyle(
                  color: TColor.primaryText60,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),

              Text(
                mObj["artist"],
                maxLines: 1,
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
        ],
      ),
    );
    
  }
}
