import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';
import 'package:ibu_ux/data/repository/local_data_repository.dart';

class WorksSection extends StatelessWidget {
  const WorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    var prodata = Get.put(LocalDataRepository());
    return Container(
      height: scrnsize.height * 0.65,
      width: scrnsize.width,
      decoration: const BoxDecoration(color: iyellow),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child:
                  txt.textWidget('Works done', 34.0, FontWeight.w500, iblack),
            ),
            const Gap(40),
            SizedBox(
              height: scrnsize.height * 0.4,
              width: scrnsize.width,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
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
      padding: EdgeInsets.only(left: i == 0 ? 60 : 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: scrnsize.height * 0.28,
            width: scrnsize.width * 0.25,
            decoration: BoxDecoration(
              color: igrey,
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
          SizedBox(
            width: scrnsize.width * 0.25,
            child: txt.textWidget(des, 10.0, FontWeight.w500, iblack,
                TextOverflow.visible, 1.5, TextAlign.justify),
          )
        ],
      ),
    );
  }
}
