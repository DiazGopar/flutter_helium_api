import 'package:flutter/material.dart';
import 'package:flutter_helium_api/models/rewards_response.dart';

class RewardsViewPage extends StatelessWidget {
  const RewardsViewPage({Key? key, List<Reward>? rewards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Rewards'),
      ),
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Date',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Reward',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: List<DataRow>.generate(
          30,
          (int index) => DataRow(
            color: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              // All rows will have the same selected color.
              if (states.contains(MaterialState.selected)) {
                return Theme.of(context).colorScheme.primary.withOpacity(0.08);
              }
              // Even rows will have a grey color.
              if (index.isEven) {
                return Colors.grey.withOpacity(0.3);
              }
              return null; // Use default value for other states and odd rows.
            }),
            cells: <DataCell>[
              DataCell(Text('Row $index')),
              DataCell(Text('Row $index'))
            ],
            selected: false,
            onSelectChanged: (bool? value) {},
          ),
        ),
      ),
    );
  }
}
