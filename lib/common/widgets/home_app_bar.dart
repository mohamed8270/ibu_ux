import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  List<bool> isHover = [false, false];
  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    return Container(
      decoration: const BoxDecoration(color: Colors.transparent),
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
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            isHover[0] = value;
                          });
                        },
                        child: txt.textWidget(
                            StaticData.home, 12.0, FontWeight.w400, iwhite),
                      ),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: isHover[0],
                        child: Container(height: 2, width: 15, color: iwhite),
                      ),
                    ],
                  ),
                  Gap(scrnsize.width / 20),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            isHover[1] = value;
                          });
                        },
                        child: txt.textWidget(
                            StaticData.about, 12.0, FontWeight.w400, iwhite),
                      ),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: isHover[1],
                        child: Container(height: 2, width: 15, color: iwhite),
                      ),
                    ],
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
