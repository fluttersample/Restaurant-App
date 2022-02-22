import 'package:get/get.dart';

class DetailController extends GetxController{

  RxInt countFood = 1.obs;
  RxDouble priceFood = 30.0.obs;


  void increment () {

    countFood++;
    priceFood.value = countFood.value * 30.0;
  }
  void decrement()
  {
    if(countFood.value ==0) {
      return;
    }
    countFood--;
    priceFood.value -=30.0 ;
  }


}