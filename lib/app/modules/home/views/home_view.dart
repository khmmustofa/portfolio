import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/components/about.dart';
import 'package:portfolio/app/components/education.dart';
import 'package:portfolio/app/components/footer.dart';
import 'package:portfolio/app/components/skills.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  List<Widget> navItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Education'),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(onPressed: () {}, child: const Text("Skills")),
    ),
  ];
  bool isMobile = false;
  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;

    return GetBuilder(
      init: controller,
      builder: (_) => Scaffold(
          // appBar: AppBar(
          //   title: const Text('Khoirul Dev'),
          //   actions: isMobile ? null : navItems,
          // ),
          // drawer: isMobile
          //     ? Drawer(
          //         child: ListView(children: navItems),
          //       )
          //     : null,
          body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            const Wrap(
              alignment: WrapAlignment.center,
              spacing: 20.0,
              runAlignment: WrapAlignment.center,
              children: [
                About(),
                Education(),
              ],
            ),
            Skills(
              key: controller.skillKey,
            ),
            const Footer(),
          ],
        )),
      )),
    );
  }
}
