import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeScreenState> {
  HomeCubit() : super(HomeScreenState.landing);

  void landing() {
    emit(HomeScreenState.landing);

    void services() {
      emit(HomeScreenState.services);
    }
  }
}
