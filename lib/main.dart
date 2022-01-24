import 'package:flutter/material.dart';
import 'package:flutter_helium_api/provider/hotspot_web_provider.dart';
import 'package:flutter_helium_api/provider/hotspot_reward_web_provider.dart';
import 'package:flutter_helium_api/views/map_view_page.dart';
import 'package:flutter_helium_api/views/rewards_view_page.dart';
import 'package:get/get.dart';

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
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const MyHomePage(title: 'Flutter Demo Home Page'),
        ),
        GetPage(
          name: '/rewardsview/',
          page: () => const RewardsViewPage(),
        ),
        //You can define a different page for routes with arguments, and another without arguments, but for that you must use the slash '/' on the route that will not receive arguments as above.
        GetPage(
          name: '/mapview/',
          page: () => MapViewPage(),
        ),
        /*GetPage(
        name: '/third',
        page: () => Third(),
        transition: Transition.cupertino  
      ),*/
      ],
      title: 'Helium Rewards Explorer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Helium Rewards Home Page'),
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
  double _amount = 0;
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

    rewards =
        await hotspotRewardClient.getHotSpotRewardsbyAddressAndTimeInterval(
      hostAddress: "11vWtU1jApHC5b1pfR2ywTZ6bYqNSuuUPGNuFanhHTJGk6cM12V",
      firstTime: DateTime.now().subtract(const Duration(days: 30)),
      lastTime: DateTime.now(),
    );

    setState(() {
      _counter++;
      _hotspotname = "";
      _hotspotname = rewards.length.toString();
      _hotspotrewards = "";
      _amount = 0;
      for (var reward in rewards) {
        _amount += reward.amount;
      }
      _hotspotrewards = (_amount / 100000000).toStringAsFixed(2);
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
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Rewards'),
              onTap: () {
                // Update the state of the app.
                // ...
                Get.toNamed('/rewardsview');
              },
            ),
            ListTile(
              title: const Text('Map'),
              onTap: () {
                // Update the state of the app.
                // ...
                Get.toNamed('/mapview');
              },
            ),
          ],
        ),
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
              style: Theme.of(context).textTheme.bodyText1,
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
