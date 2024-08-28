import 'package:flutter/material.dart';
import 'package:ibu_ux/common/styles/theme.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/experience_awards/reusable_widget.dart';

class ExperienceAwards extends StatelessWidget {
  const ExperienceAwards({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    return Container(
      height: scrnsize.height * 0.5,
      width: scrnsize.width,
      decoration: const BoxDecoration(color: iyellow),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReusableWidget(),
            ReusableWidget(),
          ],
        ),
      ),
    );
  }
}
