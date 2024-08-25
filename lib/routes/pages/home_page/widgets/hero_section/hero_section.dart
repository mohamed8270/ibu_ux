import 'package:flutter/material.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    return Container(
      height: scrnsize.height * 0.75,
      width: scrnsize.width,
      decoration: BoxDecoration(
        color: iviolet,
        image: DecorationImage(
          image: NetworkImage(StaticData.heroimg2),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            txt.textWidget(StaticData.hertxt, 60.0, FontWeight.w400, iwhite),
            StaticData.gap3,
            txt.textWidget(StaticData.herosub, 14.0, FontWeight.w300, iwhite),
          ],
        ),
      ),
    );
  }
}
