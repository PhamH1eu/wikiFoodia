import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wikifoodia/features/app/presentation/pages/FavoritePage/food.dart';
import 'FavoritePage/favorite_provider.dart';

class FakeFavPage extends StatefulWidget {
  const FakeFavPage({Key? key}) : super(key: key);

  @override
  State<FakeFavPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<FakeFavPage> {
  List<Food> foods = allFoods;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    return Scaffold(
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          final food = foods[index];
          return Container(
            margin: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 7.0, bottom: 7.0),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF7090B0).withOpacity(0.2),
                  blurRadius: 20.0,
                  offset: const Offset(0, 10.0),
                )
              ],
            ),
            child: Card(
                color: Colors.white,
                child: ListTile(
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.5),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                  leading: Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(food.preview),
                      ),
                    ),
                  ),
                  title: Text(
                    food.name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  subtitle: Text(
                    food.subtitle,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  trailing: IconButton(
                    icon: provider.isExist(food)
                        ? Icon(
                            Icons.favorite,
                            color: Color(0xfff97350),
                          )
                        : Icon(Icons.favorite_border),
                    onPressed: () {
                      setState(() {
                        provider.toggleFav(food);
                      });
                    },
                  ),
                )),
          );
        },
      ),
    );
  }
}
