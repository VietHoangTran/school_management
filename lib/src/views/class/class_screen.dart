import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_management/src/utils/styles.dart';
import 'package:school_management/src/utils/values.dart';

import '../../utils/color.dart';
import '../../utils/spacing.dart';
import '../../widgets/widget_appbar.dart';

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
          widget_appbar(text: "Quản lý lớp học",)
        ],
      ),
    );
  }
}
