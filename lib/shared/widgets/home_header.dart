import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard/controllers/MenuController.dart';
import 'package:responsive_dashboard/shared/responsive.dart';

import '../constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: () {
              context.read<MenuController>().controlMenu();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        if (!Responsive.isMobile(context))
          Text(
            'Dashboard',
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.white,
                ),
          ),
        if (!Responsive.isMobile(context))
          const Spacer(
            flex: 2,
          ),
        Expanded(
          child: TextField(
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: secondaryColor,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Search',
              hintStyle: const TextStyle(
                color: Colors.white54,
              ),
              suffixIcon: Container(
                // height: 40,
                // width: 40,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SvgPicture.asset(
                  'assets/icons/Search.svg',
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.white38,
              width: 1,
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/profile_pic.png',
                fit: BoxFit.cover,
              ),
              if (!Responsive.isMobile(context))
                Text(
                  'Angelina Jolie',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.white54,
                      ),
                ),
              const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white54,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
