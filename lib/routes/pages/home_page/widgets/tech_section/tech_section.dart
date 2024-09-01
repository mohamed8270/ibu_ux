import 'package:flutter/material.dart';
import 'package:ibu_ux/bindings/controller/responsive_widget.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';

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
                StaticData.gap4,
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
            )
          ],
        ),
      ),
    );
  }
}
