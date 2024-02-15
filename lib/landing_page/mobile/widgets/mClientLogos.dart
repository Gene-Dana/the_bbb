import 'package:flutter/material.dart';

class mClientLogos extends StatelessWidget {
  const mClientLogos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        color: Color.fromARGB(255, 36, 73, 222),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('logo1.png', width: 150),
                  Image.asset('logo8.png', width: 150),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('logo2.png', width: 150),
                  Image.asset('logo4.png', width: 150),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('logo5.png', width: 150),
                  Image.asset('logo3.png', width: 150),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('logo6.png', width: 150),
                  Image.asset('logo7.png', width: 150),
                ],
              ),
            )
          ],
        ));
  }
}
