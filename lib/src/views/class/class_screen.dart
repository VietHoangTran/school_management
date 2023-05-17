import 'package:flutter/material.dart';

import '../../utils/color.dart';
import '../../widgets/widget_appbar.dart';
import '../../widgets/widget_list_class.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({Key? key}) : super(key: key);

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  List<Map<String, dynamic>> listClass = [
    {"class": "Lớp 1a", "sl": 31, "name": "Nguyễn Thị A"},
    {"class": "Lớp 1b", "sl": 32, "name": "Nguyễn Thị B"},
    {"class": "Lớp 1c", "sl": 35, "name": "Nguyễn Thị C"},
    {"class": "Lớp 2a", "sl": 32, "name": "Nguyễn Thị D"},
    {"class": "Lớp 2b", "sl": 31, "name": "Nguyễn Thị E"},
    {"class": "Lớp 2c", "sl": 37, "name": "Nguyễn Thị F"},
    {"class": "Lớp 3a", "sl": 33, "name": "Nguyễn Thị G"},
    {"class": "Lớp 3b", "sl": 34, "name": "Nguyễn Thị H"},
    {"class": "Lớp 3c", "sl": 38, "name": "Nguyễn Thị J"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          widget_appbar(
            text: "Quản lý lớp học",
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                  listClass.length,
                  (index) => widget_list_class(
                        index: index,
                        className: listClass[index]['class'],
                        gvName: listClass[index]['name'],
                        sl: listClass[index]['sl'],
                      )),
            ),
          ))
        ],
      ),
    );
  }
}
