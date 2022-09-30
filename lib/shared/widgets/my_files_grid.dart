import 'package:flutter/material.dart';
import 'package:responsive_dashboard/shared/widgets/grid_item.dart';

import '../../models/MyFiles.dart';

class MyFilesGrid extends StatelessWidget {
  const MyFilesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        childAspectRatio: 1.3,
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
