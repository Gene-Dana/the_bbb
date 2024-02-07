part of 'reviews_bloc.dart';

abstract class ReviewsEvent extends Equatable {
  const ReviewsEvent();

  @override
  List<Object> get props => [];
}

/// {@template custom_reviews_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class GetReviewsEvent extends ReviewsEvent {
  /// {@macro Get_reviews_event}
  const GetReviewsEvent();
}

class UpdateIndexEvent extends ReviewsEvent {
  /// {@macro Get_reviews_event}
  const UpdateIndexEvent({required this.currentIndex});

  final double currentIndex;

  @override
  List<Object> get props => [currentIndex];
}
