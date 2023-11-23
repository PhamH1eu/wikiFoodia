import 'package:flutter/material.dart';
import '../FavoritePage/food.dart';
import 'hero_dialog_route.dart';
import 'store.dart';

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
        title: Text('Stores'),
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
                      child: _TodoPopupCard(
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
                        fit: BoxFit.fill,
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
                                Text(
                                  'by Unknown Chef',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w300,
                                  ),
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

class _TodoPopupCard extends StatelessWidget {
  final Store store;
  const _TodoPopupCard({super.key, required this.store});
  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: 'popup-card',
        child: SingleChildScrollView(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            margin: EdgeInsets.all(8),
            color: Colors.white,
            elevation: 5,
            child: SizedBox(
              width: 350,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      child: Image.asset(
                        store.image,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 10),
                          child: Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  store.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 320,
                                  child: Text(
                                    store.address,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 320,
                                  child: ListTile(
                                    contentPadding: EdgeInsets.only(
                                      left: 0,
                                    ),
                                    leading: Transform.translate(
                                      offset: Offset(-16, 0),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.phone,
                                          color: Color(0xfff97350),
                                          size: 25.0,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    horizontalTitleGap: -20,
                                    title: Text(
                                      store.phone,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    trailing: IconButton(
                                      icon: Icon(
                                        Icons.location_on_outlined,
                                        color: Color(0xfff97350),
                                        size: 26.0,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 20.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 20.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 20.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey[400],
                                      size: 20.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey[400],
                                      size: 20.0,
                                    ),
                                    Text(
                                      " (21)",
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                ),
                                Text(
                                  "Opening",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 15),
                                ),
                                Text(
                                  "Closed",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 15),
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
          ),
        ));
  }
}
