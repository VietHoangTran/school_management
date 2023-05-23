import 'package:flutter/material.dart';

import '../../widgets/widget_appbar.dart';
import '../news/news_screen.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  List<Map<String, dynamic>> listNews = [
    {"image": "assets/images/anh1.jpg", "title": "Các bé thích thú với hoạt động ngoài trời", "time": "20/03/2022"},
    {"image": "assets/images/anh2.jpg", "title": "Các bé thí nghiệm 'Hạt gạo nhảy múa'", "time": "03/04/2022"},
    {"image": "assets/images/anh3.jpg", "title": "Hoạt động vui vẻ ngoài trời lớp MGN B2", "time": "12/05/2022"},
    {"image": "assets/images/anh1.jpg", "title": "Các bé thích thú với hoạt động ngoài trời", "time": "20/03/2022"},
    {"image": "assets/images/anh2.jpg", "title": "Các bé thí nghiệm 'Hạt gạo nhảy múa'", "time": "03/04/2022"},
    {"image": "assets/images/anh3.jpg", "title": "Hoạt động vui vẻ ngoài trời lớp MGN B2", "time": "12/05/2022"},
    {"image": "assets/images/anh1.jpg", "title": "Các bé thích thú với hoạt động ngoài trời", "time": "20/03/2022"},
    {"image": "assets/images/anh2.jpg", "title": "Các bé thí nghiệm 'Hạt gạo nhảy múa'", "time": "03/04/2022"},
    {"image": "assets/images/anh3.jpg", "title": "Hoạt động vui vẻ ngoài trời lớp MGN B2", "time": "12/05/2022"},
    {"image": "assets/images/anh1.jpg", "title": "Các bé thích thú với hoạt động ngoài trời", "time": "20/03/2022"},
    {"image": "assets/images/anh2.jpg", "title": "Các bé thí nghiệm 'Hạt gạo nhảy múa'", "time": "03/04/2022"},
    {"image": "assets/images/anh3.jpg", "title": "Hoạt động vui vẻ ngoài trời lớp MGN B2", "time": "12/05/2022"},
    {"image": "assets/images/anh1.jpg", "title": "Các bé thích thú với hoạt động ngoài trời", "time": "20/03/2022"},
    {"image": "assets/images/anh2.jpg", "title": "Các bé thí nghiệm 'Hạt gạo nhảy múa'", "time": "03/04/2022"},
    {"image": "assets/images/anh3.jpg", "title": "Hoạt động vui vẻ ngoài trời lớp MGN B2", "time": "12/05/2022"},
    {"image": "assets/images/anh1.jpg", "title": "Các bé thích thú với hoạt động ngoài trời", "time": "20/03/2022"},
    {"image": "assets/images/anh2.jpg", "title": "Các bé thí nghiệm 'Hạt gạo nhảy múa'", "time": "03/04/2022"},
    {"image": "assets/images/anh3.jpg", "title": "Hoạt động vui vẻ ngoài trời lớp MGN B2", "time": "12/05/2022"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          widget_appbar(
            text: "Sự kiện",
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                  listNews.length,
                  (index) => news_widget(
                        image: listNews[index]["image"],
                        title: listNews[index]["title"],
                        time: listNews[index]["time"],
                        index: index,
                      )),
            ),
          ))
        ],
      ),
    );
  }
}
