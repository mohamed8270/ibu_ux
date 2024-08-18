import 'package:flutter/material.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';

class AboutUsSection extends StatelessWidget {
  const AboutUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var txt = TextFond();
    var scrnsize = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(60),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          txt.textWidget(StaticData.about, 14.0, FontWeight.w500, iblack),
          SizedBox(
            width: scrnsize.width * 0.4,
            child: txt.textWidget(StaticData.aboutcontent, 14.0,
                FontWeight.w500, iblack, TextOverflow.visible),
          ),
        ],
      ),
    );
  }
}
