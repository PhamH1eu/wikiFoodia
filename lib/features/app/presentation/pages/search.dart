import 'package:flutter/material.dart';
import 'package:wikifoodia/features/app/presentation/pages/FavoritePage/food.dart';

import '../widgets/recent_food.dart';

List recentArr = allFoods;
List foundedArr = [];

class SearchPage extends StatefulWidget {
  final List initialFoods;
  const SearchPage({super.key, required this.initialFoods});

  @override
  State<SearchPage> createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  @override
  void initState() {
    foundedArr = widget.initialFoods;
    super.initState();
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

