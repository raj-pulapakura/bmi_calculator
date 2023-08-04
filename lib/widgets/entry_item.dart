import 'package:bmi_calculator/model/entry.dart';
import 'package:bmi_calculator/widgets/expanded_entry_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final dateFormatter = DateFormat.yMd();

class BMIEntryItem extends StatelessWidget {
  const BMIEntryItem({super.key, required this.entry});

  final BMIEntry entry;

  void onExpandItem(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => ExpandedEntryItem(entry: entry),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = entry.displayMeasurements[0];
    final weight = entry.displayMeasurements[1];

    return InkWell(
      onTap: () => onExpandItem(context),
      child: Card(
        child: Column(children: [
          Text(
            dateFormatter.format(entry.date),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Height: $height',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                'Weight: $weight',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          Text(
            'Body Mass Index: ${entry.bmi}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ]),
      ),
    );
  }
}
