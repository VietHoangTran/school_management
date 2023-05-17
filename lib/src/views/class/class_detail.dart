import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_management/src/utils/values.dart';

import '../../utils/color.dart';
import '../../utils/styles.dart';
import '../../widgets/widget_appbar.dart';

class ClassDetail extends StatefulWidget {
  final String className;
  final String gvName;
  final int sl;
  ClassDetail({Key? key, required this.className, required this.gvName, required this.sl}) : super(key: key);

  @override
  State<ClassDetail> createState() => _ClassDetailState();
}

class _ClassDetailState extends State<ClassDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          widget_appbar(
            text: widget.className,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
            decoration:
                BoxDecoration(color: AppColors.green2.withOpacity(0.2), borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Giáo viên chủ nhiệm: ${widget.gvName}",
              style: AppStyle.DEFAULT_16_BOLD.copyWith(color: AppColors.green2),
            ),
          ),
          AppValue.vSpace(12),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chương trình học:",
                    style: AppStyle.DEFAULT_16_BOLD,
                  ),
                  ImageSlideshow(
                    indicatorColor: Colors.blue,
                    onPageChanged: (value) {
                      debugPrint('Page changed: $value');
                    },
                    autoPlayInterval: 3000,
                    isLoop: true,
                    children: [
                      Image.asset(
                        'assets/images/banner1.jpg',
                        fit: BoxFit.contain,
                      ),
                      Image.asset(
                        'assets/images/banner2.jpg',
                        fit: BoxFit.contain,
                      ),
                      Image.asset(
                        'assets/images/banner3.jpg',
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                  AppValue.vSpaceTiny,

                  ///
                  Text(
                    "Lịch học:",
                    style: AppStyle.DEFAULT_16_BOLD,
                  ),
                  AppValue.vSpaceTiny,
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          widget_lichhoc(
                            title: 'Sinh hoạt',
                            time: '8:00 - 11:00',
                            colorBg: Colors.orangeAccent,
                          ),
                          widget_lichhoc(
                            title: 'Ăn và ngủ trưa',
                            time: '11:00 - 14:00',
                            colorBg: Colors.cyan,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          widget_lichhoc(
                            title: 'Học',
                            time: '14:00 - 15:00',
                            colorBg: Colors.redAccent,
                          ),
                          widget_lichhoc(
                            title: 'Sinh hoạt',
                            time: '15:00 - 17:00',
                            colorBg: Colors.lightGreen,
                          )
                        ],
                      )
                    ],
                  ),
                  AppValue.vSpaceTiny,

                  ///
                  Text(
                    "Danh sách học sinh:",
                    style: AppStyle.DEFAULT_16_BOLD,
                  ),
                  AppValue.vSpaceTiny,
                  Column(
                    children: List.generate(
                        widget.sl,
                        (index) => Container(
                              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                              margin: EdgeInsets.symmetric(vertical: 3),
                              decoration: BoxDecoration(
                                  color: Colors.indigo.withOpacity((index % 2 == 0) ? 0.4 : 0.1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                    child: Text(
                                      "${index + 1}: ",
                                      style: AppStyle.DEFAULT_14,
                                    ),
                                  ),
                                  AppValue.hSpaceMedium,
                                  Expanded(
                                    child: Text(
                                      (index % 2 == 0) ? "Trần Văn A" : "Phạm Thị B",
                                      style: AppStyle.DEFAULT_14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    (index % 2 == 0) ? 'assets/icons/icon_men.svg' : 'assets/icons/icon_women.svg',
                                    width: 20,
                                  )
                                ],
                              ),
                            )),
                  ),
                  AppValue.vSpaceSmall,
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}

class widget_lichhoc extends StatelessWidget {
  final String title;
  final String time;
  final Color colorBg;
  const widget_lichhoc({
    super.key,
    required this.title,
    required this.time,
    required this.colorBg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppValue.widths * 0.4,
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorBg),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppStyle.DEFAULT_14_BOLD,
          ),
          AppValue.vSpaceTiny,
          Row(
            children: [
              const Icon(Icons.alarm),
              AppValue.hSpaceTiny,
              Text(
                time,
                style: AppStyle.DEFAULT_14,
              ),
            ],
          )
        ],
      ),
    );
  }
}
