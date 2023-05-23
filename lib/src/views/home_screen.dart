import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_management/src/utils/values.dart';
import 'package:school_management/src/views/event/event_screen.dart';
import 'package:school_management/src/views/expenditure/expenditure_screen.dart';
import 'package:school_management/src/views/servings/servings_screen.dart';
import 'package:school_management/src/views/student/student_screen.dart';
import 'package:school_management/src/views/teacher/teacher_screen.dart';

import '../utils/color.dart';
import '../widgets/widget_home.dart';
import 'attendance/attendance_screen.dart';
import 'class/class_screen.dart';
import 'news/news_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listItem = [
      {
        "icon": "assets/icons/ic_classroom.svg",
        "name": "Danh sách lớp học",
        "click": () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ClassScreen()));
        }
      },
      {
        "icon": "assets/icons/ic_teacher.svg",
        "name": "Danh sách giáo viên",
        "click": () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const TeacherScreen()));
        }
      },
      {
        "icon": "assets/icons/ic_hs.svg",
        "name": "Danh sách học sinh",
        "click": () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const StudentScreen()));
        }
      },
      {
        "icon": "assets/icons/ic_thuchi.svg",
        "name": "Quản lý thu chi",
        "click": () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ExpenditureScreen()));
        }
      },
      {
        "icon": "assets/icons/ic_suatan.svg",
        "name": "Quản lý xuất ăn",
        "click": () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ServingsScreen()));
        }
      },
      {
        "icon": "assets/icons/ic_diemdanh.svg",
        "name": "Quản lý điểm danh",
        "click": () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AttendanceScreen()));
        }
      },
      {
        "icon": "assets/icons/ic_sukien.svg",
        "name": "Sự kiện",
        "click": () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const EventScreen()));
        }
      },
      {
        "icon": "assets/icons/ic_tb.svg",
        "name": "Bảng tin",
        "click": () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const NewsScreen()));
        }
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              SvgPicture.asset("assets/images/top_homepage.svg", width: AppValue.widths),
              Positioned(
                bottom: -AppValue.heights * 0.177 / 2,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  height: AppValue.heights * 0.177,
                  width: AppValue.heights * 0.177,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(AppValue.heights * 0.177),
                    border: Border.all(width: 5, color: const Color(0xFF28C2A0)),
                  ),
                  child: Image.asset(
                    'assets/images/image_home.png',
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          ),
          AppValue.vSpace(AppValue.heights * 0.177 / 2 + 20),
          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  // mainAxisExtent: AppValue.heights*0.18,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 22,
                  crossAxisCount: 2,
                ),
                itemCount: listItem.length,
                itemBuilder: (BuildContext ctx, index) {
                  return widget_home(
                    icon: listItem[index]['icon'],
                    name: listItem[index]['name'],
                    onClick: listItem[index]['click'],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
