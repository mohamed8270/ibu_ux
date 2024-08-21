import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibu_ux/common/styles/theme.dart';

class ReusableWidgets {
  // svg icon network
  Widget svgIcon(icn, h, w, c) {
    return SvgPicture.network(
      icn,
      height: h,
      width: w,
      colorFilter: ColorFilter.mode(c, BlendMode.srcIn),
    );
  }

  // divider line
  Widget dividerLine(w) {
    return SizedBox(
      width: w,
      child:
          Divider(color: iblack.withOpacity(0.1), thickness: 0.8, height: 0.8),
    );
  }
}
