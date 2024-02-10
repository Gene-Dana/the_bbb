import 'package:flutter/material.dart';
import 'package:review_repository/review_repository.dart';
import 'package:the_bbb/mobile/mreviews_body.dart';
import 'package:the_bbb/reviews/bloc/bloc.dart';

/// {@template reviews_page}
/// A description for mReviewsPage
/// {@endtemplate}
class mReviewsPage extends StatelessWidget {
  /// {@macro reviews_page}
  const mReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) =>
          ReviewsBloc(reviewRepository: context.read<ReviewRepository>())
            ..add(const GetReviewsEvent()),
      child: const mReviewsView(),
    );
  }
}

/// {@template reviews_view}
/// Displays the Body of mReviewsView
/// {@endtemplate}
class mReviewsView extends StatelessWidget {
  /// {@macro reviews_view}
  const mReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ReviewsBloc>().state;
    final reviews = state.reviews;

    print('building page');

    return mReviewsBody(
      reviews: reviews,
    );
  }
}
