import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_management/src/views/teacher/teacher_detail.dart';

import '../utils/styles.dart';
import '../utils/values.dart';

class widget_list_teacher extends StatelessWidget {
  final String name;
  final int age;
  final bool sex;
  final String classs;
  final int index;
  const widget_list_teacher({
    super.key,
    required this.name,
    required this.age,
    required this.sex,
    required this.classs,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TeacherDetail(
                    name: name,
                    age: age,
                    avt: sex ? 'assets/icons/gv_nam.svg' : 'assets/icons/gv_nu.svg',
                    classs: classs)));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: (index % 2 == 0) ? Colors.blueGrey : Colors.blueGrey.withOpacity(0.5),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              sex ? 'assets/icons/gv_nam.svg' : 'assets/icons/gv_nu.svg',
              height: 60,
            ),
            AppValue.hSpace(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Giáo viên: ', style: AppStyle.DEFAULT_16),
                      TextSpan(text: name, style: AppStyle.DEFAULT_16_BOLD),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Tuổi: ', style: AppStyle.DEFAULT_14),
                      TextSpan(text: age.toString(), style: AppStyle.DEFAULT_14_BOLD),
                    ],
                  ),
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
