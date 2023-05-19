import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_management/src/utils/values.dart';

import '../../utils/styles.dart';
import '../../widgets/widget_appbar.dart';

class TeacherDetail extends StatefulWidget {
  final String name;
  final int age;
  final String avt;
  final String classs;
  const TeacherDetail({Key? key, required this.name, required this.age, required this.avt, required this.classs})
      : super(key: key);

  @override
  State<TeacherDetail> createState() => _TeacherDetailState();
}

class _TeacherDetailState extends State<TeacherDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          widget_appbar(
            text: "Thông tin giáo viên",
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: AppValue.heights * 0.15,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          widget.avt,
                          height: AppValue.heights * 0.15,
                        ),
                        AppValue.hSpace(20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  const TextSpan(text: 'Giáo viên: ', style: AppStyle.DEFAULT_16),
                                  TextSpan(text: widget.name, style: AppStyle.DEFAULT_16_BOLD),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  const TextSpan(text: 'Tuổi: ', style: AppStyle.DEFAULT_14),
                                  TextSpan(text: widget.age.toString(), style: AppStyle.DEFAULT_14_BOLD),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  const TextSpan(text: 'Lớp: ', style: AppStyle.DEFAULT_14),
                                  TextSpan(text: widget.classs.toString(), style: AppStyle.DEFAULT_14_BOLD),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  const TextSpan(text: 'Sđt: ', style: AppStyle.DEFAULT_14),
                                  TextSpan(text: "0987654321", style: AppStyle.DEFAULT_14_BOLD),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  const TextSpan(text: 'Quê quán: ', style: AppStyle.DEFAULT_14),
                                  TextSpan(text: "Hải Phòng", style: AppStyle.DEFAULT_14_BOLD),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  AppValue.vSpaceMedium,
                  Text(
                    "   Giáo viên được cho là người giảng dạy, giáo dục cho các học sinh, lên kế hoạch, tiến hành các tiết dạy học, thực hành và phát triển các khóa học nằm trong chương trình giảng dạy của nhà trường đồng thời cũng là người kiểm tra, ra đề bài, chấm điểm thi cho những học sinh để đánh giá chất lượng từng học học sinh. ",
                    style: AppStyle.DEFAULT_16,
                    textAlign: TextAlign.justify,
                  ),
                  AppValue.vSpaceTiny,
                  Text(
                    "   Giáo viên được cho là người giảng dạy, giáo dục cho các học sinh, lên kế hoạch, tiến hành các tiết dạy học, thực hành và phát triển các khóa học nằm trong chương trình giảng dạy của nhà trường đồng thời cũng là người kiểm tra, ra đề bài, chấm điểm thi cho những học sinh để đánh giá chất lượng từng học học sinh. ",
                    style: AppStyle.DEFAULT_16,
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
