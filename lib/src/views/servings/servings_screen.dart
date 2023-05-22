import 'package:flutter/material.dart';

import '../../widgets/widget_appbar.dart';

class ServingsScreen extends StatefulWidget {
  const ServingsScreen({Key? key}) : super(key: key);

  @override
  State<ServingsScreen> createState() => _ServingsScreenState();
}

class _ServingsScreenState extends State<ServingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          widget_appbar(
            text: "Quản lý xuất ăn",
          ),
          Expanded(child: Image.asset('assets/images/thucdon.jpg'))
        ],
      ),
    );
  }
}
