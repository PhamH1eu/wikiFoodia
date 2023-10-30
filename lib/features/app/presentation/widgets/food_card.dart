// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  final String? name;
  bool? isFavorite = false;
  final String avatarURL;
  final String? subtitle;

  FoodCard({
    super.key,
    this.name,
    this.subtitle,
    required this.avatarURL,
  });

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.only(left: 15.0, right: 15.0, top: 7.0, bottom: 7.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF7090B0).withOpacity(0.2),
            blurRadius: 20.0,
            offset: const Offset(0, 10.0),
          )
        ],
      ),
      child: Card(
          color: Colors.white,
          child: ListTile(
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.5),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
            leading: Container(
              width: 70.0,
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(widget.avatarURL),
                ),
              ),
            ),
            title: Text(
              widget.name!,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            subtitle: Text(
              widget.subtitle!,
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: IconButton(
              icon: widget.isFavorite == true
                  ? Icon(Icons.favorite_border)
                  : Icon(
                      Icons.favorite,
                      color: Color(0xfff97350),
                    ),
              onPressed: () {
                setState(() {
                  if (widget.isFavorite != null) {
                    widget.isFavorite = !widget.isFavorite!;
                  }
                });
              },
            ),
          )),
    );
  }
}
