import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ibu_ux/bindings/controller/responsive_widget.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/experience_awards/reusable_widget.dart';

class ExperienceAwards extends StatelessWidget {
  const ExperienceAwards({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    double sizeForContainer() {
      return ResponsiveWidget.isLarge(context) ? 0.65 : 1;
    }

    return Container(
      height: scrnsize.height * sizeForContainer(),
      width: scrnsize.width,
      decoration: const BoxDecoration(color: iyellow),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveWidget.isLarge(context) ? 60 : 20,
            vertical: 40),
        child: Flex(
          direction: ResponsiveWidget.isLarge(context)
              ? Axis.horizontal
              : Axis.vertical,
          crossAxisAlignment: ResponsiveWidget.isLarge(context)
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          mainAxisAlignment: ResponsiveWidget.isLarge(context)
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            const ReusableWidget(),
            ResponsiveWidget.isLarge(context) ? const Gap(0) : StaticData.gap2,
            const ReusableWidget2(),
          ],
        ),
      ),
    );
  }
}
