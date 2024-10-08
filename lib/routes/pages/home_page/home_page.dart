import 'package:flutter/material.dart';
import 'package:ibu_ux/common/styles/theme.dart';
import 'package:ibu_ux/common/widgets/home_app_bar.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/experience_awards/experience_awards.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/footer/footer_section.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/hero_section/hero_section.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/tech_section/tech_section.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/works_section/works_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: iblack,
      appBar: PreferredSize(
        preferredSize: Size(scrnsize.width, 70),
        child: const HomeAppBar(),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroSection(),
            ExperienceAwards(),
            TechSection(),
            WorksSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
