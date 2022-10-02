import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/MyFiles.dart';

import '../constants.dart';

class GridItem extends StatelessWidget {
  final CloudStorageInfo info;

  GridItem({
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(
                  5,
                ),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: info.color.withOpacity(.4),
                ),
                child: SvgPicture.asset(
                  info.svgSrc,
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  size: 20,
                ),
                onPressed: () {},
                color: Colors.white38,
              ),
            ],
          ),
          Text(
            info.title,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: Colors.white,
                ),
          ),
          Stack(
            children: [
              Container(
                height: 5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(.3),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    width: constraints.maxWidth * (info.percentage / 100),
                    height: 5,
                    decoration: BoxDecoration(
                      color: info.color,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${info.numOfFiels} Files',
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Colors.white38,
                    ),
              ),
              Text(
                '${info.totalStorage}GB',
                style: Theme.of(context).textTheme.caption!.copyWith(
                      color: Colors.white38,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
