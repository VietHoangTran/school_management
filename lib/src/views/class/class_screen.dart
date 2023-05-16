import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_management/src/utils/styles.dart';
import 'package:school_management/src/utils/values.dart';

import '../../utils/color.dart';
import '../../utils/spacing.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({Key? key}) : super(key: key);

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: Spacing.viewPadding.top + 10, bottom: 10, right: 14, left: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      'assets/icons/ic_back.svg',
                      height: 20,
                      width: 20,
                    )),
                Text(
                  "Quản lý lớp học",
                  style: AppStyle.DEFAULT_18_BOLD,
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
