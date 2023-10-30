import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../firebase_auth_implementation/google_auth_services.dart';
import '../widgets/category_cell.dart';
import 'login_page.dart';



class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List catArr = [
    {"image": "assets/images/img_mini_pancake.png", "name": "Pan Cake"},
    {"image": "assets/images/pho.png", "name": "Pho"},
    {"image": "assets/images/avarta_flutter.jpg", "name": "Pan Cake"},
    {"image": "assets/images/img_mini_pancake.png", "name": "Pan Cake"},
    {"image": "assets/images/img_mini_pancake.png", "name": "Pan Cake"},
  ];

  void reload() {
    print('hihih');
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
                                      width: 10,
                                    ),
                                    Image.asset(
                                      "assets/images/dropdown.png",
                                      width: 30,
                                      height: 30,
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Current Location",
                                      style: TextStyle(
                                          color: Color(0xfff97350),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
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
                                  decoration: InputDecoration(
                                    hintText: "Find your food or restaurant...",
                                    prefixIcon: Container(
                                      alignment: Alignment.center,
                                      width: 30,
                                      child: Image.asset(
                                        "assets/images/search.png",
                                        width: 35,
                                        height: 35,
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
                                }
                            );

                          }),
                        ),
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