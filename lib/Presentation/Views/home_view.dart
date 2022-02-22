import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:resaurant_ui/Core/Helpers/styles.dart';
import 'package:resaurant_ui/Core/Models/Model/home_data_banner.dart';
import 'package:resaurant_ui/Core/Models/Model/other_food_model.dart';
import 'package:resaurant_ui/Presentation/Bindings/detail_binding.dart';
import 'package:resaurant_ui/Presentation/Controllers/home_controller.dart';
import 'package:resaurant_ui/Presentation/Views/detail_vew.dart';

class HomeView extends GetView<HomeController>
{
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Styles.scaffoldBackground,
       systemOverlayStyle:  SystemUiOverlayStyle(
         statusBarColor: Colors.yellow.shade800
       ),
       toolbarHeight: 80,
       elevation: 0,
       title: const Text('Restaurant App',
       style: TextStyle(
         fontSize: 22,
         fontWeight: FontWeight.bold
       ),),
       centerTitle: true,


     ),
     body: SingleChildScrollView(
       physics: const BouncingScrollPhysics(),
       child: Column(
         mainAxisSize: MainAxisSize.max,
         children: [
           buildSearch(),
           SizedBox(
             height: 300,
             width: double.infinity,
             child: Stack(
               children: [
                 PageView.builder(
                   allowImplicitScrolling: true ,
                   onPageChanged: (value) {
                     controller.currentPage.value = value;
                   },
                   physics: const BouncingScrollPhysics(),
                   itemCount: controller.dataBanner.length,
                     itemBuilder: (context, index) {
                     final data = controller.dataBanner[index];
                       return  _itemBanner(data,index);
                     },),
                 Obx(
                     ()=> Positioned(
                       bottom: 20,
                       right: 40,
                       child: _indicator()),
                 ),

               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 30,left: 20,
             right: 20),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   'Most Popular',
                   style: Styles.txtTitle.
                   copyWith(fontSize: 20),
                 ),
                 const Icon(Icons.more_horiz,
                 color: Colors.black45,
                 size: 28,),

               ],
             ),
           ),
           ListView.builder(
             shrinkWrap: true,
             padding: const EdgeInsets.only(bottom: 15),
             physics: const NeverScrollableScrollPhysics(),
             itemCount: controller.dataPopular.length,
             itemExtent:200 ,
             itemBuilder: (context, index) {
               final data = controller.dataPopular[index];
               return itemPopular(data,index);
             },)

         ],
       ),
     ),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     floatingActionButton: FloatingActionButton(
       onPressed: () {  },
       backgroundColor: Colors.yellow.shade800,
       child: const Icon(Icons.add,
         color: Colors.white,
           size: 30,
       ),
       elevation: 0.0,
     ),
     bottomNavigationBar: BottomAppBar(
       child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(30)
         ),
         margin: EdgeInsets.only(left: 15.0, right: 15.0),
         child: Row(
           mainAxisSize: MainAxisSize.max,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             IconButton(
               onPressed: () {
               },
               iconSize: 40.0,
               icon: Icon(
                 Icons.home,
                 //darken the icon if it is selected or else give it a different color
                 color: Colors.yellow.shade800
               ),
             ),
             IconButton(
               onPressed: () {
               },
               iconSize: 35.0,
               icon: Icon(
                 Icons.bookmark_border,
                 color:  Colors.grey.shade400,
               ),
             ),
             //to leave space in between the bottom app bar items and below the FAB
             SizedBox(
               width: 40.0,
             ),
             IconButton(
               onPressed: () {
               },
               iconSize: 35.0,
               icon: Icon(
                 Icons.notifications_none_sharp,
                 color:  Colors.grey.shade400,
               ),
             ),
             IconButton(
               onPressed: () {

               },
               iconSize: 35.0,
               icon: Icon(
                 Icons.person_outline,
                 color: Colors.grey.shade400,
               ),
             ),
           ],
         ),
       ),
       shape: CircularNotchedRectangle(),
       //color of the BottomAppBar
       color: Colors.white,
     ),
   );
  }
  Widget itemPopular(OtherFoodModel data,int index)
  {
    return InkWell(
      onTap: () => Get.to( DetailView(
        index: index,
        urlImage: data.urlImage!,
      ),binding: DetailBinding()),
      child: Container(
        margin: const EdgeInsets.only(right: 20,left: 20,top: 20),
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          child: Row(
            children: [
              Hero(
                tag: index,
                child: Image.asset(data.urlImage!,
                width: 170,
                height: 150,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data.title.toString(),
                  style: Styles.txtTitle,),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(data.name.toString(),
                  style: Styles.txtSubTitle.copyWith(
                    color: Colors.black
                  ),),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Baseline(
                        baseline: 15,
                        baselineType:TextBaseline.ideographic,
                        child: Text(
                          "\$"+data.priceDiscounted.toString(),
                          style: Styles.txtTitle,
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Text("\$"+data.price.toString(),
                      style: Styles.txtSubTitle
                          .copyWith(
                        decoration: TextDecoration.lineThrough,

                      ),)
                    ],
                  )



                ],
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 30,
                      right: 30,
                  top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: Column(
                          children: [
                            Icon(Icons.star_half,
                            color: Colors.yellow.shade800,),
                            const Text('4',
                            style: TextStyle(
                              color: Colors.black
                            ),)
                          ],
                        ),
                      ),
                      LikeButton(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            isLiked?Icons.favorite : Icons.favorite_border,
                            color: isLiked ? Colors.red : Colors.grey,
                            size: 30,

                          );
                        },


                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _indicator()
  {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children:
        [
          for(int i =0 ; i< controller.dataBanner.length; i++)
            if(i==controller.currentPage.value)
              ...[circleIndicator(true)]
          else circleIndicator(false)


        ]
    );
  }
  Widget circleIndicator(bool isActive)
  {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 6),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }

  Widget buildSearch()
  {
    return Container(
      margin: const EdgeInsets.only(right: 15,left: 15,
          top: 10,
          bottom: 10),
      height: 45,
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
            fillColor: Colors.white,
            labelText: 'Search',
            filled: true,

            prefixIcon:   Icon(Icons.search,
              color: Colors.grey.shade600,),
            labelStyle: TextStyle(
              color: Colors.black
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:  BorderSide(
                    color: Colors.grey.shade400,
                    width: 2
                )
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:  BorderSide(
                    color: Colors.grey.shade400,
                    width: 2
                )
            )


        ),
      ),
    );
  }

  Card _itemBanner(HomeDataBannerModel data ,int index)
  {
    return  Card(
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [

            Image.asset(
              data.urlImage!,
              filterQuality: FilterQuality.low,
              height: 300,
              width: 200,
              fit: BoxFit.fill,),

            Positioned(
              bottom: 0,
              height: 80,
              right: 0,
              left: 0,
              child: Container(
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.8),
                    ],
                  ),
                ),

              ),

            ),
            Positioned(
              bottom: 15,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0)+
                    const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.title.toString(),
                      style: Styles.txtTitle.copyWith(color: Colors.white70),),
                    Text(data.places.toString() + " Places",
                      style: Styles.txtSubTitle.copyWith(
                          color: Colors.white60,
                          fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
              ), ),

          ],
        ),
      ),
    );
  }

}