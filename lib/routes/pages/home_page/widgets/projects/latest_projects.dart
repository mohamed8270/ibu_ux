import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';
import 'package:ibu_ux/data/repository/local_data_repository.dart';

class LatestProjects extends StatelessWidget {
  const LatestProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    var data = Get.put(LocalDataRepository());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              txt.textWidget(
                  StaticData.projects, 38.0, FontWeight.w500, iblack),
              GestureDetector(
                onTap: () {},
                child:
                    txt.textWidget('See all', 14.0, FontWeight.w500, iviolet),
              ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: scrnsize.width / scrnsize.height * 0.9),
            itemCount: data.porjectsData.length,
            itemBuilder: (context, i) {
              final img = data.porjectsData[i];
              return GridCard(url: img['img'].toString(), index: i);
            },
          ),
        ],
      ),
    );
  }
}

class GridCard extends StatelessWidget {
  const GridCard({super.key, required this.url, required this.index});

  final String url;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: igrey,
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
