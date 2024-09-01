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
  ScrollController scrollController = ScrollController();
  Color color = iwhite;

  void scrollToTap(double offset) {
    scrollController.animateTo(offset,
        duration: const Duration(milliseconds: 800), curve: Curves.easeInOut);
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      setState(() {
        if (scrollController.offset > 100) {
          color = iwhite;
        } else {
          color = iwhite;
        }
      });
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: iwhite,
      appBar: PreferredSize(
        preferredSize: Size(scrnsize.width, 80),
        child: HomeAppBar(
          color: color,
          homeTap: () => scrollToTap(0),
          aboutTap: () => scrollToTap(500),
          serviceTap: () => scrollToTap(960),
          contentTap: () => scrollToTap(1350),
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        child: const Column(
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
