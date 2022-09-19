import 'package:get/get.dart';
import 'package:newenglish/core/usecase/usecase.dart';
import 'package:newenglish/domain/usecase/list_locais.dart';
import 'package:newenglish/presentation/states/home_state.dart';

class HomeCtrl extends GetxController {

  ListLocal _listLocal = Get.find();

  final _state = HomeState().obs;
  HomeState get state => _state.value;

  Future<void> search() async {
    _state(HomeLoadingState());
    (await _listLocal(NoParams())).fold(
      (failure) => _state(HomeFailureState()), 
      (locais) {
        _state(HomeLoadedState(locais));
      }
    );
  }

}