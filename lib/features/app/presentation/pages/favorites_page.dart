import 'package:flutter/material.dart';

import '../widgets/food_cart.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(AppBar().preferredSize.height),
      body: ListView(
        children: <Widget>[
          FoodCard(avatarURL: 'assets/images/banhchung.jpg', name: 'Bánh chưng', subtitle: 'Đặc sản Tết',),

          FoodCard(avatarURL: 'assets/images/banhcuon.jpg', name: 'Bánh cuốn', subtitle: 'Đặc sản Hà Nội',),

          FoodCard(avatarURL: 'assets/images/banhmi.jpg', name: 'Bánh cuốn', subtitle: 'Đặc sản Hà Nội',),

          FoodCard(avatarURL: 'assets/images/banhxeo.jpg', name: 'Bánh cuốn', subtitle: 'Đặc sản Hà Nội',),

          FoodCard(avatarURL: 'assets/images/comrang.jpg', name: 'Bánh cuốn', subtitle: 'Đặc sản Hà Nội',),

          FoodCard(avatarURL: 'assets/images/comtam.jpg', name: 'Bánh cuốn', subtitle: 'Đặc sản Hà Nội',),

          FoodCard(avatarURL: 'assets/images/banhchung.jpg', name: 'Bánh chưng', subtitle: 'Đặc sản Tết',),

          FoodCard(avatarURL: 'assets/images/banhcuon.jpg', name: 'Bánh cuốn', subtitle: 'Đặc sản Hà Nội',),

          FoodCard(avatarURL: 'assets/images/banhmi.jpg', name: 'Bánh cuốn', subtitle: 'Đặc sản Hà Nội',),

          FoodCard(avatarURL: 'assets/images/banhxeo.jpg', name: 'Bánh cuốn', subtitle: 'Đặc sản Hà Nội',),

          FoodCard(avatarURL: 'assets/images/comrang.jpg', name: 'Bánh cuốn', subtitle: 'Đặc sản Hà Nội',),

          FoodCard(avatarURL: 'assets/images/comtam.jpg', name: 'Bánh cuốn', subtitle: 'Đặc sản Hà Nội',),

        ],
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
                        hintStyle: TextStyle(color: Colors.grey))),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search, color: Color(0xfff97350)),
                    onPressed: () {},
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
