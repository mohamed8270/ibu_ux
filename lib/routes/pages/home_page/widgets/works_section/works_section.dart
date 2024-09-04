import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ibu_ux/bindings/controller/responsive_widget.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';
import 'package:ibu_ux/data/repository/local_data_repository.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/footer/footer_section.dart';

class WorksSection extends StatelessWidget {
  const WorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    var prodata = Get.put(LocalDataRepository());
    return Container(
      height: ResponsiveWidget.isLarge(context)
          ? (scrnsize.height * 0.65)
          : (scrnsize.height * 0.45),
      width: scrnsize.width,
      decoration: const BoxDecoration(color: iyellow),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: ResponsiveWidget.isLarge(context) ? 40 : 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ResponsiveWidget.isLarge(context) ? 60 : 20),
              child: Row(
                children: [
                  Expanded(
                      child: txt.textWidget(
                          'Works done', 34.0, FontWeight.w500, iblack)),
                  SocialIcons(
                    path: StaticData.leftarrow,
                    click: () {},
                    hover: (h0) {},
                    size: 30,
                  ),
                  StaticData.gap4,
                  SocialIcons(
                    path: StaticData.rightarrow,
                    click: () {},
                    hover: (h0) {},
                    size: 30,
                  ),
                ],
              ),
            ),
            const Gap(40),
            SizedBox(
              height: ResponsiveWidget.isLarge(context)
                  ? (scrnsize.height * 0.4)
                  : (scrnsize.height * 0.26),
              width: scrnsize.width,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const ClampingScrollPhysics(),
                itemCount: prodata.porjectsData.length,
                itemBuilder: (context, i) {
                  final data = prodata.porjectsData[i];
                  return WorksContent(
                    i: i,
                    imgurl: data['img'].toString(),
                    t: data['name'].toString(),
                    des: data['des'].toString(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WorksContent extends StatelessWidget {
  const WorksContent(
      {super.key,
      required this.imgurl,
      required this.t,
      required this.des,
      required this.i});

  final String imgurl;
  final String t;
  final String des;
  final int i;

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    return Padding(
      padding: EdgeInsets.only(
          left: ResponsiveWidget.isLarge(context) ? (i == 0 ? 60 : 15) : 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: ResponsiveWidget.isLarge(context)
                ? (scrnsize.height * 0.28)
                : (scrnsize.height * 0.15),
            width: ResponsiveWidget.isLarge(context)
                ? (scrnsize.width * 0.25)
                : (scrnsize.width * 0.65),
            decoration: BoxDecoration(
              color: igrey.withOpacity(0.6),
              image: DecorationImage(
                image: NetworkImage(imgurl),
                fit: BoxFit.cover,
                alignment: Alignment.center,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          StaticData.gap2,
          txt.textWidget(t, 14.0, FontWeight.w600, iblack),
          StaticData.gap1,
          SizedBox(
            width: ResponsiveWidget.isLarge(context)
                ? (scrnsize.width * 0.25)
                : (scrnsize.width * 0.65),
            child: txt.textWidget(des, 10.0, FontWeight.w500, iblack,
                TextOverflow.visible, 1.5, TextAlign.justify),
          )
        ],
      ),
    );
  }
}
