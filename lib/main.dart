import 'package:flutter/material.dart';
import 'package:flutter_helium_api/provider/hotspot_provider.dart';
import 'package:flutter_helium_api/provider/hotspot_reward_provider.dart';

import 'models/hotspot.dart';
import 'models/coordinate_square.dart';
import 'models/rewards_response.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _hotspotname = "";
  String _hotspotrewards = "";
  var hotSpotClient = HotSpotClient();
  var hotspotRewardClient = HotSpotRewardClient();

  void _incrementCounter() async {
    //Hotspot? hotspot;
    List<Hotspot> hotspotList = [];
    List<Reward> rewards = [];
    try {
      //hotspot = await hotSpotClient.getHotSpotbyAddress(
      //    hostAddress: "11vWtU1jApHC5b1pfR2ywTZ6bYqNSuuUPGNuFanhHTJGk6cM12V");
      //hotspotList =
      //    await hotSpotClient.getHotSpotsbyName(name: "rare-plum-griffin");
      // ignore: avoid_print
      hotspotList = await hotSpotClient.getHotSpotsbyCoordinatesSquared(
          coordinatesquare: CoordinateSquare(
              southwesternlat: 27.964542,
              southwesternlong: -16.960667,
              northeasternlat: 28.622006,
              northeasternlong: -16.117619));
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }

    rewards = await hotspotRewardClient.getHotSpotRewardsbyAddress(
        hostAddress: "11vWtU1jApHC5b1pfR2ywTZ6bYqNSuuUPGNuFanhHTJGk6cM12V");

    setState(() {
      _counter++;
      _hotspotname = "";
      _hotspotname = hotspotList.length.toString();
      _hotspotrewards = "";
      for (var reward in rewards) {
        _hotspotrewards += reward.amount.toString();
      }
      //for (var hotspot in hotspotList) {
      //  _hotspotname += hotspot.address + ' ';
      //}
      //_hotspotname = hotspot?.name ?? "None";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _hotspotname,
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _hotspotrewards,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
