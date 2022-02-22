

import 'package:resaurant_ui/Core/Models/Model/home_data_banner.dart';
import 'package:resaurant_ui/Core/Models/Model/other_food_model.dart';
import 'package:resaurant_ui/Core/Models/Model/popular_model.dart';

abstract class DataResource{

   List<HomeDataBannerModel> get dataBanner ;
   List<PopularModel> get dataPopular;
   List<OtherFoodModel> get dataOtherFood;

}
