import 'package:flutter/material.dart';
import 'package:wikifoodia/features/app/presentation/pages/FavoritePage/food.dart';
import 'package:wikifoodia/features/app/presentation/widgets/color_extension.dart';

class DetailInfo extends StatelessWidget {
  final Food food;
  const DetailInfo({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    final ingredientsFood = food.ingredients;
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              food.name,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 25,
                ),
                Text("4,5",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                    onTap: () {},
                    child: Text(
                      'Đánh giá',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: TColor.primary,
                          fontSize: 17,
                          fontWeight: FontWeight.normal),
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              food.description,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Nguyên liệu",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListView.builder(
              itemCount: ingredientsFood.length,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                final ingredient = ingredientsFood[index];
                return ingredientWidget(
                  name: ingredient.name,
                  icon: ingredient.icon,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class ingredientWidget extends StatelessWidget {
  final String name;
  final String icon;

  const ingredientWidget({super.key, required this.name, required this.icon});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: Image.asset(icon),
    );
  }
}
