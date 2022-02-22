
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:resaurant_ui/Core/Helpers/styles.dart';
import 'package:resaurant_ui/Presentation/Controllers/detail_controller.dart';
import 'package:resaurant_ui/gen/assets.gen.dart';

class DetailView extends GetView<DetailController>
{
  const DetailView({required this.urlImage, required this.index, Key? key}) : super(key: key);
  final String urlImage;
  final int index;
  @override
  Widget build(BuildContext context) {
    const String text= 'The term pizza was first recorded in the 10th century in a Latin manuscript from the Southern Italian town of Gaeta in Lazio, on the border with Campania , odern pizza was invented in Naples, and the dish and .';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.searchBackground,
        elevation: 0,
        toolbarHeight: 40,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_outlined,
            size: 30,),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 380,
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                        color: Styles.searchBackground,
                        height: 320,
                      )
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    child: Hero(
                      tag: index,
                      child: Image.asset(
                        urlImage,
                        height: 280,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    left: 15,
                    child: SizedBox(
                      width: 185,
                      height: 70,
                      child: Card(
                        elevation: 2,
                        shadowColor: Colors.yellow,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: _rowImages(),
                      ),
                    ),
                  ),

                  Positioned(
                    right: 50,
                      bottom: 30,
                      child: Container(
                        height: 65,
                        width: 65,
                        decoration: const BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(left: 3),
                          child: LikeButton(
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            likeBuilder: (isLiked) =>
                                Icon(
                                  isLiked?Icons.favorite : Icons.favorite_border,
                                  color: isLiked ? Colors.black : Colors.white,
                                  size: 30,

                                ) ,
                          ),
                        ),
                      ))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30,
              right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInUp(
                    delay: Duration(milliseconds: 200),
                    child: Text('Pepper',
                    style: Styles.txtTitle.copyWith(
                      fontSize: 30
                    ),),
                  ),
                  const SizedBox(height: 20,),

                  FadeInUp(
                    delay: Duration(milliseconds: 500),

                    child: Text(text,
                    style: Styles.txtSubTitle.copyWith(
                      fontSize: 20,
                    ),),
                  ),
                  const SizedBox(height: 20,),
                  FadeInUp(
                    delay: Duration(
                      milliseconds: 600
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Delivery'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Free',
                            style: Styles.txtTitle,)
                          ],
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Delivery'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('10:00am-11:00pm',
                              style: Styles.txtTitle,)
                          ],
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 40,),
                  
                  FadeInUp(
                    delay: Duration(
                      milliseconds: 700
                    ),
                    child: Text('Comment',
                    style: Styles.txtTitle.copyWith(
                      fontSize: 28
                    ),),
                  ),
                  const SizedBox(height: 20,),
                  itemComment()
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomWidget()
    );
  }


  Widget _rowImages()
  {
    return SizedBox(
      height: 60,
      width: 160,

      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          _itemRowImage(
            left: 60,
            image: Assets.images.user3,),
          _itemRowImage(
            left: 35,
            image: Assets.images.user2,),
          _itemRowImage(
            left: 8,
           image: Assets.images.user1,),
          Positioned(
            right: 7,
              child: Row(
                children: [
                  Text('4.5',
                  style: Styles.txtTitle,),
                  Icon(Icons.star_half,
                  color: Colors.yellow.shade800,
                  size: 28,)
                ],
              ))
        ],
      ),
    );
  }

  Widget _itemRowImage({required AssetGenImage image,
    required double left, double? right})
  {
    return Positioned(
      left: left,
        right: right,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(),
              image: DecorationImage(
                  image: image,
                  fit: BoxFit.fill
              )

          ),
        ),);
  }

  Widget itemComment()
  {
    return FadeInUp(
      delay: Duration(
        milliseconds: 800
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.red,
                maxRadius: 30,
                backgroundImage: Assets.images.user1,
              ),
              Container(
                margin: EdgeInsets.only(left: 10,
                bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.
                      only(left: 3),
                      child: Text('Angelina'),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        for(int i=0; i<5;i++)
                          Icon(Icons.star,
                          color: Colors.yellow.shade800,
                          size: 16,)
                      ],
                    )
                  ],
                ),
              ),
              const Spacer(),

              Container(
                margin: EdgeInsets.only(bottom: 10),
                  child: Text('Aug 12 , 2019'))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
            style: Styles.txtSubTitle,
          )
        ],
      ),
    );
  }

  Widget _buildBottomWidget()
  {
    return FadeInRight(
      delay: const Duration(
        seconds: 1
      ),
      child: Container(
        height: 80,
        margin: const EdgeInsets.only(right: 15,
            left: 15,
            bottom: 10),
        decoration: BoxDecoration(
            color: Colors.yellow.shade800,

            borderRadius: BorderRadius.circular(30)
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 30,
              right: 30),
          child: Row(
            children: [
              Obx(
              ()=> Text(
                  '\$'+controller.priceFood.value.toString(),
                  style: Styles.txtTitle.copyWith(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    padding: const EdgeInsets.only(left: 15,
                        right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => controller.decrement(),
                          child: SizedBox(
                            height: 40,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 20,
                                  height: 2,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        Obx(
                          ()=> Text(controller.countFood.value.toString(),
                            style: Styles.txtTitle.copyWith(
                                color: Colors.white
                            ),),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () => controller.increment(),
                          child: SizedBox(
                            height: 40,
                            child: Stack(
                              alignment: Alignment.center,
                              children: const [
                                Icon(Icons.add,
                                  color: Colors.white,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                    ),
                    child: Icon(Icons.shopping_basket_outlined,
                        color:Colors.yellow.shade800),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}