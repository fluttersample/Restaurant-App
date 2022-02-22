import 'package:get/get.dart';
import 'package:resaurant_ui/Core/Models/DataResource/repository.dart';
import 'package:resaurant_ui/injection_container.dart';

class HomeController extends GetxController{


  final dataBanner = sl<Repository>().dataBanner.obs;
  final dataPopular = sl<Repository>().dataOtherFood.obs;
  final currentPage = 0.obs;



}