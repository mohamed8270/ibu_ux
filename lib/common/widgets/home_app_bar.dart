import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';

class HomeAppBar extends StatefulWidget {
  final Color color;
  const HomeAppBar({super.key, required this.color});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  List<bool> isHover = [false, false, false];

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    return Container(
      decoration: BoxDecoration(color: widget.color),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            txt.textWidget(StaticData.appname, 16.0, FontWeight.w600, iwhite),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isHover[0] = value;
                      });
                    },
                    hoverColor: Colors.transparent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        txt.textWidget(
                            StaticData.home, 12.0, FontWeight.w400, iwhite),
                        StaticData.gap2,
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: isHover[0],
                          child: Container(height: 2, width: 25, color: iwhite),
                        ),
                      ],
                    ),
                  ),
                  Gap(scrnsize.width / 20),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isHover[1] = value;
                      });
                    },
                    hoverColor: Colors.transparent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        txt.textWidget(
                            StaticData.about, 12.0, FontWeight.w400, iwhite),
                        StaticData.gap2,
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: isHover[1],
                          child: Container(height: 2, width: 25, color: iwhite),
                        ),
                      ],
                    ),
                  ),
                  Gap(scrnsize.width / 20),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isHover[2] = value;
                      });
                    },
                    hoverColor: Colors.transparent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        txt.textWidget(
                            StaticData.service, 12.0, FontWeight.w400, iwhite),
                        StaticData.gap2,
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: isHover[2],
                          child: Container(height: 2, width: 25, color: iwhite),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: scrnsize.height * 0.055,
              width: scrnsize.width * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(width: 1, color: iwhite),
              ),
              alignment: Alignment.center,
              child: txt.textWidget('Contact', 12.0, FontWeight.w400, iwhite),
            ),
          ],
        ),
      ),
    );
  }
}
