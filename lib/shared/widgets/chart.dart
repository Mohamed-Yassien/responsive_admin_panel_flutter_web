import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              startDegreeOffset: -40,
              sections: [
                PieChartSectionData(
                    color: primaryColor,
                    radius: 25,
                    showTitle: false,
                    value: 40),
                PieChartSectionData(
                    color: Colors.red,
                    radius: 18,
                    showTitle: false,
                    value: 30),
                PieChartSectionData(
                    color: Colors.amber,
                    radius: 15,
                    showTitle: false,
                    value: 20),
                PieChartSectionData(
                  color: Colors.pink,
                  radius: 12,
                  value: 15,
                  showTitle: false,
                ),
                PieChartSectionData(
                  color: primaryColor
                      .withOpacity(.5),
                  radius: 14,
                  value: 15,
                  showTitle: false,
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.center,
              children: [
                Text(
                  '29.1',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(
                    color: Colors.white,
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
                Text(
                  'of 140 GB',
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
