import 'package:flutter/material.dart';
import 'package:school_management/src/utils/styles.dart';

import '../../utils/values.dart';
import '../../widgets/widget_appbar.dart';

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

class news_widget extends StatelessWidget {
  final String image;
  final String title;
  final String time;
  final int index;
  const news_widget({
    super.key,
    required this.image,
    required this.title,
    required this.time,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.green.withOpacity(0.3)),
      child: Row(
        children: [
          Image.asset(
            image,
            width: AppValue.widths * 0.25,
            height: AppValue.heights * 0.09,
            fit: BoxFit.fill,
          ),
          AppValue.hSpaceTiny,
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppStyle.DEFAULT_16_BOLD,
              ),
              Text(
                time,
                style: AppStyle.DEFAULT_14,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
