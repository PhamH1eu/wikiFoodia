import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wikifoodia/features/app/presentation/pages/search.dart';

import '../widgets/category_cell.dart';
import '../widgets/color_extension.dart';
import '../widgets/popular_restaurant.dart';
import '../widgets/recent_food.dart';
import 'AuthPages/login_page.dart';



class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

String foodtype ="Banh Mi";
List catArr = [
  {"image": "assets/images/banhmi2.png", "name": "Banh Mi", "type":"Banh Mi"},
  {"image": "assets/images/icon/banhxeo2.png", "name": "Xeo Cake", "type":"Xeo Cake"},
  {"image": "assets/images/icon/douong2.png", "name": "Drink", "type":"Drink"},
  {"image": "assets/images/icon/goicuon2.png", "name": "Goi Cuon", "type":"Goi Cuon"},
  {"image": "assets/images/icon/pho2.png", "name": "Pho", "type":"Pho"},
  {"image": "assets/images/icon/bundaumemtom.png", "name": "Bun Dau", "type":"BDMT"},
  {"image": "assets/images/icon/comtam.png", "name": "Tấm Rice", "type":"Tam Rice"},
  {"image": "assets/images/icon/comrang.png", "name": "Fried Rice", "type":"Fried Rice"},
  {"image": "assets/images/icon/banhchung.png", "name": "Chung's Cake", "type":"Chung's Cake"},
  {"image": "assets/images/icon/banhcuon.png", "name": "Bánh cuốn", "type":"Cuon Cake"}
];

List mostPopArr = [
  {
    "image": "assets/images/m_res_2.png",
    "name": "Minute by tuk tuk",
    "rate": "4.9",
    "rating": "124",
    "type": "Banh Mi",
    "food_type": "Western Food"
  },
  {
    "image": "assets/images/res1.png",
    "name": "Phở Lý Quốc Sư",
    "rate": "4.9",
    "rating": "124",
    "type": "Pho",
    "food_type": "Pho Bac"
  },
];
class _MainPageState extends State<MainPage> {
  void reload() {
    setState(() {
    });
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
                  child: Padding(padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 46,
                      ),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
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
                                      style:
                                      TextStyle( fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 0,
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        size: 25,
                                      ),
                                      onPressed: () {
                                      },
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
                            IconButton(onPressed: () {}
                                , icon: Image.asset("assets/images/img.png",
                                  width: 30,
                                  height: 30,
                                )
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => SearchPage()),
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
                                }
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
                            var mObj = mostPopArr[index] as Map? ?? {};
                            return PopularCell(
                              mObj: mObj,
                              onTap: () {},
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
                          var rObj = recentArr[index] as Map? ?? {};
                          if(rObj['food_type'].toString() == foodtype) {
                            return RecentItemRow(
                              rObj: rObj,
                              onTap: () {},
                            );
                          }
                          else {
                            return SizedBox();
                          }
                        }),
                      ),
                    //  Note: ma thanh thien dep trai da code den doan nay
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