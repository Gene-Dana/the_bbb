part of 'reviews_bloc.dart';

/// {@template reviews_state}
/// ReviewsState description
/// {@endtemplate}
class ReviewsState extends Equatable {
  /// {@macro reviews_state}
  const ReviewsState({
    this.customProperty = 'Default Value',
    this.reviews = const [],
    this.currentReview = 0,
  });

  /// A description for customProperty
  final String customProperty;

  final List<Review> reviews;
  final int currentReview;

  @override
  List<Object> get props => [customProperty, reviews, currentReview];

  /// Creates a copy of the current ReviewsState with property changes
  ReviewsState copyWith({
    String? customProperty,
    List<Review>? reviews,
    int? currentReview,
  }) {
    return ReviewsState(
      customProperty: customProperty ?? this.customProperty,
      reviews: reviews ?? this.reviews,
      currentReview: currentReview ?? this.currentReview,
    );
  }
}

/// {@template reviews_initial}
/// The initial state of ReviewsState
/// {@endtemplate}
class ReviewsInitial extends ReviewsState {
  /// {@macro reviews_initial}
  const ReviewsInitial() : super();
}
