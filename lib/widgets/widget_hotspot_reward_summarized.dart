import 'package:flutter/material.dart';

class HotspotRewardSummaryWidget extends StatelessWidget {
  final HotspotRewardSummary hotspotRewardSummary;

  const HotspotRewardSummaryWidget(
      {required this.hotspotRewardSummary, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue[200],
      ),
      child: ListView(
        children: [
          Text(hotspotRewardSummary.name),
        ],
      ),
    );
  }
}

class HotspotRewardSummary {
  final String name;
  final String value;
  final int amount;

  HotspotRewardSummary(
    this.name,
    this.value,
    this.amount,
  );
}
