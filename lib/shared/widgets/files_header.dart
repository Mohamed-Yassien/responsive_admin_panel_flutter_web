import 'package:flutter/material.dart';

import '../constants.dart';

class FilesHeader extends StatelessWidget {
  const FilesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Files',
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Colors.white,
              ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: primaryColor,
          ),
          child: Row(
            children: [
              const Icon(
                Icons.add,
                color: Colors.white,
                size: 14,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Add New',
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Colors.white,
                    ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
