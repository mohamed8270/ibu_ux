import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';
import 'package:ibu_ux/common/widgets/rusable_widgets.dart';

class OfferingsSection extends StatelessWidget {
  const OfferingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var txt = TextFond();
    var scrnsize = MediaQuery.sizeOf(context);
    var use = ReusableWidgets();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          txt.textWidget(StaticData.offering, 38.0, FontWeight.w500, iblack),
          StaticData.gap4,
          use.dividerLine(scrnsize.width),
          OfferingContent(
            snum: '01',
            title: 'UI & UX design',
            content: StaticData.offerC1,
            widget: RotationTransition(
              turns: const AlwaysStoppedAnimation(5 / 360),
              child: Container(
                height: scrnsize.height * 0.2,
                width: scrnsize.width * 0.1,
                decoration: BoxDecoration(
                  color: iviolet,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(StaticData.notesapp),
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ),
          ),
          use.dividerLine(scrnsize.width),
          OfferingContent(
            snum: '02',
            title: 'App Development',
            content: StaticData.offerC2,
            widget: use.svgIcon(StaticData.arrowGo, 20.0, 20.0, iblack),
          ),
          use.dividerLine(scrnsize.width),
          OfferingContent(
            snum: '03',
            title: 'Web Development',
            content: StaticData.offerC2,
            widget: use.svgIcon(StaticData.arrowGo, 20.0, 20.0, iblack),
          ),
          use.dividerLine(scrnsize.width),
          OfferingContent(
            snum: '04',
            title: 'Digital Marketing',
            content: StaticData.offerC2,
            widget: use.svgIcon(StaticData.arrowGo, 20.0, 20.0, iblack),
          ),
        ],
      ),
    );
  }
}

class OfferingContent extends StatelessWidget {
  const OfferingContent(
      {super.key,
      required this.snum,
      required this.title,
      required this.content,
      required this.widget});

  final String snum;
  final String title;
  final String content;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          txt.textWidget(snum, 20.0, FontWeight.w500, iblack),
          Gap(scrnsize.width / 10),
          SizedBox(
            width: scrnsize.width * 0.2,
            child: txt.textWidget(title, 20.0, FontWeight.w500, iblack),
          ),
          Gap(scrnsize.width / 10),
          SizedBox(
            width: scrnsize.width * 0.3,
            child: txt.textWidget(
                content,
                13.0,
                FontWeight.w500,
                iblack.withOpacity(0.45),
                TextOverflow.visible,
                1.5,
                TextAlign.start),
          ),
          Gap(scrnsize.width / 10),
          widget,
        ],
      ),
    );
  }
}
