import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/MyFiles.dart';
import '../constants.dart';

class MyFilesGrid extends StatelessWidget {
  const MyFilesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        color: primaryColor.withOpacity(.4),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/Documents.svg',
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
                  'Documents',
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
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Container(
                          width: constraints.maxWidth * .4,
                          height: 5,
                          decoration: BoxDecoration(
                            color: primaryColor,
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
                      '1300 Files',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            color: Colors.white38,
                          ),
                    ),
                    Text(
                      '120GB',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            color: Colors.white38,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: demoMyFiels.length,
      ),
    );
  }
}
