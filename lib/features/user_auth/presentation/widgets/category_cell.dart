import 'package:flutter/material.dart';

import '../pages/main_page.dart';
import 'color_extension.dart';
int indexSelected = 0;

class CategoryCell extends StatefulWidget {
  final int index;
  final Map cObj;
  final VoidCallback onTap;
  const CategoryCell({super.key, required this.index, required this.cObj, required this.onTap });


  @override
  State<CategoryCell> createState() => _CategoryCell();
}

class _CategoryCell extends State<CategoryCell> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      color: indexSelected == widget.index ? Colors.orange : Colors.grey[100],
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                widget.cObj["image"].toString(),
                width: 85,
                height: 85,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              widget.cObj["name"],
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
