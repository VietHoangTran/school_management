import 'package:flutter/material.dart';

import '../../widgets/widget_appbar.dart';
import '../../widgets/widget_list_teacher.dart';

class TeacherScreen extends StatefulWidget {
  const TeacherScreen({Key? key}) : super(key: key);

  @override
  State<TeacherScreen> createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  List<Map<String, dynamic>> listTeacher = [
    {"name": "Lê Văn Nam", "sex": true, "age": 33, "class": "Lớp 1A"},
    {"name": "Trần Văn Long", "sex": true, "age": 39, "class": "Lớp 1B"},
    {"name": "Nguyễn Thị Thúy", "sex": false, "age": 32, "class": "Lớp 1C"},
    {"name": "Nguyễn Thị Hải", "sex": false, "age": 37, "class": "Lớp 2A"},
    {"name": "Nguyễn Văn Thắng", "sex": true, "age": 37, "class": "Lớp 2B"},
    {"name": "Đào Thị Hương", "sex": false, "age": 32, "class": "Lớp 2C"},
    {"name": "Đỗ Thành Nam", "sex": true, "age": 34, "class": "Lớp 3A"},
    {"name": "Lê Thị Ánh", "sex": false, "age": 42, "class": "Lớp 3B"},
    {"name": "Phạm Văn Tài", "sex": true, "age": 30, "class": "Lớp 3C"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          widget_appbar(
            text: "Danh sách giáo viên",
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                    listTeacher.length,
                    (index) => widget_list_teacher(
                          index: index,
                          name: listTeacher[index]["name"],
                          age: listTeacher[index]["age"],
                          sex: listTeacher[index]["sex"],
                          classs: listTeacher[index]["class"],
                        )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
