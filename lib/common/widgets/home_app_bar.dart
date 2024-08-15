import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    return Container(
      decoration: const BoxDecoration(color: iblack),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            txt.textWidget(StaticData.appname, 16.0, FontWeight.w600, iwhite),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  txt.textWidget(
                      StaticData.home, 14.0, FontWeight.w600, iwhite),
                  Gap(scrnsize.width / 20),
                  txt.textWidget(
                      StaticData.about, 14.0, FontWeight.w600, iwhite),
                ],
              ),
            ),
            Container(
              height: scrnsize.height * 0.055,
              width: scrnsize.width * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(width: 1.5, color: igrey),
              ),
              alignment: Alignment.center,
              child: txt.textWidget('Contact', 14.0, FontWeight.w600, iwhite),
            ),
          ],
        ),
      ),
    );
  }
}
