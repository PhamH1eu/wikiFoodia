import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wikifoodia/features/app/presentation/pages/FavoritePage/food.dart';
import 'package:wikifoodia/features/app/presentation/pages/StorePage/map.dart';
import 'package:wikifoodia/features/app/presentation/pages/search.dart';

import '../widgets/category_cell.dart';
import '../widgets/color_extension.dart';
import '../widgets/popular_restaurant.dart';
import '../widgets/recent_food.dart';
import 'AuthPages/login_page.dart';
import 'StorePage/store.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

String foodtype = "Banh Mi";
List catArr = [
  {"image": "assets/images/banhmi2.png", "name": "Banh Mi", "type": "Banh Mi"},
  {
    "image": "assets/images/icon/banhxeo2.png",
    "name": "Xeo Cake",
    "type": "Xeo Cake"
  },
  {"image": "assets/images/icon/douong2.png", "name": "Drink", "type": "Drink"},
  {
    "image": "assets/images/icon/goicuon2.png",
    "name": "Goi Cuon",
    "type": "Goi Cuon"
  },
  {"image": "assets/images/icon/pho2.png", "name": "Pho", "type": "Pho"},
  {
    "image": "assets/images/icon/bundaumemtom.png",
    "name": "Bun Dau",
    "type": "BDMT"
  },
  {
    "image": "assets/images/icon/comtam.png",
    "name": "Tấm Rice",
    "type": "Tam Rice"
  },
  {
    "image": "assets/images/icon/comrang.png",
    "name": "Fried Rice",
    "type": "Fried Rice"
  },
  {
    "image": "assets/images/icon/banhchung.png",
    "name": "Chung's Cake",
    "type": "Chung's Cake"
  },
  {
    "image": "assets/images/icon/banhcuon.png",
    "name": "Bánh cuốn",
    "type": "Cuon Cake"
  }
];

List mostPopArr = [
  Store(
      name: 'Bánh chưng tiến Vua Phong Châu',
      address: '57 ngách 1 Ngõ 178 Thái Hà',
      image: 'assets/images/restaurants/tienvuaphongchau.png',
      phone: '0916 086 938',
      status: false,
      location: {21.014487108065232, 105.82022338012801},
      type: "Bánh chưng",
      food_type: "Chung Cake"),
  Store(
      name: 'Bánh cuốn Bà Béo',
      address: '226 Đ. Phú Mỹ',
      image: 'assets/images/restaurants/banhcuonbabeo.jpg',
      phone: '0925 066 886',
      status: true,
      location: {21.02766786814987, 105.77290053779844},
      type: "Bánh cuốn",
      food_type: "Cuon Cake"),
  Store(
      name: 'Phở Lý Quốc Sư Mỹ Đình',
      address: 'N4-A10, Đ. Mỹ Đình, Hà Nội',
      image: 'assets/images/res1.png',
      phone: '0968 318 765',
      status: true,
      location: {21.02328394468234, 105.77381979546853},
      type: "Phở",
      food_type: "Pho Bac"),
];

class _MainPageState extends State<MainPage> {
  void reload() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 46,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Delivering to",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 0,
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        size: 25,
                                      ),
                                      onPressed: () {},
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Current Location",
                                      style: TextStyle(
                                          color: Color(0xfff97350),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/images/avatar.jpg"),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "What would you like to order",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Trajan Pro',
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextField(
                                  onTap: () {
                                    primaryFocus!.unfocus();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SearchPage(
                                                initialFoods: allFoods,
                                              )),
                                    );
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Find your food or restaurant...",
                                    prefixIcon: Container(
                                      alignment: Alignment.center,
                                      width: 30,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.search,
                                          color: Color(0xfff97350),
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 30),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFECEFF1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.filter_list),
                                onPressed: () {
                                  // Xử lý sự kiện khi nhấn vào nút lọc
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
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
                                  reload();
                                  foodtype = cObj['type'];
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
                                      builder: (context) =>
                                          MapStore(store: mObj)),
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
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text("Something went wrong"),
              );
            } else {
              return LoginPage();
            }
          }),
    );
  }
}
