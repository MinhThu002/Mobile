import 'package:coffee/widgets/map_app_bar.dart';
import 'package:flutter/material.dart';

class Mappage extends StatefulWidget {
  const Mappage({super.key});

  @override
  State<Mappage> createState() => _MappageState();
}

class _MappageState extends State<Mappage> {
  // static const LatLng _pGooglePlex = LatLng(latitude, longitude);
  @override
  Widget build(BuildContext context) {
    // MapAppBar();
    return Scaffold(
        // backgroundColor: Colors.white,
        //  body: GoogleMap(initialCameraPosition: initialCameraPosition),
        );
  }
}
