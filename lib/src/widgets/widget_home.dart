import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/styles.dart';
import '../utils/values.dart';

class widget_home extends StatelessWidget {
  final String icon;
  final String name;
  final Function onClick;
  const widget_home({
    super.key, required this.icon, required this.name, required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        decoration: BoxDecoration(
            color: const Color(0xFFEAF9F6),
            borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(icon, height:  AppValue.heights*0.12,fit: BoxFit.cover,),
            AppValue.vSpaceSmall,
            Text(name,style: AppStyle.DEFAULT_14,)
          ],
        ),
      ),
    );
  }
}