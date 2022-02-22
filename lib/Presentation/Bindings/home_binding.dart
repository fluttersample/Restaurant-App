

import 'package:get/get.dart';
import 'package:resaurant_ui/Presentation/Controllers/home_controller.dart';

class HomeBinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() =>
    HomeController()
    );
  }

}
