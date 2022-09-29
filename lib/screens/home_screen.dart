import 'package:flutter/material.dart';

import 'package:responsive_dashboard/shared/widgets/side_menu.dart';

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
              child: Container(
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
