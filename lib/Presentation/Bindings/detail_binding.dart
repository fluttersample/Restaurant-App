

import 'package:get/get.dart';
import 'package:resaurant_ui/Presentation/Controllers/detail_controller.dart';

class DetailBinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(() =>
        DetailController()
    );
  }

}
