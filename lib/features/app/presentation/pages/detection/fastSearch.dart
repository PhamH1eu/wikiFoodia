// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../const.dart';
import '../../widgets/recent_food.dart';



List recentArr = allFoods;
List foundedArr = [];

class FastSearch extends StatefulWidget {
  final List initialFoods;
  final String foodName;
  final int time = 0;
  const FastSearch({super.key, required this.initialFoods,required this.foodName});

  @override
  State<FastSearch> createState() => _FastSearch();
}

class _FastSearch extends State<FastSearch> {
  @override
  void initState() {
    foundedArr = widget.initialFoods;
    super.initState();
    Search(widget.foodName);
  }

  // ignore: non_constant_identifier_names
  void Search(String value) {
    List result = [];
    if (value.isEmpty) {
      result = recentArr;
    } else {
      result = recentArr
          .where((food) =>
          food.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    setState(() {
      foundedArr = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page'),
        backgroundColor: Color(0xfff97350),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  autofocus: true,
                  onChanged: (value) => Search(value),
                  decoration: InputDecoration(
                    hintText: "Find your food",
                    prefixIcon: Container(
                      alignment: Alignment.center,
                      width: 30,
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.search,
                          size: 30,
                          color: Color(0xfff97350),
                        ),
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemCount: foundedArr.length,
                itemBuilder: ((context, index) {
                  var rObj = foundedArr[index];
                  return RecentItemRow(
                    rObj: rObj,
                    onTap: () {},
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

