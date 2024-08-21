import 'package:flutter/material.dart';
import 'package:ibu_ux/common/styles/theme.dart';

class CaruselCardSection extends StatelessWidget {
  const CaruselCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    return Container(
      height: scrnsize.height * 0.3,
      width: scrnsize.width * 0.25,
      decoration: BoxDecoration(
        color: igrey,
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: NetworkImage(''),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
