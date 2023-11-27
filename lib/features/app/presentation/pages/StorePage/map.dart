// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

import 'store.dart';

class MapStore extends StatefulWidget {
  final Store store;
  const MapStore({super.key, required this.store});

  @override
  State<MapStore> createState() => _MapStoreState();
}

class _MapStoreState extends State<MapStore> {
  final _mapControl = MapController();
  List<LatLng> routpoints = [];
  LatLng currentPostion = LatLng(0, 0);

  void _getUserLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    var position = await GeolocatorPlatform.instance.getCurrentPosition();
    if (mounted) {
      setState(() {
        currentPostion = LatLng(position.latitude, position.longitude);
      });
    }

    var v1 = currentPostion.latitude;
    var v2 = currentPostion.longitude;
    var v3 = widget.store.location.first;
    var v4 = widget.store.location.last;

    var url = Uri.parse(
        'http://router.project-osrm.org/route/v1/driving/$v2,$v1;$v4,$v3?steps=true&annotations=true&geometries=geojson&overview=full');
    var response = await http.get(url);
    if (mounted) {
      setState(() {
        routpoints = [];
        var ruter =
            jsonDecode(response.body)['routes'][0]['geometry']['coordinates'];
        for (int i = 0; i < ruter.length; i++) {
          var reep = ruter[i].toString();
          reep = reep.replaceAll("[", "");
          reep = reep.replaceAll("]", "");
          var lat1 = reep.split(',');
          var long1 = reep.split(",");
          routpoints.add(LatLng(double.parse(lat1[1]), double.parse(long1[0])));
        }
      });
    }
  }

  @override
  void initState() {
    _getUserLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
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
      ),
      body: Stack(children: [
        FlutterMap(
          options: MapOptions(
            initialCenter:
                LatLng(widget.store.location.first, widget.store.location.last),
            initialZoom: 13.0,
          ),
          mapController: _mapControl,
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            ),
            PolylineLayer(polylines: [
              Polyline(
                  points: routpoints, strokeWidth: 5.0, color: Colors.blueAccent)
            ]),
            // TileLayer(
            //   urlTemplate:
            //       'https://api.mapbox.com/styles/v1/anhhungdaychau/clpbenuin007u01padi4e93tx/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYW5oaHVuZ2RheWNoYXUiLCJhIjoiY2xwYmVqbzMzMGNuZzJrb2J4YWZ1ajhnciJ9.2y5YF0tkLClfFWTIkMHz0Q',
            //   additionalOptions: const {
            //     'accessToken':
            //         'pk.eyJ1IjoiYW5oaHVuZ2RheWNoYXUiLCJhIjoiY2xwYmVqbzMzMGNuZzJrb2J4YWZ1ajhnciJ9.2y5YF0tkLClfFWTIkMHz0Q',
            //     'id': 'mapbox.mapbox-streets-v7'
            //   },
            // ),
            MarkerLayer(markers: [
              Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(
                      widget.store.location.first, widget.store.location.last),
                  child: IconButton(
                    icon: Icon(Icons.location_on),
                    color: Color(0xfff97350),
                    iconSize: 45,
                    onPressed: () {},
                  )),
              Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(
                      currentPostion.latitude, currentPostion.longitude),
                  child: IconButton(
                    icon: Icon(Icons.location_on),
                    color: Color(0xfff97350),
                    iconSize: 45,
                    onPressed: () {},
                  )),
            ])
          ],
        ),
        Positioned(
          bottom: 20,
          left: MediaQuery.of(context).size.width * 0.1,
          right: MediaQuery.of(context).size.width * 0.1,
          child: GestureDetector(
            onTap: () {
              _mapControl.move(
                  LatLng(
                      widget.store.location.first, widget.store.location.last),
                  13.0);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      child: Image.asset(
                        widget.store.image,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.store.name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.store.address,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.phone,
                                color: Color(0xfff97350),
                                size: 25.0,
                              ),
                              onPressed: () async => await launchUrl(
                                  Uri(scheme: "tel", path: widget.store.phone)),
                            ),
                            Text(
                              widget.store.phone,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
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
                        widget.store.status
                            ? Text(
                                "Opening",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 15),
                              )
                            : Text(
                                "Closed",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 15),
                              ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
