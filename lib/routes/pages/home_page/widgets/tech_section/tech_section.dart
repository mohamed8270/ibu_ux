import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ibu_ux/bindings/controller/responsive_widget.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';
import 'package:ibu_ux/data/repository/local_data_repository.dart';

class TechSection extends StatelessWidget {
  const TechSection({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    return Container(
      height: scrnsize.height * 0.6,
      width: scrnsize.width,
      decoration: const BoxDecoration(color: iwhite),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                txt.textWidget(
                    StaticData.techtitle, 34.0, FontWeight.w500, iblack),
                const Gap(40),
                SizedBox(
                  width: ResponsiveWidget.isLarge(context)
                      ? scrnsize.width * 0.4
                      : scrnsize.width,
                  child: txt.textWidget(
                      StaticData.techdes,
                      12.0,
                      FontWeight.w500,
                      iblack,
                      TextOverflow.visible,
                      1.5,
                      TextAlign.start),
                ),
              ],
            ),
            const GridTechShow(),
          ],
        ),
      ),
    );
  }
}

class GridTechShow extends StatelessWidget {
  const GridTechShow({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var techdata = Get.put(LocalDataRepository());
    return SizedBox(
      width: scrnsize.width * 0.45,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: techdata.techData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: scrnsize.width / (scrnsize.height / 1.0)),
        itemBuilder: (context, i) {
          final data = techdata.techData[i];
          return Container(
            decoration: BoxDecoration(
              color: iwhite,
              image: DecorationImage(
                image: NetworkImage(data['img'].toString()),
                fit: BoxFit.scaleDown,
                filterQuality: FilterQuality.high,
              ),
            ),
          );
        },
      ),
    );
  }
}
