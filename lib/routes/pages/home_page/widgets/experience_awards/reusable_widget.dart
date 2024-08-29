import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/experience_awards/content_widget.dart';

class ReusableWidget extends StatelessWidget {
  const ReusableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var txt = TextFond();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        txt.textWidget(StaticData.heading1, 34.0, FontWeight.w500, iblack),
        const Gap(50),
        ReusableContent(
            title: StaticData.role1,
            title2: StaticData.com1,
            date: StaticData.date1,
            img: StaticData.img1),
        StaticData.gap4,
        const DividerWidget(),
        StaticData.gap4,
        ReusableContent(
            title: StaticData.role2,
            title2: StaticData.com2,
            date: StaticData.date2,
            img: StaticData.img2),
        StaticData.gap4,
        const DividerWidget(),
        StaticData.gap4,
        ReusableContent(
            title: StaticData.role3,
            title2: StaticData.com3,
            date: StaticData.date3,
            img: StaticData.img3),
      ],
    );
  }
}

class ReusableWidget2 extends StatelessWidget {
  const ReusableWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    var txt = TextFond();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        txt.textWidget(StaticData.heading2, 34.0, FontWeight.w500, iblack),
        const Gap(50),
        ReusableContent(
            title: StaticData.awa1,
            title2: StaticData.pro1,
            date: StaticData.date4,
            img: StaticData.img4),
        StaticData.gap4,
        const DividerWidget(),
        StaticData.gap4,
        ReusableContent(
            title: StaticData.awa2,
            title2: StaticData.pro2,
            date: StaticData.date5,
            img: StaticData.img5),
        StaticData.gap4,
        const DividerWidget(),
        StaticData.gap4,
        ReusableContent(
            title: StaticData.awa3,
            title2: StaticData.pro3,
            date: StaticData.date6,
            img: StaticData.img6),
      ],
    );
  }
}
