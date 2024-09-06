import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          horizontal: ResponsiveWidget.isLarge(context) ? 60.0 : 20,
          vertical: ResponsiveWidget.isLarge(context) ? 30 : 20),
      child: Container(
        height: ResponsiveWidget.isLarge(context)
            ? scrnsize.height * 0.5
            : scrnsize.height * 0.4,
        width: scrnsize.width,
        decoration: const BoxDecoration(color: iwhite),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  txt.textWidget(
                      'Have a project?', 14.0, FontWeight.w500, iblack),
                  StaticData.gap2,
                  txt.textWidget(
                      "Let's have a conversation",
                      ResponsiveWidget.isLarge(context) ? 34.0 : 24.0,
                      FontWeight.w500,
                      iblack,
                      TextOverflow.visible,
                      1.5,
                      ResponsiveWidget.isLarge(context)
                          ? TextAlign.center
                          : TextAlign.center),
                  StaticData.gap3,
                  ButtonBox(
                    t: 'Talk with me',
                    tc: iwhite,
                    bc: iblack,
                    click: () {},
                    hover: (h0) {},
                    w: ResponsiveWidget.isLarge(context) ? 0.1 : 0.4,
                  ),
                  const Gap(35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SocialIcons(
                        size: 24,
                        path: StaticData.dribble,
                        click: () {},
                        hover: (h0) {},
                      ),
                      StaticData.gap3,
                      SocialIcons(
                        size: 24,
                        path: StaticData.instagram,
                        click: () {},
                        hover: (h0) {},
                      ),
                      StaticData.gap3,
                      SocialIcons(
                        size: 28,
                        path: StaticData.youtube,
                        click: () {},
                        hover: (h0) {},
                      ),
                      StaticData.gap3,
                      SocialIcons(
                        size: 27,
                        path: StaticData.github,
                        click: () {},
                        hover: (h0) {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
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

class SocialIcons extends StatelessWidget {
  const SocialIcons(
      {super.key,
      required this.path,
      required this.click,
      required this.hover,
      required this.size});

  final String path;
  final double size;
  final VoidCallback click;
  final Function(bool) hover;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
      onHover: hover,
      child: SvgPicture.asset(
        path,
        height: size,
        width: size,
        colorFilter: const ColorFilter.mode(iblack, BlendMode.srcIn),
      ),
    );
  }
}
