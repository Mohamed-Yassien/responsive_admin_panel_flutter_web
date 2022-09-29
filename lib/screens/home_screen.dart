import 'package:flutter/material.dart';
import 'package:responsive_dashboard/shared/widgets/home_header.dart';

import 'package:responsive_dashboard/shared/widgets/side_menu.dart';
import 'package:responsive_dashboard/shared/widgets/storage_details_part.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
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
                              child: Container(
                                color: Colors.teal,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const StorageDetailsPart(),
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
