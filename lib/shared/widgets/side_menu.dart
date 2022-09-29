import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/shared/widgets/reusable_list_tile.dart';

import '../constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bgColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: SvgPicture.asset(
                'assets/icons/logo.svg',
                color: Colors.white60,
              ),
            ),
            ReusableListTile(
              title: 'Dashboard',
              press: () {},
              svgPath: 'assets/icons/menu_dashbord.svg',
            ),
            ReusableListTile(
              title: 'Transaction',
              press: () {},
              svgPath: 'assets/icons/menu_tran.svg',
            ),
            ReusableListTile(
              title: 'Task',
              press: () {},
              svgPath: 'assets/icons/menu_task.svg',
            ),
            ReusableListTile(
              title: 'Documents',
              press: () {},
              svgPath: 'assets/icons/menu_doc.svg',
            ),
            ReusableListTile(
              title: 'Store',
              press: () {},
              svgPath: 'assets/icons/menu_store.svg',
            ),
            ReusableListTile(
              title: 'Notification',
              press: () {},
              svgPath: 'assets/icons/menu_notification.svg',
            ),
            ReusableListTile(
              title: 'Profile',
              press: () {},
              svgPath: 'assets/icons/menu_profile.svg',
            ),
            ReusableListTile(
              title: 'Settings',
              press: () {},
              svgPath: 'assets/icons/menu_setting.svg',
            ),
          ],
        ),
      ),
    );
  }
}
