import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/RecentFile.dart';
import '../constants.dart';

DataRow recentFileDataRow(RecentFile fileInfo, context) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                fileInfo.title,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Colors.white38,
                      fontSize: 14,
                    ),
              ),
            ),
          ],
        ),
      ),
      DataCell(
        Text(
          fileInfo.date,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: Colors.white38,
                fontSize: 14,
              ),
        ),
      ),
      DataCell(Text(
        fileInfo.size,
        style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: Colors.white38,
              fontSize: 14,
            ),
      )),
    ],
  );
}
