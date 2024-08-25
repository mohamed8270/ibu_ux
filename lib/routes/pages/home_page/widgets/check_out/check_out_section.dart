import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';
import 'package:ibu_ux/data/repository/local_data_repository.dart';

class CheckOutSection extends StatelessWidget {
  const CheckOutSection({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    var data = Get.put(LocalDataRepository());
    return Container(
      height: scrnsize.height * 0.65,
      width: scrnsize.width,
      decoration: BoxDecoration(color: igrey.withOpacity(0.17)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
              child: txt.textWidget(
                  StaticData.checkout, 48.0, FontWeight.w500, iblack)),
          SizedBox(
            height: scrnsize.height * 0.4,
            width: scrnsize.width,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: data.porjectsData.length,
              itemBuilder: (context, i) {
                final out = data.porjectsData[i];
                return PlayfulContent(
                  url: out['img'].toString(),
                  title: out['name'].toString(),
                  content: out['des'].toString(),
                  pl: i == 0 ? 60.0 : 20.0,
                  click: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PlayfulContent extends StatelessWidget {
  const PlayfulContent(
      {super.key,
      required this.url,
      required this.title,
      required this.content,
      required this.pl,
      required this.click});

  final String url;
  final String title;
  final String content;
  final double pl;
  final VoidCallback click;

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    return Padding(
      padding: EdgeInsets.only(right: 20, left: pl),
      child: GestureDetector(
        onTap: click,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: scrnsize.height * 0.25,
              width: scrnsize.width * 0.25,
              decoration: BoxDecoration(
                color: iviolet,
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
            StaticData.gap3,
            txt.textWidget(title, 14.0, FontWeight.w600, iblack),
            StaticData.gap1,
            SizedBox(
              height: scrnsize.height * 0.08,
              width: scrnsize.width * 0.25,
              child: txt.textWidget(content, 10.0, FontWeight.w400, iblack,
                  TextOverflow.visible, 1.5, TextAlign.justify),
            ),
          ],
        ),
      ),
    );
  }
}
