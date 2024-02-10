import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:review_repository/models/review.dart';
import 'package:the_bbb/reviews/bloc/bloc.dart';
import 'dart:async';

/// {@template reviews_body}
/// Body of the ReviewsPage.
///
/// Add what it does
/// {@endtemplate}
class ReviewsBody extends StatefulWidget {
  /// {@macro reviews_body}
  ReviewsBody({super.key, required this.reviews});

  final List<Review> reviews;

  @override
  State<ReviewsBody> createState() => _ReviewsBodyState();
}

class _ReviewsBodyState extends State<ReviewsBody> {
  // Scroll controller for carousel
  final InfiniteScrollController _controller = InfiniteScrollController();

  @override
  void initState() {
    print('calling init');
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex =
        context.select((ReviewsBloc bloc) => bloc.state.currentReview);
    _controller.animateToItem(currentIndex,
        duration: Duration(milliseconds: 700));
    print('bulding body');
    return Container(
      color: Color.fromARGB(255, 232, 233, 251),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 550,
            child: BlocBuilder<ReviewsBloc, ReviewsState>(
              builder: (context, state) {
                return InfiniteCarousel.builder(
                  itemCount: widget.reviews.length,
                  itemExtent: MediaQuery.of(context).size.width,
                  center: true,
                  anchor: 0.0,
                  velocityFactor: 0.5,
                  onIndexChanged: (index) {
                    print('index changes');
                    context
                        .read<ReviewsBloc>()
                        .add(UpdateIndexEvent(currentIndex: index.toDouble()));
                  },
                  controller: _controller,
                  axisDirection: Axis.horizontal,
                  loop: true,
                  itemBuilder: (context, itemIndex, realIndex) {
                    final currentReview = widget.reviews[currentIndex];
                    return Container(
                      color: Color.fromARGB(255, 232, 233, 251),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 128),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // logo
                            Container(
                                height: 50,
                                child: Image.network(currentReview.logoLink)),
                            // quote
                            Container(
                              width: MediaQuery.of(context).size.width * .7,
                              child: Text(currentReview.review,
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold)),
                            ),
                            // person
                            Row(children: [
                              Container(
                                  height: 150,
                                  child: Image.network(currentReview.userLink)),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(currentReview.username,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text(currentReview.userCompany),
                                  ],
                                ),
                              )
                            ]),
                            // nav
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          ReviewNav(reviews: widget.reviews),
        ],
      ),
    );
  }
}

class ReviewNav extends StatelessWidget {
  const ReviewNav({super.key, required this.reviews});

  final List<Review> reviews;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 128.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RowBuilder(
          itemCount: reviews.length,
          itemBuilder: (context, index) {
            final selected =
                index == context.read<ReviewsBloc>().state.currentReview
                    ? true
                    : false;
            return InkWell(
              onTap: () {
                context
                    .read<ReviewsBloc>()
                    .add(UpdateIndexEvent(currentIndex: index.toDouble()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    color: selected == true ? Colors.blueGrey : Colors.blue,
                    height: 4,
                    width: 24),
              ),
            );
          },
        ),
      ),
    );
  }
}

class RowBuilder extends StatelessWidget {
  const RowBuilder({
    Key? key,
    @required this.itemBuilder,
    @required this.itemCount,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
  }) : super(key: key);

  final IndexedWidgetBuilder? itemBuilder;
  final MainAxisAlignment? mainAxisAlignment;
  final MainAxisSize? mainAxisSize;
  final CrossAxisAlignment? crossAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection? verticalDirection;
  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          List.generate(itemCount!, (index) => itemBuilder!(context, index))
              .toList(),
    );
  }
}
