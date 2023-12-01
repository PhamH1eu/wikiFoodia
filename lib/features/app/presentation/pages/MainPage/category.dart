import 'package:flutter/material.dart';
import 'package:wikifoodia/const.dart';

import '../../widgets/category_cell.dart';
import '../../widgets/color_extension.dart';
import '../../widgets/popular_restaurant.dart';
import '../../widgets/recent_food.dart';
import '../StorePage/map.dart';
import '../search.dart';
import 'main_page.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            itemCount: catArr.length,
            itemBuilder: ((context, index) {
              var cObj = catArr[index] as Map? ?? {};
              return CategoryCell(
                  index: index,
                  cObj: cObj,
                  onTap: () {
                    indexSelected = index;
                    setState(() {
                      foodtype = cObj['type'];
                    });
                  });
            }),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Restaurant",
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            itemCount: mostPopArr.length,
            itemBuilder: ((context, index) {
              var mObj = mostPopArr[index];
              return PopularCell(
                mObj: mObj,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MapStore(store: mObj)),
                  );
                },
              );
            }),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Foods",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          itemCount: recentArr.length,
          itemBuilder: ((context, index) {
            var rObj = recentArr[index];
            if (rObj.food_type.toString() == foodtype) {
              return RecentItemRow(
                rObj: rObj,
                onTap: () {},
              );
            } else {
              return SizedBox();
            }
          }),
        ),
      ],
    );
  }
}
