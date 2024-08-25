import 'package:flutter/material.dart';
import 'package:ibu_ux/common/styles/theme.dart';
import 'package:ibu_ux/common/widgets/home_app_bar.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/about_us/about_us_section.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/check_out/check_out_section.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/hero_section/hero_section.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/offerings/offerings_section.dart';
import 'package:ibu_ux/routes/pages/home_page/widgets/projects/latest_projects.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController = ScrollController();
  Color color = Colors.transparent;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      setState(() {
        if (scrollController.offset > 100) {
          color = iblack;
        } else {
          color = Colors.transparent;
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
      extendBodyBehindAppBar: true,
      backgroundColor: iwhite,
      appBar: PreferredSize(
        preferredSize: Size(scrnsize.width, 80),
        child: HomeAppBar(color: color),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.vertical,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroSection(),
            AboutUsSection(),
            OfferingsSection(),
            LatestProjects(),
            CheckOutSection(),
          ],
        ),
      ),
    );
  }
}
