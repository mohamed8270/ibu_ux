import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ibu_ux/bindings/controller/responsive_widget.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  List<bool> isHover = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    return Container(
      decoration: const BoxDecoration(color: iblack),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveWidget.isLarge(context) ? 60 : 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  isHover[4] = value;
                });
              },
              hoverColor: Colors.transparent,
              child: txt.textWidget(StaticData.appname, 13.0, FontWeight.w300,
                  isHover[4] ? iwhite : iwhite.withOpacity(0.4)),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    child: txt.textWidget(
                        StaticData.linked,
                        12.0,
                        FontWeight.w300,
                        isHover[0] ? Colors.blue : iwhite.withOpacity(0.4)),
                  ),
                  Gap(scrnsize.width / 30),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isHover[1] = value;
                      });
                    },
                    hoverColor: Colors.transparent,
                    child: txt.textWidget(
                        StaticData.gitHub,
                        12.0,
                        FontWeight.w300,
                        isHover[1] ? Colors.purple : iwhite.withOpacity(0.4)),
                  ),
                  Gap(scrnsize.width / 30),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isHover[2] = value;
                      });
                    },
                    hoverColor: Colors.transparent,
                    child: txt.textWidget(
                        StaticData.insta,
                        12.0,
                        FontWeight.w300,
                        isHover[2]
                            ? Colors.pink[800]
                            : iwhite.withOpacity(0.4)),
                  ),
                  Gap(scrnsize.width / 30),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        isHover[3] = value;
                      });
                    },
                    hoverColor: Colors.transparent,
                    child: txt.textWidget(
                        StaticData.yout,
                        12.0,
                        FontWeight.w300,
                        isHover[3] ? Colors.red : iwhite.withOpacity(0.4)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
