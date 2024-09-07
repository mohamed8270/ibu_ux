import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ibu_ux/bindings/controller/responsive_widget.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  var isHover = false;
  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    return Container(
      height: scrnsize.height * 0.75,
      width: scrnsize.width,
      decoration: const BoxDecoration(color: iblack),
      alignment: Alignment.center,
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: iwhite.withOpacity(0.09),
            child: ClipOval(
              child: Image.network(
                StaticData.blazer,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(20),
          txt.textWidget(StaticData.greeting, 12.0, FontWeight.w300, iwhite),
          const Gap(40),
          txt.textWidget(
              StaticData.hertxt,
              ResponsiveWidget.isLarge(context) ? 42.0 : 30.0,
              FontWeight.w400,
              iwhite,
              TextOverflow.visible,
              1.5,
              TextAlign.center),
          const Gap(40),
          ButtonBox(
            t: StaticData.btntxt1,
            tc: iwhite,
            bc: isHover ? Colors.transparent : iwhite.withOpacity(0.05),
            w: ResponsiveWidget.isLarge(context) ? 0.1 : 0.4,
            border: Border.all(width: 1, color: iwhite.withOpacity(0.15)),
            click: () {},
            hover: (h) {
              setState(() {
                isHover = h;
              });
            },
          ),
        ],
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
      required this.hover,
      required this.w});

  final String t;
  final Color tc;
  final Color bc;
  final double w;
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
        width: scrnsize.width * w,
        decoration: BoxDecoration(
          color: bc,
          borderRadius: BorderRadius.circular(0),
          border: border,
        ),
        alignment: Alignment.center,
        child: txt.textWidget(t, 12.0, FontWeight.w400, tc),
      ),
    );
  }
}
