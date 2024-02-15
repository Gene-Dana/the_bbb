import 'package:flutter/material.dart';
import 'package:the_bbb/widgets/btns.dart';

class FinalMessage extends StatelessWidget {
  const FinalMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height - 170,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 128.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SizedBox(
                  width: 750,
                  child: Text(
                      'The Boring Bookkeeping Business works with global companies to plan, organize and scale your business',
                      style: Theme.of(context).textTheme.titleLarge),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SizedBox(
                  width: 850,
                  child: Text(
                    'We do more with the resources available, clean-up any problem with ease, and implement best practices for long-term growth.',
                    style: Theme.of(context).textTheme.bodyMedium,
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
                        child: MainBtn(title: 'Explore Our Services', link: ''),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
