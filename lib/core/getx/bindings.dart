import 'package:get/get.dart';
import 'package:newenglish/data/local_repository.dart';
import 'package:newenglish/domain/usecase/list_locais.dart';
import 'package:newenglish/presentation/controllers/home_ctrl.dart';

class DependencisBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LocalRepository());
    Get.put(ListLocal());
    Get.put(HomeCtrl());
  }
}
