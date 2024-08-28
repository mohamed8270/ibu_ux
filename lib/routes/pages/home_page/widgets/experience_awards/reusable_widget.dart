import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';

class ReusableWidget extends StatelessWidget {
  const ReusableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var txt = TextFond();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        txt.textWidget(StaticData.heading1, 34.0, FontWeight.w500, iblack),
        const Gap(60),
        ReusableContent(
            title: StaticData.role1,
            title2: StaticData.com1,
            date: StaticData.date1,
            img: StaticData.img1),
        StaticData.gap3,
        ReusableContent(
            title: StaticData.role2,
            title2: StaticData.com2,
            date: StaticData.date2,
            img: StaticData.img2),
        StaticData.gap3,
        ReusableContent(
            title: StaticData.role3,
            title2: StaticData.com3,
            date: StaticData.date3,
            img: StaticData.img3),
      ],
    );
  }
}

class ReusableContent extends StatelessWidget {
  const ReusableContent({
    super.key,
    required this.title,
    required this.title2,
    required this.date,
    required this.img,
  });

  final String title;
  final String title2;
  final String date;
  final String img;

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: scrnsize.height * 0.06,
          width: scrnsize.width * 0.03,
          decoration: BoxDecoration(
            color: iwhite,
            borderRadius: BorderRadius.circular(7),
            image: DecorationImage(
              image: NetworkImage(img),
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
        StaticData.gap3,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: title,
                    style: txt.textStyle(13.0, FontWeight.w500, iblack),
                  ),
                  TextSpan(
                    text: title2,
                    style: txt.textStyle(13.0, FontWeight.w700, iblack),
                  ),
                ],
              ),
            ),
            StaticData.gap1,
            txt.textWidget(date, 11.0, FontWeight.w500, iblack.withOpacity(0.5))
          ],
        ),
      ],
    );
  }
}
