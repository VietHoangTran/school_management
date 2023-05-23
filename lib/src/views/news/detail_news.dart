import 'package:flutter/material.dart';
import 'package:school_management/src/utils/styles.dart';

import '../../utils/values.dart';
import '../../widgets/widget_appbar.dart';

class DetailNews extends StatefulWidget {
  final String image;
  final String title;
  final String time;
  const DetailNews({Key? key, required this.image, required this.title, required this.time}) : super(key: key);

  @override
  State<DetailNews> createState() => _DetailNewsState();
}

class _DetailNewsState extends State<DetailNews> {
  String nd1 =
      '   Hoạt động ngoài trời là một trong những hoạt động vui chơi mà trẻ hứng thú và quan tâm nhất. Đây là hoạt động mang lại cho trẻ nhiều niềm vui và kiến thức cần thiết về thế giới xung quanh. ';
  String nd2 =
      '   Hoạt động ngoài trời là một trong các hình thức tổ chức môi trường giáo dục cho trẻ mầm non phát huy được những ưu điểm qua các hoạt động như: giúp trẻ phát triển về các mặt đức, trí, thể, mỹ và lao động.';
  String nd3 =
      '   Qua hoạt động đi dạo trẻ được trực tiếp quan sát các sự vật, hiện tượng trong tự nhiên, trong xã hội. Trẻ được tiếp xúc với thiên nhiên, hít thở không khí trong lành, được tắm nắng ban mai nhằm nâng cao sức đề kháng cho cơ thể trẻ.';
  String nd4 =
      '   Qua các trò chơi vận động giúp cơ thể trẻ nhanh nhẹn, hoạt bát và phát triển một cách toàn diện về thể lực. Qua các trò chơi dân gian trẻ biết được một trong những bản sắc văn hóa dân tộc Việt Nam được lưu truyền qua các thế hệ sau.';
  String nd5 =
      "   Qua hoạt động chơi tự do: Trẻ được cô hướng dẫn làm đồ chơi mầm non từ những nguyên vật liệu sẵn có ở địa phương như: lá cây… nhằm rèn luyện cho trẻ tính kiên trì, nhẫn nại, phát triển tính tò mò, ham hiểu biết đặc biệt là tính sáng tạo ở trẻ.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          widget_appbar(
            text: "",
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: AppValue.widths,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(widget.title, style: AppStyle.DEFAULT_18_BOLD, textAlign: TextAlign.justify)),
                AppValue.vSpaceTiny,
                Image.asset(
                  widget.image,
                  width: AppValue.widths,
                  fit: BoxFit.cover,
                ),
                AppValue.vSpaceTiny,
                Container(
                    width: AppValue.widths,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        Text(nd1, style: AppStyle.DEFAULT_16, textAlign: TextAlign.justify),
                        AppValue.vSpaceTiny,
                        Text(nd2, style: AppStyle.DEFAULT_16, textAlign: TextAlign.justify),
                        AppValue.vSpaceTiny,
                        Text(nd3, style: AppStyle.DEFAULT_16, textAlign: TextAlign.justify),
                        AppValue.vSpaceTiny,
                        Text(nd4, style: AppStyle.DEFAULT_16, textAlign: TextAlign.justify),
                        AppValue.vSpaceTiny,
                        Text(nd5, style: AppStyle.DEFAULT_16, textAlign: TextAlign.justify),
                      ],
                    )),
                AppValue.vSpaceTiny,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(widget.time,
                        style: AppStyle.DEFAULT_14.copyWith(color: Colors.grey), textAlign: TextAlign.justify),
                    const SizedBox(
                      width: 12,
                    )
                  ],
                ),
                AppValue.vSpaceMedium,
              ],
            ),
          ))
        ],
      ),
    );
  }
}
