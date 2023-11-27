import 'package:flutter/material.dart';
import 'package:wikifoodia/features/app/presentation/pages/StorePage/map.dart';
import 'store.dart';
import 'package:url_launcher/url_launcher.dart';

class PopupCard extends StatelessWidget {
  final Store store;
  const PopupCard({super.key, required this.store});
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
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 5),
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
                                        onPressed: () async => await launchUrl(
                                            Uri(
                                                scheme: "tel",
                                                path: store.phone)),
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
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MapStore(store: store)));
                                      },
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
                                store.status
                                    ? Text(
                                        "Opening",
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 15),
                                      )
                                    : Text(
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
