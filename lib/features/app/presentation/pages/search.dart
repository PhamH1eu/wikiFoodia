import 'package:flutter/material.dart';

import '../widgets/recent_food.dart';

List recentArr = [
  {
    "image": "assets/images/pic/banhchung.jpg",
    "name": "Bánh Chưng Bắc",
    "rate": "4.9",
    "rating": "124",
    "type": "Chung's Cake",
    "food_type": "Chung's Cake"
  },
  {
    "image": "assets/images/pic/banhchung2.jpg",
    "name": "Bánh Chưng Name",
    "rate": "4.9",
    "rating": "124",
    "type": "Chung's Cake",
    "food_type": "Chung's Cake"
  },
  {
    "image": "assets/images/pic/banhcuon.jpg",
    "name": "Bánh cuốn vl",
    "rate": "4.9",
    "rating": "124",
    "type": "Bánh cuốn",
    "food_type": "Cuon Cake"
  },
  {
    "image": "assets/images/pic/banhcuon2.jpg",
    "name": "Bánh cuốn vl",
    "rate": "4.9",
    "rating": "124",
    "type": "Bánh cuốn",
    "food_type": "Cuon Cake"
  },
  {
    "image": "assets/images/pic/banhmi.jpg",
    "name": "Bánh mì thịt",
    "rate": "4.9",
    "rating": "124",
    "type": "Bánh mì",
    "food_type": "Banh Mi"
  },
  {
    "image": "assets/images/pic/banhmi2.jpg",
    "name": "Bánh mì thập cẩm",
    "rate": "4.5",
    "rating": "124",
    "type": "Bánh mì",
    "food_type": "Banh Mi"
  },
  {
    "image": "assets/images/pic/banhxeo.jpg",
    "name": "Bánh xèo Bắc",
    "rate": "4.9",
    "rating": "124",
    "type": "Bánh xèo",
    "food_type": "Xeo Cake"
  },
  {
    "image": "assets/images/pic/banhxeo2.jpg",
    "name": "Bánh xèo Nam",
    "rate": "4.9",
    "rating": "124",
    "type": "Bánh xèo",
    "food_type": "Xeo Cake"
  },
  {
    "image": "assets/images/pic/comrang.jpg",
    "name": "Cơm rang thập cẩm",
    "rate": "4.9",
    "rating": "124",
    "type": "Cơm rang",
    "food_type": "Fried Rice"
  },
  {
    "image": "assets/images/pic/comtam.jpg",
    "name": "Cơm tấm",
    "rate": "4.9",
    "rating": "124",
    "type": "Cơm tấm",
    "food_type": "Tam Rice"
  },
  {
    "image": "assets/images/pic/bundaumamtom.jpg",
    "name": "Bún đậu",
    "rate": "4.9",
    "rating": "124",
    "type": "Mắm tôm",
    "food_type": "BDMT"
  },
  {
    "image": "assets/images/pic/bundaumamtom2.jpg",
    "name": "Bún đậu",
    "rate": "4.9",
    "rating": "124",
    "type": "Nước mắm",
    "food_type": "BDMT"
  },
  {
    "image": "assets/images/pic/goicuon.jpg",
    "name": "Gỏi cuốn",
    "rate": "4.9",
    "rating": "124",
    "type": "Gỏi sống",
    "food_type": "Goi Cuon"
  },
  {
    "image": "assets/images/pic/goi-cuon2.jpg",
    "name": "Gỏi cuốn",
    "rate": "4.9",
    "rating": "124",
    "type": "Gỏi sống",
    "food_type": "Goi Cuon"
  },
  {
    "image": "assets/images/pic/pho.jpg",
    "name": "Phở bòa",
    "rate": "4.9",
    "rating": "124",
    "type": "Pho Bac",
    "food_type": "Pho"
  },
  {
    "image": "assets/images/pic/douong.jpg",
    "name": "Cafe",
    "rate": "4.9",
    "rating": "124",
    "type": "Cao Nguyên",
    "food_type": "Drink"
  }
];
List foundedArr = [];

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  @override
  void initState() {
    foundedArr = recentArr;
    super.initState();
  }
  
  // ignore: non_constant_identifier_names
  void Search(String value) {
    List result = [];
    if(value.isEmpty) {
      result = recentArr;
    } else {
      result = recentArr
      .where((food) =>
          food["name"].toLowerCase().contains(value.toLowerCase()))
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
            Expanded(child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemCount: foundedArr.length,
              itemBuilder: ((context, index) {
                var rObj = foundedArr[index] as Map? ?? {};
                  return RecentItemRow(
                    rObj: rObj,
                    onTap: () {},
                  );
              }),
            ),)

          ],
        ),
      ),
    );
  }
}