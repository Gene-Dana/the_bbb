import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:review_repository/models/review.dart';
import 'package:review_repository/review_repository.dart';
import 'package:the_bbb/ticker.dart';
part 'reviews_event.dart';
part 'reviews_state.dart';

class ReviewsBloc extends Bloc<ReviewsEvent, ReviewsState> {
  final Ticker _ticker = const Ticker();
  static const int _duration = 60;
  StreamSubscription<int>? _tickerSubscription;

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  ReviewsBloc({required ReviewRepository reviewRepository})
      : _reviewRepository = reviewRepository,
        super(const ReviewsInitial()) {
    on<GetReviewsEvent>(_onGetReviewsEvent);
    on<UpdateIndexEvent>(_onUpdateIndexEvent);
  }

  final ReviewRepository _reviewRepository;

  FutureOr<void> _onGetReviewsEvent(
    GetReviewsEvent event,
    Emitter<ReviewsState> emit,
  ) {
    List<Review> reviews = _reviewRepository.getReviews();
    print(reviews);

    emit(state.copyWith(reviews: reviews));

    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick(ticks: _duration).listen((duration) =>
        add(UpdateIndexEvent(currentIndex: state.currentReview + 1)));
  }

  FutureOr<void> _onUpdateIndexEvent(
    UpdateIndexEvent event,
    Emitter<ReviewsState> emit,
  ) {
    var infIndex = event.currentIndex.toInt();

    if (infIndex == state.reviews.length) {
      infIndex = 0;
    }

    emit(state.copyWith(currentReview: infIndex));
  }
}
