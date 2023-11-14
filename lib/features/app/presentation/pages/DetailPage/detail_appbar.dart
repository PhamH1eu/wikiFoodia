import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wikifoodia/features/app/presentation/pages/FavoritePage/food.dart';

import '../FavoritePage/favorite_provider.dart';

class DetailAppBar extends StatefulWidget {
  final Food food;
  const DetailAppBar({Key? key, required this.food}) : super(key: key);

  @override
  State<DetailAppBar> createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    return SliverAppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      expandedHeight: 250,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          widget.food.preview,
          fit: BoxFit.cover,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ))),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: provider.isExist(widget.food)
                  ? Icon(
                      Icons.favorite,
                      color: Color(0xfff97350),
                    )
                  : Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    ),
              onPressed: () {
                setState(() {
                  provider.toggleFav(widget.food);
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.storefront_sharp,
                    color: Colors.black,
                  ))),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.ios_share,
                    color: Colors.black,
                  ))),
        ),
      ],
    );
  }
}
