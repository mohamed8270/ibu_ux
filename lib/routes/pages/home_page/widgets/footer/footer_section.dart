import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ibu_ux/bindings/controller/responsive_widget.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/hero_section/hero_section.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveWidget.isLarge(context) ? 20.0 : 60,
          vertical: ResponsiveWidget.isLarge(context) ? 30 : 40),
      child: Container(
        height: ResponsiveWidget.isLarge(context)
            ? scrnsize.height * 0.5
            : scrnsize.height * 0.4,
        width: scrnsize.width,
        decoration: const BoxDecoration(color: iwhite),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            txt.textWidget('Have a project?', 14.0, FontWeight.w500, iblack),
            StaticData.gap2,
            txt.textWidget(
                "Let's have a conversation", 34.0, FontWeight.w500, iblack),
            StaticData.gap3,
            ButtonBox(
              t: 'Talk with me',
              tc: iwhite,
              bc: iblack,
              click: () {},
              hover: (h0) {},
              w: ResponsiveWidget.isLarge(context) ? 0.1 : 0.4,
            ),
            Gap(ResponsiveWidget.isLarge(context) ? 160 : 30),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Ibu ux',
                    style: txt.textStyle(12.0, FontWeight.w700, iblack),
                  ),
                  TextSpan(
                    text: ' | 2024 all rights reserved',
                    style: txt.textStyle(12.0, FontWeight.w400, iblack),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
