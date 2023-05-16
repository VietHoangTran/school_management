import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_management/src/utils/styles.dart';

import '../utils/spacing.dart';

class widget_appbar extends StatelessWidget {
  String text;
  widget_appbar({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: Spacing.viewPadding.top + 16, bottom: 16, right: 14, left: 14),
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
            text,
            style: AppStyle.DEFAULT_18_BOLD,
          ),
          const SizedBox(
            height: 20,
            width: 20,
          )
        ],
      ),
    );
  }
}