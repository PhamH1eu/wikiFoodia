import 'package:flutter/material.dart';
import 'package:wikifoodia/features/app/presentation/pages/StorePage/store.dart';

import 'color_extension.dart';

class PopularCell extends StatelessWidget {
  final Store mObj;
  final VoidCallback onTap;
  const PopularCell({super.key, required this.mObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                mObj.image.toString(),
                width: 260,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              mObj.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  mObj.type,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 12),
                ),

                Text(
                  " . ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.primary, fontSize: 12),
                ),

                Text(
                  mObj.food_type,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.secondaryText, fontSize: 12),
                ),

                const SizedBox(
                  width: 8,
                ),

                Image.asset(
                  "assets/images/rate.png",
                  width: 10,
                  height: 10,
                  fit: BoxFit.cover,
                ) ,
                const SizedBox(
                  width: 4,
                ),
                Text(
                  "4.6 (99+)",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.primary, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}