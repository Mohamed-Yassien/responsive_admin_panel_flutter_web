import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReusableListTile extends StatelessWidget {
  final String title, svgPath;
  final VoidCallback press;

  ReusableListTile({
    required this.title,
    required this.press,
    required this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: SvgPicture.asset(
        svgPath,
        color: Colors.white54,
      ),
      title: Text(
       title,
        style:const TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
