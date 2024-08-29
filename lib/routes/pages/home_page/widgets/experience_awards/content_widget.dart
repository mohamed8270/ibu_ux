import 'package:flutter/material.dart';
import 'package:ibu_ux/bindings/controller/responsive_widget.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';

class ReusableContent extends StatelessWidget {
  const ReusableContent({
    super.key,
    required this.title,
    required this.title2,
    required this.date,
    required this.img,
  });

  final String title;
  final String title2;
  final String date;
  final String img;

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    double sizeForContainer() {
      return ResponsiveWidget.isLarge(context) ? 0.03 : 0.15;
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: scrnsize.height * 0.065,
          width: scrnsize.width * sizeForContainer(),
          decoration: BoxDecoration(
            color: iwhite,
            borderRadius: BorderRadius.circular(7),
            image: DecorationImage(
              image: NetworkImage(img),
              fit: BoxFit.scaleDown,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
        StaticData.gap3,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: ResponsiveWidget.isSmall(context)
                  ? scrnsize.width * 0.7
                  : null,
              child: RichText(
                overflow: TextOverflow.visible,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: title,
                      style: txt.textStyle(13.0, FontWeight.w500, iblack),
                    ),
                    TextSpan(
                      text: title2,
                      style: txt.textStyle(13.0, FontWeight.w700, iblack),
                    ),
                  ],
                ),
              ),
            ),
            StaticData.gap1,
            txt.textWidget(date, 11.0, FontWeight.w500, iblack.withOpacity(0.5))
          ],
        ),
      ],
    );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    return SizedBox(
      width: ResponsiveWidget.isLarge(context)
          ? scrnsize.width * 0.3
          : scrnsize.width,
      child: const Divider(
        thickness: 1,
        height: 1,
        color: igrey,
      ),
    );
  }
}
