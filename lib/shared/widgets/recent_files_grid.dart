import 'package:flutter/material.dart';

import '../../models/MyFiles.dart';
import 'grid_item.dart';

class RecentFilesGrid extends StatelessWidget {
  final int crossCount;
  final double aspectRatio;

  RecentFilesGrid({
    this.crossCount = 4,
    this.aspectRatio = 1.3,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossCount,
        crossAxisSpacing: 10,
        childAspectRatio: aspectRatio,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return GridItem(
          info: demoMyFiels[index],
        );
      },
      itemCount: demoMyFiels.length,
    );
  }
}
