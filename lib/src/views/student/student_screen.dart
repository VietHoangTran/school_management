import 'package:flutter/material.dart';

import '../../utils/color.dart';
import '../../utils/styles.dart';
import '../../utils/values.dart';
import '../../widgets/widget_appbar.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({Key? key}) : super(key: key);

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  List<Map<String, dynamic>> listStudent = [
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
    {"name": "Nguyễn Hoài Anh", "sex": "Nữ", "date": "20/10/2017", "class": "1A", "parents": "Nguyễn Thị Bình"},
    {"name": "Trần Văn Long", "sex": "Nam", "date": "20/10/2017", "class": "1A", "parents": "Trần Văn Hải"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          widget_appbar(
            text: "Danh sách học sinh",
          ),
          Expanded(
            child: SingleChildScrollView(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        color: AppColors.white,
                        child: DataTable(
                          border: TableBorder.all(width: 1, color: AppColors.bgGray),
                          columns: [
                            DataColumn(
                                label: Text(
                              'STT',
                              textAlign: TextAlign.center,
                              style: AppStyle.DEFAULT_14.copyWith(fontWeight: FontWeight.w500),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: AppValue.widths * 0.2,
                              child: Text(
                                'Họ và tên',
                                textAlign: TextAlign.center,
                                style: AppStyle.DEFAULT_14.copyWith(fontWeight: FontWeight.w500),
                              ),
                            )),
                            DataColumn(
                                label: Text(
                              'Giới tính',
                              style: AppStyle.DEFAULT_14.copyWith(fontWeight: FontWeight.w500),
                            )),
                            DataColumn(
                                label: Text(
                              'Ngày sinh',
                              textAlign: TextAlign.right,
                              style: AppStyle.DEFAULT_14.copyWith(fontWeight: FontWeight.w500),
                            )),
                            DataColumn(
                                label: Text(
                              'Lớp',
                              style: AppStyle.DEFAULT_14.copyWith(fontWeight: FontWeight.w500),
                            )),
                            DataColumn(
                                label: Text(
                              'Phụ huynh',
                              style: AppStyle.DEFAULT_14.copyWith(fontWeight: FontWeight.w500),
                            )),
                          ],
                          rows: List.generate(
                              listStudent.length,
                              (indexList) => DataRow(
                                      color: MaterialStateProperty.resolveWith(
                                          (states) => indexList % 2 != 0 ? AppColors.greyE6 : AppColors.white),
                                      cells: [
                                        DataCell(Text("${indexList + 1}")),
                                        DataCell(Text(listStudent[indexList]['name'])),
                                        DataCell(Align(
                                            alignment: Alignment.center, child: Text(listStudent[indexList]['sex']))),
                                        DataCell(Align(
                                            alignment: Alignment.center, child: Text(listStudent[indexList]['date']))),
                                        DataCell(Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(listStudent[indexList]['class']))),
                                        DataCell(Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(listStudent[indexList]['parents']))),
                                      ])),
                        )),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
