import 'package:flutter/material.dart';
import 'package:ibu_ux/common/widgets/home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var scrnsize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(scrnsize.width, 120),
        child: const HomeAppBar(),
      ),
    );
  }
}
