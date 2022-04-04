import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:graduationproject/layout/widget/textfield.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  List<Marker> myMakers = [];
  Set<Polygon> myPolygon() {
    List<LatLng> polygonCoords =  [];
    polygonCoords.add(LatLng(37.43296265331129, -122.08832357078792));
    polygonCoords.add(LatLng(37.43006265331129, -122.08832357078792));
    polygonCoords.add(LatLng(37.43006265331129, -122.08332357078792));
    polygonCoords.add(LatLng(37.43296265331129, -122.08832357078792));

    Set<Polygon> polygonSet = new Set();
    polygonSet.add(Polygon(
        polygonId: PolygonId('test'),
        points: polygonCoords,
        strokeColor: Colors.red));

    return polygonSet;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black12,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: CustomText(title: 'Cura Doctor',color: Colors.black,fontSize: 25,alignment: Alignment.topCenter,)
        ,
      ),
      body:Stack(
        alignment: AlignmentDirectional.topCenter,
        children:   [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition:  const CameraPosition(
                target: LatLng(29.846261, 31.278190
                ),
                zoom: 14,

            ),
            onTap: _handleTap,
            markers: Set.from(myMakers),
           

          ),
        ],
      ) ,
    );
  }
  _handleTap(LatLng tainpoint){
    setState(() {
             myMakers = [];
             myMakers.add(Marker(
               markerId: MarkerId(tainpoint.toString()),
               position: tainpoint,
               infoWindow: InfoWindow(title: 'zahran company')
             ));
    });
  }

}
//AIzaSyD1ZU6EJWRICN2xQbMVmvMCi5G3V2u1F-E
