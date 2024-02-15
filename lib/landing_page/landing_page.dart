import 'package:flutter/material.dart';
import 'package:the_bbb/landing_page/desktop/my_home_page.dart';
import 'package:the_bbb/landing_page/mobile/my_mobile_page.dart';

class LandingPage extends StatelessWidget {
  static Page page() => const MaterialPage<void>(child: LandingPage());

  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('hitting landing page');
    final width = MediaQuery.of(context).size.width;
    return width >= 800 ? MyHomePage() : MyMobilePage();
  }
}
