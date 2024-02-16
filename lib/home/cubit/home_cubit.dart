import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeScreenState> {
  HomeCubit() : super(HomeScreenState.services);

  void setLanding() {
    emit(HomeScreenState.landing);
  }

  void setServices() {
    emit(HomeScreenState.services);
  }
}
