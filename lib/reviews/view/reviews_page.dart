import 'package:flutter/material.dart';
import 'package:review_repository/review_repository.dart';
import 'package:the_bbb/reviews/bloc/bloc.dart';
import 'package:the_bbb/reviews/widgets/reviews_body.dart';

/// {@template reviews_page}
/// A description for ReviewsPage
/// {@endtemplate}
class ReviewsPage extends StatelessWidget {
  /// {@macro reviews_page}
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) =>
          ReviewsBloc(reviewRepository: context.read<ReviewRepository>())
            ..add(const GetReviewsEvent()),
      child: const ReviewsView(),
    );
  }
}

/// {@template reviews_view}
/// Displays the Body of ReviewsView
/// {@endtemplate}
class ReviewsView extends StatelessWidget {
  /// {@macro reviews_view}
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ReviewsBloc>().state;
    final reviews = state.reviews;

    print('building page');

    return ReviewsBody(
      reviews: reviews,
    );
  }
}
