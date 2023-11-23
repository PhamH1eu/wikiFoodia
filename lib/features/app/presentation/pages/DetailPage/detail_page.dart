import 'package:flutter/material.dart';
import 'package:wikifoodia/features/app/presentation/pages/DetailPage/detail_appbar.dart';
import 'package:wikifoodia/features/app/presentation/pages/DetailPage/detail_info.dart';
import 'package:wikifoodia/features/app/presentation/pages/FavoritePage/food.dart';

class DetailPage extends StatefulWidget {
  final Food food;
  const DetailPage({Key? key, required this.food}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          DetailAppBar(food: widget.food,),
          // SliverPadding(
          //   padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
          //   sliver: SliverToBoxAdapter(
          //     child: DetailInfo(food: widget.food)
          //   ),
          // ),
          SliverToBoxAdapter(
            child: DetailInfo(food: widget.food),
          ),
        ],
      ),
    );
  }
}
