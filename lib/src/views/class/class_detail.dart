import 'package:flutter/material.dart';

import '../../utils/color.dart';
import '../../utils/values.dart';
import '../../widgets/widget_appbar.dart';

class ClassDetail extends StatefulWidget {
  final String className;
  final String gvName;
  final int sl;
  ClassDetail({Key? key, required this.className, required this.gvName, required this.sl}) : super(key: key);

  @override
  State<ClassDetail> createState() => _ClassDetailState();
}

class _ClassDetailState extends State<ClassDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          widget_appbar(
            text: widget.className,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/teacher.png',
                        width: AppValue.widths * 0.4,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
