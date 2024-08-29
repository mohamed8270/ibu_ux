import 'package:flutter/material.dart';
import 'package:ibu_ux/bindings/controller/responsive_widget.dart';
import 'package:ibu_ux/common/styles/theme.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/experience_awards/reusable_widget.dart';

class ExperienceAwards extends StatelessWidget {
  const ExperienceAwards({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    double sizeForContainer() {
      return ResponsiveWidget.isLarge(context) ? 0.6 : 1;
    }

    return Container(
      height: scrnsize.height * sizeForContainer(),
      width: scrnsize.width,
      decoration: const BoxDecoration(color: iyellow),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveWidget.isLarge(context) ? 60 : 20,
            vertical: 40),
        child: Flex(
          direction: ResponsiveWidget.isLarge(context)
              ? Axis.horizontal
              : Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ReusableWidget(),
            ReusableWidget2(),
          ],
        ),
      ),
    );
  }
}
