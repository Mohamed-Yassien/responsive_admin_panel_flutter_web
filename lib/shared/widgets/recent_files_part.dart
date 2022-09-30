import 'package:flutter/material.dart';
import 'package:responsive_dashboard/shared/widgets/reusable_recent_file.dart';

import '../../models/RecentFile.dart';
import '../constants.dart';

class RecentFilesPart extends StatelessWidget {
  const RecentFilesPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recent Files',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Colors.white,
                      fontSize: 18,
                    ),
              ),
              SizedBox(
                width: double.infinity,
                child: DataTable(
                  columnSpacing: defaultPadding,
                  columns: [
                    DataColumn(
                      label: Text(
                        "File Name",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color: Colors.white38,
                              fontSize: 14,
                            ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Date",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color: Colors.white38,
                              fontSize: 14,
                            ),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        "Size",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color: Colors.white38,
                              fontSize: 14,
                            ),
                      ),
                    ),
                  ],
                  rows: List.generate(
                    demoRecentFiles.length,
                    (index) =>
                        recentFileDataRow(demoRecentFiles[index], context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
