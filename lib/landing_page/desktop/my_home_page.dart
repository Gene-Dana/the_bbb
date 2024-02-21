import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_bbb/widgets/btns.dart';
import 'package:the_bbb/landing_page/desktop/widgets/client_logos.dart';
import 'package:the_bbb/landing_page/desktop/widgets/final_message.dart';
import 'package:the_bbb/landing_page/desktop/widgets/footer.dart';
import 'package:the_bbb/home/cubit/home_cubit.dart';
import 'package:the_bbb/landing_page/desktop/widgets/opening.dart';
import 'package:the_bbb/reviews/view/reviews_page.dart';

class MyHomePage extends StatelessWidget {
  static Page page() => MaterialPage<void>(child: MyHomePage());

  @override
  Widget build(BuildContext context) {
    print('desktop');
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            // stretch: _stretch,
            flexibleSpace: Placeholder(),

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
              child: InkWell(
                  onTap: () {
                    {
                      context.read<HomeCubit>().setLanding();
                    }
                  },
                  child: Image.asset('icon.png')),
            ),

            leadingWidth: 400,

            title: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              NavElement(
                  name: 'Home',
                  selected: true,
                  link: 'link',
                  onPressed: () {
                    context.read<HomeCubit>().setLanding();
                  }),
              NavElement(
                  name: 'Services',
                  selected: false,
                  link: 'link',
                  onPressed: () {
                    context.read<HomeCubit>().setServices();
                  }),
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
    this.onPressed,
    required this.selected,
  });

  final String name;

  final String link;
  final VoidCallback? onPressed;
  final bool selected;

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
        onPressed: onPressed,
        child: Text(
          name,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: selected ? Colors.blue : Colors.white),
        ),
      ),
    );
  }
}
