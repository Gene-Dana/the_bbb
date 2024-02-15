import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(1, 15, 48, 1),
      height: 360,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 128.0, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                foregroundColor:
                                    const Color.fromRGBO(1, 15, 48, 1),
                              ),
                              onPressed: () {},
                              child: const Text('Lets Talk',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ]),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FooterElement(name: 'Services', link: 'link'),
                    FooterElement(name: 'Our Work', link: 'link'),
                    FooterElement(name: 'Solution', link: 'link'),
                    FooterElement(name: 'Blog', link: 'link'),
                    FooterElement(name: 'Solution', link: 'link'),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: SizedBox(
                height: 50,
                child: Text(
                    'Copyright The Boring Bookkeepers LLC 2024 All Rights Reserved',
                    style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FooterElement extends StatelessWidget {
  const FooterElement({
    super.key,
    required this.name,
    required this.link,
  });

  final String name;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(16.0),
          textStyle: const TextStyle(fontSize: 12),
        ),
        onPressed: () {},
        child: Text(name,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  fontSize: 16,
                )),
      ),
    );
  }
}
