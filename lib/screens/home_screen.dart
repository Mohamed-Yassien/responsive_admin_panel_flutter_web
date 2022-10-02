import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard/controllers/MenuController.dart';
import 'package:responsive_dashboard/shared/responsive.dart';
import 'package:responsive_dashboard/shared/widgets/files_header.dart';
import 'package:responsive_dashboard/shared/widgets/home_header.dart';
import 'package:responsive_dashboard/shared/widgets/my_files_grid.dart';
import 'package:responsive_dashboard/shared/widgets/recent_files_part.dart';

import 'package:responsive_dashboard/shared/widgets/side_menu.dart';
import 'package:responsive_dashboard/shared/widgets/storage_details_part.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer:const SideMenu(),
      body: SafeArea(
        child: Row(
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                child: SideMenu(),
              ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    const HomeHeader(),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Column(
                                    children: [
                                      const FilesHeader(),
                                      const SizedBox(height: 15),
                                      const MyFilesGrid(),
                                      const RecentFilesPart(),
                                      if (Responsive.isMobile(context))
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      if (Responsive.isMobile(context))
                                        const StorageDetailsPart(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            if (!Responsive.isMobile(context))
                              const SizedBox(
                                width: 10,
                              ),
                            if (!Responsive.isMobile(context))
                              const Expanded(
                                flex: 2,
                                child: StorageDetailsPart(),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
