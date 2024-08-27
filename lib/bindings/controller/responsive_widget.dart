import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largePage;
  final Widget? mediumPage;
  final Widget? smallPage;
  const ResponsiveWidget(
      {super.key, required this.largePage, this.mediumPage, this.smallPage});

  static bool isSmall(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLarge(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMedium(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return largePage;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 800) {
          return mediumPage ?? largePage;
        } else {
          return smallPage ?? largePage;
        }
      },
    );
  }
}
