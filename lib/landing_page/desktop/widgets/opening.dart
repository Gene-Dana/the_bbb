import 'package:flutter/material.dart';
import 'package:the_bbb/widgets/btns.dart';

class Opening extends StatelessWidget {
  const Opening({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height - 170,
        color: const Color.fromRGBO(1, 15, 48, 1),
        child: Stack(
          children: [
            Positioned.fill(
                top: 200.0,
                right: -800.0,
                child: Image.asset('assets/abstract.png')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 128.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text('Saving you time for what you do best',
                        style: Theme.of(context).textTheme.displayLarge),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: SizedBox(
                      width: 850,
                      child: Text(
                        'Are you a small business owner looking for hassle-free bookkeeping services without the burden of hiring an in-house employee? Look no further! Our dedicated team is here to streamline your financial processes, so you can focus on what you do best – growing your business.',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(24.0),
                    child: SizedBox(
                      width: 700,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: MainBtn(title: 'Our Services', link: ''),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SecondaryBtn(title: 'Contact Us', link: ''),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
