import 'package:flutter/material.dart';
import 'package:the_bbb/services_page/dekstop_service_page.dart';
import 'package:the_bbb/services_page/mobile_service_page.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  static Page page() => const MaterialPage<void>(child: ServicesPage());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 800 ? DesktopServicesPage() : MobileServicesPage();
  }
}
