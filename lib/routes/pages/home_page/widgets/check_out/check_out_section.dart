import 'package:flutter/material.dart';
import 'package:ibu_ux/common/styles/theme.dart';

class CheckOutSection extends StatelessWidget {
  const CheckOutSection({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    return Container(
      height: scrnsize.height * 0.45,
      width: scrnsize.width,
      decoration: const BoxDecoration(color: igrey),
    );
  }
}
