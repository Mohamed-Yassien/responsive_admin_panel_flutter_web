import 'package:flutter/material.dart';
import 'package:responsive_dashboard/shared/responsive.dart';

import 'package:responsive_dashboard/shared/widgets/recent_files_grid.dart';

class MyFilesGrid extends StatelessWidget {
  const MyFilesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Responsive(
      mobile: RecentFilesGrid(
        crossCount: size.width < 650 ? 2 : 4,
        aspectRatio: size.width < 650 ? 1.3 : 1,
      ),
      desktop: RecentFilesGrid(
        aspectRatio: size.width < 850 ? 1.3 : 1,
      ),
      tablet: RecentFilesGrid(),
    );
  }
}
