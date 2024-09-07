import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibu_ux/bindings/controller/responsive_widget.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/hero_section/hero_section.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({super.key});

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  var isHover = false;
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
        decoration: const BoxDecoration(color: iblack),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  txt.textWidget(
                      "Tell me about your next project",
                      ResponsiveWidget.isLarge(context) ? 34.0 : 24.0,
                      FontWeight.w400,
                      iwhite,
                      TextOverflow.visible,
                      1.5,
                      ResponsiveWidget.isLarge(context)
                          ? TextAlign.center
                          : TextAlign.center),
                  StaticData.gap4,
                  ButtonBox(
                    t: StaticData.btntxt1,
                    tc: iwhite,
                    bc: isHover ? Colors.transparent : iwhite.withOpacity(0.05),
                    w: ResponsiveWidget.isLarge(context) ? 0.1 : 0.4,
                    border:
                        Border.all(width: 1, color: iwhite.withOpacity(0.15)),
                    click: () {},
                    hover: (h) {
                      setState(() {
                        isHover = h;
                      });
                    },
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Ibu ux',
                    style: txt.textStyle(12.0, FontWeight.w500, iwhite),
                  ),
                  TextSpan(
                    text: ' | 2024 all rights reserved',
                    style: txt.textStyle(
                        12.0, FontWeight.w300, iwhite.withOpacity(0.4)),
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
        colorFilter: const ColorFilter.mode(iwhite, BlendMode.srcIn),
      ),
    );
  }
}
