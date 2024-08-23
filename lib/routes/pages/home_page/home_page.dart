import 'package:flutter/material.dart';
import 'package:ibu_ux/common/widgets/home_app_bar.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/about_us/about_us_section.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/hero_section/hero_section.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/offerings/offerings_section.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/projects/latest_projects.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(scrnsize.width, 80),
        child: const HomeAppBar(),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroSection(),
            AboutUsSection(),
            OfferingsSection(),
            LatestProjects(),
          ],
        ),
      ),
    );
  }
}
