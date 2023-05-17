import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_management/src/utils/values.dart';

import '../utils/styles.dart';
import '../views/class/class_detail.dart';

class widget_list_class extends StatelessWidget {
  String className;
  String gvName;
  int sl;
  int index;
  widget_list_class({
    required this.index,
    required this.className,
    required this.gvName,
    required this.sl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ClassDetail(
                      className: className,
                      gvName: gvName,
                      sl: sl,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xFF0C46C4).withOpacity((index % 2 == 0) ? 0.3 : 0.1)),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/icons/ic_class.svg',
              height: 50,
            ),
            AppValue.hSpaceMedium,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      className,
                      style: AppStyle.DEFAULT_18_BOLD,
                    ),
                    AppValue.hSpace(5),
                    Text(
                      "(Sĩ số: $sl)",
                      style: AppStyle.DEFAULT_14,
                    ),
                  ],
                ),
                AppValue.vSpace(3),
                Text(
                  gvName,
                  style: AppStyle.DEFAULT_18,
                ),
              ],
            ),
            Spacer(),
            SvgPicture.asset(
              'assets/icons/ic_right.svg',
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
