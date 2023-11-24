import 'package:flutter/material.dart';
import '../FavoritePage/food.dart';
import 'hero_dialog_route.dart';
import 'store.dart';
import 'pop_up_store.dart';

class StoresPage extends StatefulWidget {
  final Food food;
  const StoresPage({super.key, required this.food});

  @override
  // ignore: library_private_types_in_public_api
  _StoresPageState createState() => _StoresPageState();
}

class _StoresPageState extends State<StoresPage> {
  @override
  Widget build(BuildContext context) {
    List<Store> stores = widget.food.stores;
    return Scaffold(
      appBar: AppBar(
        title: Text('Found ${stores.length} stores'),
        centerTitle: true,
        backgroundColor: Color(0xfff97350),
      ),
      body: GridView.builder(
        itemCount: stores.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 0.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          Store store = stores[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            margin: EdgeInsets.all(8),
            color: Colors.white,
            elevation: 5,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  HeroDialogRoute(
                    builder: (context) => Center(
                      child: PopupCard(
                        store: store,
                      ),
                    ),
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      child: Image.asset(
                        store.image,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  store.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.access_time, size: 15),
                                    Text(
                                      ' 10-15 mins',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 18.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 18.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 18.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey[400],
                                      size: 18.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey[400],
                                      size: 18.0,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
