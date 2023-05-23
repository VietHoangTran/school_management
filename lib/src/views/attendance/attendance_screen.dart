import 'package:flutter/material.dart';
import 'package:school_management/src/utils/styles.dart';
import 'package:school_management/src/utils/values.dart';

import '../../widgets/widget_appbar.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  List<Map<String, dynamic>> listtt = [
    {"class": "Lớp 1a", "sl": 31, "sl2": 30, "dimuon": 1},
    {"class": "Lớp 1b", "sl": 32, "sl2": 32, "dimuon": 2},
    {"class": "Lớp 1c", "sl": 35, "sl2": 35, "dimuon": 4},
    {"class": "Lớp 2a", "sl": 32, "sl2": 31, "dimuon": 3},
    {"class": "Lớp 2b", "sl": 31, "sl2": 31, "dimuon": 3},
    {"class": "Lớp 2c", "sl": 37, "sl2": 37, "dimuon": 1},
    {"class": "Lớp 3a", "sl": 33, "sl2": 33, "dimuon": 3},
    {"class": "Lớp 3b", "sl": 34, "sl2": 33, "dimuon": 4},
    {"class": "Lớp 3c", "sl": 38, "sl2": 38, "dimuon": 6},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          widget_appbar(
            text: "Quản lý điểm danh",
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sĩ số hôm nay: ',
                    style: AppStyle.DEFAULT_16_BOLD.copyWith(color: Colors.indigoAccent),
                  ),
                  AppValue.vSpaceTiny,
                  Column(
                    children: List.generate(
                        listtt.length,
                        (index) => widget_list(
                              lop: listtt[index]["class"],
                              siso: listtt[index]["sl"],
                              sisoThat: listtt[index]["sl2"],
                              dimuon: listtt[index]["dimuon"],
                            )),
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

class widget_list extends StatelessWidget {
  final String lop;
  final int siso;
  final int sisoThat;
  final int dimuon;
  const widget_list({
    super.key,
    required this.lop,
    required this.siso,
    required this.sisoThat,
    required this.dimuon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      margin: const EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: (siso - sisoThat) == 0 ? Colors.green.withOpacity(0.7) : Colors.yellowAccent.withOpacity(0.6)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                lop,
                style: AppStyle.DEFAULT_16_BOLD,
              ),
              Text('Sĩ số: $sisoThat/$siso', style: AppStyle.DEFAULT_16)
            ],
          ),
          AppValue.vSpaceTiny,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nghỉ: ${siso - sisoThat}",
                style: AppStyle.DEFAULT_16,
              ),
              Text('Đi muộn: $dimuon', style: AppStyle.DEFAULT_16)
            ],
          ),
        ],
      ),
    );
  }
}
