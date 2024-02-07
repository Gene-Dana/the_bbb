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
      height: 400,
      child: Container(
        height: 200,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // logo
                      Image.network(currentReview.logoLink),
                      // quote
                      Text(currentReview.review),
                      // person
                      Row(children: [
                        Image.network(currentReview.userLink),
                        Column(
                          children: [
                            Text(currentReview.username),
                            Text(currentReview.userCompany),
                          ],
                        )
                      ]),
                      // nav
                      ReviewNav(),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class ReviewNav extends StatelessWidget {
  const ReviewNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 3, width: 12);
  }
}
