import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(1, 15, 48, 1),
      height: 300,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('icon.png'),
                    ),
                    SizedBox(
                      width: 150,
                      height: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 230, 230, 230),
                            foregroundColor: const Color.fromRGBO(1, 15, 48, 1),
                          ),
                          onPressed: () {},
                          child: const Text('Lets Talk',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ]),
              const Column(
                children: [],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                'Copyright The Boring Bookkeepers LLC All Rights Reserved',
                style: TextStyle(color: Colors.white, fontSize: 12)),
          )
        ],
      ),
    );
  }
}
