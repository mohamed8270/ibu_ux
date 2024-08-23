import 'package:flutter/material.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';

class LatestProjects extends StatelessWidget {
  const LatestProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
      child: Column(
        children: [
          txt.textWidget(StaticData.projects, 38.0, FontWeight.w500, iblack),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                childAspectRatio: scrnsize.width / scrnsize.height * 1.4),
            itemBuilder: (context, i) {
              return GridCard(url: StaticData.heroimg2);
            },
          ),
        ],
      ),
    );
  }
}

class GridCard extends StatelessWidget {
  const GridCard({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    final scrnsize = MediaQuery.sizeOf(context);
    return Container(
      height: scrnsize.height * 0.2,
      width: scrnsize.width * 0.2,
      decoration: BoxDecoration(
        color: igrey,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
