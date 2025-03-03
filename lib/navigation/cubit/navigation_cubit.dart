import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class NavigationState extends Equatable {
  final int currentIndex;

  const NavigationState(this.currentIndex);

  @override
  List<Object?> get props => [currentIndex];
}

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(0));

  void navigateTo(int index) => emit(NavigationState(index));
}
