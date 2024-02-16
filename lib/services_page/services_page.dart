import 'package:flutter/material.dart';
import 'package:the_bbb/services_page/desktop/my_service_page.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  static Page page() => const MaterialPage<void>(child: ServicesPage());

  @override
  Widget build(BuildContext context) {
    print('hitting landing page');
    final width = MediaQuery.of(context).size.width;
    return width >= 800 ? MyServicesPage() : MyServicesPage();
  }
}
