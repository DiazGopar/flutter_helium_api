import 'package:flutter/material.dart';
import 'package:universe/universe.dart';

class MapViewPage extends StatelessWidget {
  const MapViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Rewards'),
      ),
      body: U.OpenStreetMap(
          center: [-6.175329, 106827253],
          type: OpenStreetMapType.HOT,
          zoom: 15),
    );
  }
}
