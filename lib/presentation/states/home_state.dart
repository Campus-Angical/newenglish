import 'package:newenglish/domain/entities/local.dart';

class HomeState {}

class HomeLoadingState extends HomeState {}

class HomeFailureState extends HomeState {}

class HomeLoadedState extends HomeState {
  List<Local> locais;
  HomeLoadedState(this.locais);
}