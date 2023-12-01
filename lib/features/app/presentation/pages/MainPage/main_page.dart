import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wikifoodia/features/app/presentation/pages/detection/detectionFood.dart';
import 'package:wikifoodia/features/app/presentation/pages/search.dart';
import 'package:wikifoodia/features/app/presentation/widgets/color_extension.dart';

import '../AuthPages/login_page.dart';
import '../../../../../const.dart';
import 'category.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

String foodtype = "Banh Mi";


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
                                icon: Icon(Icons.camera_alt_rounded, color: TColor.primary,),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                      builder: (context) => DetectionFood()
                                  ));
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Category(),
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
