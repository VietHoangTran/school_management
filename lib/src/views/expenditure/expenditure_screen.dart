import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../utils/styles.dart';
import '../../widgets/widget_appbar.dart';

class ExpenditureScreen extends StatefulWidget {
  const ExpenditureScreen({Key? key}) : super(key: key);

  @override
  State<ExpenditureScreen> createState() => _ExpenditureScreenState();
}

class _ExpenditureScreenState extends State<ExpenditureScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            widget_appbar(
              text: "Quản lý thu chi",
            ),
            TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text("Quản lý thu", style: AppStyle.DEFAULT_16_BOLD),
                ),
                Tab(
                  child: Text("Quản lý chi", style: AppStyle.DEFAULT_16_BOLD),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[thu(), chi()],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class thu extends StatelessWidget {
  thu({
    super.key,
  });
  final dataMap = <String, double>{
    "Tiền học phí": 20,
    "Quỹ nhà nước": 40,
    "Nhà tài trợ": 35,
    "Khác": 5,
  };

  final colorList = <Color>[
    Colors.greenAccent,
    Colors.blue,
    Colors.pinkAccent,
    Colors.orange,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: PieChart(
        dataMap: dataMap,
        chartType: ChartType.ring,
        baseChartColor: Colors.grey[50]!.withOpacity(0.15),
        colorList: colorList,
        legendOptions: LegendOptions(legendPosition: LegendPosition.bottom),
        chartValuesOptions: ChartValuesOptions(
          showChartValuesInPercentage: true,
        ),
        totalValue: 100,
      ),
    );
  }
}

class chi extends StatelessWidget {
  chi({
    super.key,
  });
  final dataMap = <String, double>{
    "Nâng câp cơ sở vật chất": 30,
    "Đồ dùng học tập": 20,
    "Ăn uống sinh hoạt của trẻ": 40,
    "Khác": 10,
  };

  final colorList = <Color>[
    Colors.greenAccent,
    Colors.blue,
    Colors.pinkAccent,
    Colors.orange,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: PieChart(
        dataMap: dataMap,
        chartType: ChartType.ring,
        baseChartColor: Colors.grey[50]!.withOpacity(0.15),
        colorList: colorList,
        legendOptions: LegendOptions(legendPosition: LegendPosition.bottom),
        chartValuesOptions: ChartValuesOptions(
          showChartValuesInPercentage: true,
        ),
        totalValue: 100,
      ),
    );
  }
}
