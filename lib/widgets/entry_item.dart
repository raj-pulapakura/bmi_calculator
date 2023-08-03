import 'package:bmi_calculator/model/entry.dart';
import 'package:bmi_calculator/widgets/expanded_entry_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final dateFormatter = DateFormat.yMd();

class BMIEntryItem extends StatefulWidget {
  const BMIEntryItem({super.key, required this.entry});

  final BMIEntry entry;

  @override
  State<StatefulWidget> createState() {
    return _BMIEntryItemState();
  }
}

class _BMIEntryItemState extends State<BMIEntryItem> {
  void onExpandItem() {
    showDialog(
      context: context,
      builder: (ctx) => ExpandedEntryItem(entry: widget.entry),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = widget.entry.displayMeasurements[0];
    final weight = widget.entry.displayMeasurements[1];
// Text(
//               dateFormatter.format(widget.entry.date),
//               style: Theme.of(context).textTheme.bodySmall,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Height: $height',
//                   style: Theme.of(context).textTheme.bodySmall,
//                 ),
//                 Text(
//                   'Weight: $weight',
//                   style: Theme.of(context).textTheme.bodySmall,
//                 ),
//               ],
//             ),
//             Text(
//               'Body Mass Index: ${widget.entry.bmi}',
//               style: Theme.of(context).textTheme.bodySmall,
//             ),
    return InkWell(
      onTap: onExpandItem,
      child: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [Text("Hello")],
        ),
      ),
    );
  }
}
