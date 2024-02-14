import 'package:flutter/material.dart';
import 'package:the_bbb/btns.dart';
import 'package:the_bbb/client_logos.dart';
import 'package:the_bbb/final_message.dart';
import 'package:the_bbb/footer.dart';
import 'package:the_bbb/opening.dart';
import 'package:the_bbb/reviews/view/reviews_page.dart';

class MyHomePage extends StatelessWidget {
  static Page page() => MaterialPage<void>(child: MyHomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            // stretch: _stretch,

            onStretchTrigger: () async {
              // Triggers when stretching
            },
            // [stretchTriggerOffset] describes the amount of overscroll that must occur
            // to trigger [onStretchTrigger]
            //
            // Setting [stretchTriggerOffset] to a value of 300.0 will trigger
            // [onStretchTrigger] when the user has overscrolled by 300.0 pixels.

            stretchTriggerOffset: 300.0,

            expandedHeight: 170.0,

            pinned: true,

            backgroundColor: const Color.fromRGBO(1, 15, 48, 1),

            toolbarHeight: 100,

            leading: Padding(
              padding: const EdgeInsets.only(left: 128.0),
              child: Image.asset('icon.png'),
            ),

            leadingWidth: 400,

            title:
                const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              NavElement(name: 'Services', link: 'link'),
            ]),

            actions: const [
              MainBtn(title: 'Contact Us', link: ''),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Opening(),
                const ClientLogos(),
                const ReviewsPage(),
                const FinalMessage(),
                const Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavElement extends StatelessWidget {
  const NavElement({
    super.key,
    required this.name,
    required this.link,
  });

  final String name;

  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(16.0),
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () {},
        child: Text(
          name,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}
