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

    responCheck();
    return Container(
      height: scrnsize.height * 0.65,
      width: scrnsize.width,
      decoration: const BoxDecoration(color: iblack),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: vh[0], horizontal: vh[1]),
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            txt.textWidget(
                StaticData.techtitle,
                ResponsiveWidget.isLarge(context) ? 34.0 : 24.0,
                FontWeight.w400,
                iwhite),
            const Gap(40),
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
      height: scrnsize.height / 10,
      width: scrnsize.width,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: techdata.techData.length,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, i) {
          final data = techdata.techData[i];
          return Container(
            height: scrnsize.height * 0.1,
            width: scrnsize.width / 10,
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
