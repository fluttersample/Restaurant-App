
import 'package:resaurant_ui/Core/Models/DataResource/data_resource.dart';
import 'package:resaurant_ui/Core/Models/Model/home_data_banner.dart';
import 'package:resaurant_ui/Core/Models/Model/other_food_model.dart';
import 'package:resaurant_ui/Core/Models/Model/popular_model.dart';
import 'package:resaurant_ui/gen/assets.gen.dart';

 class Repository extends DataResource
{
  @override
  List<HomeDataBannerModel> get dataBanner {
    return [
      HomeDataBannerModel(urlImage: Assets.images.imgBanner4.path,
          title: 'Thai Style',
          places: 4),
      HomeDataBannerModel(urlImage: Assets.images.imgBanner1.path,
          title: 'Pizza',
          places: 12),
      HomeDataBannerModel(urlImage: Assets.images.imgBanner2.path,
          title: 'Burger',
          places: 9),
      HomeDataBannerModel(urlImage: Assets.images.imgBanner3.path,
          title: 'Kebab',
          places: 5),


    ];
  }

  // @override
  // List<PopularModel> get dataPopular {
  //   return [
  //     PopularModel(
  //         imgUrl: Assets.images.item2.path,
  //         name: 'Pies',
  //         subTitle1: 'Queen Street',
  //         subTitle2: '53 Lodgeville Road'
  //     ),
  //     PopularModel(
  //         imgUrl: Assets.images.item3.path,
  //         name: 'Chops & Hops',
  //         subTitle1: 'Queen Street',
  //         subTitle2: '512 Columbia Road'
  //     ),    PopularModel(
  //         imgUrl: Assets.images.item4.path,
  //         name: 'Blazing',
  //         subTitle1: 'Queen Street',
  //         subTitle2: '53 Lodgeville Road'
  //     ),
  //     PopularModel(
  //         imgUrl: Assets.images.item5.path,
  //         name: 'Pies',
  //         subTitle1: 'Queen Street',
  //         subTitle2: '53 Lodgeville Road'
  //     ),
  //
  //   ];
  // }

  @override
  List<OtherFoodModel> get dataOtherFood {
    return [
      OtherFoodModel(
          urlImage: Assets.images.imgPizza1.path,
          title: 'Pepper',
          name: 'Mixed Pizza',
          price: 169,
          priceDiscounted: 129

      ),
      OtherFoodModel(
          urlImage: Assets.images.imgBurger1.path,
          title: 'Burger',
          name: 'Cheese Burger',
          price: 140,
          priceDiscounted: 85

      ),
      OtherFoodModel(
          urlImage: Assets.images.imgHotdog1.path,
          title: 'Hot Dog',
          name: 'Simple',
          price: 70,
          priceDiscounted: 50

      ),
      OtherFoodModel(
          urlImage: Assets.images.imgKebab1.path,
          title: 'Kebab',
          name: 'Kubideh kebab',
          price: 70,
          priceDiscounted: 50

      ),
      OtherFoodModel(
          urlImage: Assets.images.imgMix1.path,
          title: 'Sandwich',
          name: 'Sandwich Mixed',
          price: 110,
          priceDiscounted: 97

      ),
      OtherFoodModel(
          urlImage: Assets.images.imgPizza2.path,
          title: 'Chicago Pizza',
          name: 'Mixed Pizza',
          price: 220,
          priceDiscounted: 189

      ),
      OtherFoodModel(
          urlImage: Assets.images.imgBurgerKoka.path,
          title: 'Beef Burgers',
          name: 'Mixed',
          price: 110,
          priceDiscounted: 97

      ),
      OtherFoodModel(
          urlImage: Assets.images.imgKebab2.path,
          title: 'Chicken Barbecue',
          name: 'Mixed',
          price: 332,
          priceDiscounted: 280

      ),



    ];
  }

  @override
  // TODO: implement dataPopular
  List<PopularModel> get dataPopular => throw UnimplementedError();

}
