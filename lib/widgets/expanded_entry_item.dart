import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/model/entry.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

final dateFormatter = DateFormat.yMMMMEEEEd();

class ExpandedEntryItem extends StatelessWidget {
  const ExpandedEntryItem({super.key, required this.entry});

  final BMIEntry entry;

  @override
  Widget build(BuildContext context) {
    final height = entry.displayMeasurements[0];
    final weight = entry.displayMeasurements[1];

    final status = entry.status[0] as BMIStatus;
    final statusExtra = entry.status[1] as String;

    final displaySmall = Theme.of(context).textTheme.displaySmall;
    final displayMedium = Theme.of(context).textTheme.displayMedium;
    final displayLarge = Theme.of(context).textTheme.displayLarge;

    Color statusColor = Colors.blue; // underweight

    if (status == BMIStatus.healthy) {
      statusColor = Colors.green;
    } else if (status == BMIStatus.overweight) {
      statusColor = Colors.yellow;
    } else if (status == BMIStatus.obese) {
      statusColor = Colors.red;
    }

    return Dialog(
      child: Container(
        height: 500,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            Text(dateFormatter.format(entry.date), style: displayLarge),
            const SizedBox(height: 40),
            Text('Height: $height', style: displayMedium),
            const SizedBox(height: 10),
            Text('Weight: $weight', style: displayMedium),
            const SizedBox(height: 10),
            Text('Body Mass Index: ${entry.bmi}', style: displayMedium),
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: 'Status: ', style: displayMedium),
                  TextSpan(
                    text: status.name.capitalize(),
                    style: displayMedium!.copyWith(color: statusColor),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              statusExtra,
              textAlign: TextAlign.center,
              style: displayMedium,
            ),
            const Spacer(),
            Text(
              '*According to the National Health and Medical Research Council, a healthy BMI is between 20-25 for most adults*',
              textAlign: TextAlign.center,
              style: displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
