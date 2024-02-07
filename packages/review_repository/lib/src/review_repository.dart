import 'package:review_repository/data/reviews.dart';
import 'package:review_repository/models/review.dart';

/// {@template review_repository}
/// My new Flutter package
/// {@endtemplate}
class ReviewRepository {
  /// {@macro review_repository}
  const ReviewRepository();

  List<Review> getReviews() {
    print('in repo');
    return parseReviews(reviews);
  }
}
