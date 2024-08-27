import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
      decoration: const BoxDecoration(color: iwhite),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(radius: 25, backgroundColor: iblack),
                StaticData.gap3,
                txt.textWidget(
                    StaticData.greeting, 56.0, FontWeight.w400, iblack)
              ],
            ),
            Gap(scrnsize.width * 0.1),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                txt.textWidget(
                    StaticData.hertxt, 40.0, FontWeight.w400, iblack),
                StaticData.gap2,
                txt.textWidget(StaticData.herosub, 14.0, FontWeight.w400,
                    iblack.withOpacity(0.6)),
                const Gap(50),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ButtonBox(
                      t: StaticData.btntxt1,
                      tc: iwhite,
                      bc: iblack,
                      click: () {},
                      hover: (h) {},
                    ),
                    StaticData.gap2,
                    ButtonBox(
                      t: StaticData.btntxt2,
                      tc: iblack,
                      bc: Colors.transparent,
                      border: Border.all(width: 1.5, color: igrey),
                      click: () {},
                      hover: (h) {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonBox extends StatelessWidget {
  const ButtonBox(
      {super.key,
      required this.t,
      required this.tc,
      required this.bc,
      this.border,
      required this.click,
      required this.hover});

  final String t;
  final Color tc;
  final Color bc;
  final BoxBorder? border;
  final VoidCallback click;
  final Function(bool) hover;

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    return InkWell(
      onTap: click,
      onHover: hover,
      child: Container(
        height: scrnsize.height * 0.055,
        width: scrnsize.width * 0.1,
        decoration: BoxDecoration(
          color: bc,
          borderRadius: BorderRadius.circular(10),
          border: border,
        ),
        alignment: Alignment.center,
        child: txt.textWidget(t, 12.0, FontWeight.w400, tc),
      ),
    );
  }
}
