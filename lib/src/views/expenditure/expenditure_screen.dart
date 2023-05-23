import 'package:flutter/material.dart';

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
      initialIndex: 1,
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
            const Expanded(
              child: TabBarView(
                children: <Widget>[
                  Center(
                    child: Text("It's cloudy here"),
                  ),
                  Center(
                    child: Text("It's rainy here"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
