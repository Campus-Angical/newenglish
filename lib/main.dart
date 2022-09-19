import 'package:newenglish/core/getx/bindings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:newenglish/presentation/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    initialBinding: DependencisBinding(),
    home: HomePage(),
  ));
}
