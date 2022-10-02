import 'package:flutter/material.dart';
import 'package:responsive_dashboard/shared/widgets/reusable_chart_card.dart';

import '../constants.dart';
import 'chart.dart';

class StorageDetailsPart extends StatelessWidget {
  const StorageDetailsPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Storage Details',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(
                color: Colors.white,
              ),
            ),
            const Chart(),
            ReusableChartCard(
              title: 'Documents Files',
              svgPath: 'assets/icons/Documents.svg',
            ),
            ReusableChartCard(
              title: 'Media Files',
              svgPath: 'assets/icons/media.svg',
            ),
            ReusableChartCard(
              title: 'Other Files',
              svgPath: 'assets/icons/folder.svg',
            ),
            ReusableChartCard(
              title: 'Unknown Files',
              svgPath: 'assets/icons/unknown.svg',
            ),
          ],
        ),
      ),
    );
  }
}
