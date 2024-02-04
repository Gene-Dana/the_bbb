import 'package:flutter/material.dart';

class ClientLogos extends StatelessWidget {
  const ClientLogos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        color: Color.fromARGB(255, 36, 73, 222),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('logo1.png'),
                  Image.asset('logo8.png'),
                  Image.asset('logo2.png'),
                  Image.asset('logo4.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('logo5.png'),
                  Image.asset('logo3.png'),
                  Image.asset('logo6.png'),
                  Image.asset('logo7.png'),
                ],
              ),
            )
          ],
        ));
  }
}
