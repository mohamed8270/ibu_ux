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
    var vh = [0.0, 0.0];

    void responCheck() {
      if (ResponsiveWidget.isLarge(context)) {
        var res = [40.0, 60.0];
        return vh.replaceRange(0, 1, res);
      } else if (ResponsiveWidget.isMedium(context)) {
        var res = [30.0, 40.0];
        return vh.replaceRange(0, 1, res);
      } else if (ResponsiveWidget.isSmall(context)) {
        var res = [40.0, 20.0];
        return vh.replaceRange(0, 1, res);
      }
    }

    Axis directCheck() {
      if (ResponsiveWidget.isLarge(context)) {
        return Axis.horizontal;
      } else if (ResponsiveWidget.isMedium(context)) {
        return Axis.horizontal;
      } else if (ResponsiveWidget.isSmall(context)) {
        return Axis.vertical;
      }
      return Axis.horizontal;
    }

    responCheck();
    return Container(
      height: ResponsiveWidget.isLarge(context)
          ? scrnsize.height * 0.6
          : scrnsize.height * 0.7,
      width: scrnsize.width,
      decoration: const BoxDecoration(color: iwhite),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: vh[0], horizontal: vh[1]),
        child: Flex(
          direction: directCheck(),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                txt.textWidget(
                    StaticData.techtitle, 34.0, FontWeight.w500, iblack),
                Gap(ResponsiveWidget.isLarge(context) ? 40 : 20),
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
                      ResponsiveWidget.isLarge(context)
                          ? TextAlign.start
                          : TextAlign.justify),
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
      width: ResponsiveWidget.isLarge(context)
          ? scrnsize.width * 0.45
          : scrnsize.width,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: techdata.techData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: ResponsiveWidget.isLarge(context) ? 4 : 3,
            mainAxisSpacing: 30,
            crossAxisSpacing: 20,
            childAspectRatio: 2),
        itemBuilder: (context, i) {
          final data = techdata.techData[i];
          return Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: NetworkImage(data['img'].toString()),
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
                filterQuality: FilterQuality.high,
              ),
            ),
          );
        },
      ),
    );
  }
}
