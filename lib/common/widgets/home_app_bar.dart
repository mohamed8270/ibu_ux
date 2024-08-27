import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ibu_ux/bindings/controller/responsive_widget.dart';
import 'package:ibu_ux/common/styles/fonts.dart';
import 'package:ibu_ux/common/styles/static.dart';
import 'package:ibu_ux/common/styles/theme.dart';

class HomeAppBar extends StatefulWidget {
  final Color color;
  final VoidCallback homeTap;
  final VoidCallback aboutTap;
  final VoidCallback serviceTap;
  final VoidCallback contentTap;
  const HomeAppBar(
      {super.key,
      required this.color,
      required this.aboutTap,
      required this.serviceTap,
      required this.homeTap,
      required this.contentTap});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  List<bool> isHover = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    var txt = TextFond();
    return Container(
      decoration: BoxDecoration(color: widget.color),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveWidget.isLarge(context) ? 60 : 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            txt.textWidget(
                StaticData.appname,
                ResponsiveWidget.isLarge(context) ? 16.0 : 18.0,
                FontWeight.w600,
                iblack),
            ResponsiveWidget.isLarge(context)
                ? Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: widget.homeTap,
                          onHover: (value) {
                            setState(() {
                              isHover[0] = value;
                            });
                          },
                          hoverColor: Colors.transparent,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              txt.textWidget(StaticData.home, 12.0,
                                  FontWeight.w400, iblack),
                              StaticData.gap2,
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: isHover[0],
                                child: Container(
                                    height: 2, width: 25, color: iblack),
                              ),
                            ],
                          ),
                        ),
                        Gap(scrnsize.width / 20),
                        InkWell(
                          onTap: widget.aboutTap,
                          onHover: (value) {
                            setState(() {
                              isHover[1] = value;
                            });
                          },
                          hoverColor: Colors.transparent,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              txt.textWidget(StaticData.about, 12.0,
                                  FontWeight.w400, iblack),
                              StaticData.gap2,
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: isHover[1],
                                child: Container(
                                    height: 2, width: 25, color: iblack),
                              ),
                            ],
                          ),
                        ),
                        Gap(scrnsize.width / 20),
                        InkWell(
                          onTap: widget.serviceTap,
                          onHover: (value) {
                            setState(() {
                              isHover[2] = value;
                            });
                          },
                          hoverColor: Colors.transparent,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              txt.textWidget(StaticData.service, 12.0,
                                  FontWeight.w400, iblack),
                              StaticData.gap2,
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: isHover[2],
                                child: Container(
                                    height: 2, width: 25, color: iblack),
                              ),
                            ],
                          ),
                        ),
                        Gap(scrnsize.width / 20),
                        InkWell(
                          onTap: widget.contentTap,
                          onHover: (value) {
                            setState(() {
                              isHover[3] = value;
                            });
                          },
                          hoverColor: Colors.transparent,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              txt.textWidget(StaticData.content, 12.0,
                                  FontWeight.w400, iblack),
                              StaticData.gap2,
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: isHover[3],
                                child: Container(
                                    height: 2, width: 25, color: iblack),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
            InkWell(
              onTap: () {},
              onHover: (value) {},
              child: Container(
                height: scrnsize.height * 0.055,
                width: ResponsiveWidget.isLarge(context)
                    ? scrnsize.width * 0.1
                    : scrnsize.width * 0.25,
                decoration: BoxDecoration(
                  color: iblack,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: txt.textWidget('Contact', 12.0, FontWeight.w400, iwhite),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
