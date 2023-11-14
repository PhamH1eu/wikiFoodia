import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../DetailPage/detail_page.dart';
import 'favorite_provider.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {


  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final foods = provider.favFoods;

    return Scaffold(
      appBar: _appBar(AppBar().preferredSize.height),
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
            child: InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(food: food,))),
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
            )
          );
        },
      ),
    );
  }

  _appBar(height) => PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, height + 80),
        child: Stack(
          children: <Widget>[
            Container(
              // Background
              color: Color(0xfff97350),
              height: height + 90,
              width: MediaQuery.of(context).size.width, // Background
              child: Center(
                child: Text(
                  "Favorites",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),

            Container(), // Required some widget in between to float AppBar

            Positioned(
              // To take AppBar Size only
              top: 100.0,
              left: 20.0,
              right: 20.0,
              child: AppBar(
                backgroundColor: Colors.white,
                leading: Icon(
                  Icons.menu,
                  color: Color(0xfff97350),
                ),
                primary: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                title: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search, color: Color(0xfff97350)),
                    onPressed: () {
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications, color: Color(0xfff97350)),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      );
}
