import 'package:flutter/material.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';

class OfferingsSection extends StatelessWidget {
  const OfferingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var txt = TextFond();
    var scrnsize = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          txt.textWidget(StaticData.offering, 38.0, FontWeight.w500, iblack),
          StaticData.gap4,
          SizedBox(
              width: scrnsize.width,
              child: Divider(
                  color: iblack.withOpacity(0.1), thickness: 0.8, height: 0.8)),
          const OfferingContent(),
        ],
      ),
    );
  }
}

class OfferingContent extends StatelessWidget {
  const OfferingContent({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          txt.textWidget('01', 20.0, FontWeight.w500, iblack),
          SizedBox(
            width: scrnsize.width * 0.3,
            child: txt.textWidget('UI & UX design', 20.0, FontWeight.w500,
                iblack, TextOverflow.visible, 1.5, TextAlign.center),
          ),
          SizedBox(
            width: scrnsize.width * 0.3,
            child: txt.textWidget(StaticData.offerC1, 13.0, FontWeight.w500,
                iblack.withOpacity(0.45), TextOverflow.visible),
          ),
          RotationTransition(
            turns: const AlwaysStoppedAnimation(5 / 360),
            child: Container(
              height: scrnsize.height * 0.2,
              width: scrnsize.width * 0.1,
              decoration: BoxDecoration(
                color: iviolet,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(StaticData.heroimg),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
