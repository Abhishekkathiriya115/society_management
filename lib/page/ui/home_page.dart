import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:society_management/controller/home_controller.dart';
import 'package:society_management/resource/color.dart';
import 'package:society_management/route/route.dart';
import '../widget/all_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              color:Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 30.0),
                    alignment: Alignment.topCenter,
                    height:Get.width/1.5,
                    decoration:  BoxDecoration(
                        color:mainColor,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.elliptical(80, 20),
                          bottomRight: Radius.elliptical(80, 20),
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          SizedBox(height: Get.width/7),
                          InkWell(
                            onTap: (){
                              Get.toNamed(AppRoute.allProduct);
                            },
                            child: Row(
                              children: [
                                normalTextWidget('Welcome',23,Colors.white),
                                boldTextWidget(' Raj society',23,pinkColor),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Get.width/5),
                  categoryByProduct('Quick Action',controller.moncaseApp,controller.name,controller.names),
                  quickBookings('Quick Bookings', controller.moncaseApp, controller.bookingNameList,),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 20),
                    child: Row(
                      children: [
                        boldTextWidget('My Complaints',23,mainColor),
                        const Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.width/5,
                    width:Get.width/1.1,
                    child: Swiper(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(25))),
                        );
                      },
                      indicatorLayout: PageIndicatorLayout.COLOR,
                      itemCount: controller.categoryImage.length,
                    ),
                  ),
                   Divider(),
                   boldTextWidget('See All Complains', 18, mainColor),
                   SizedBox(height: Get.width/3.5),
                ],
              ),
            ),
            Positioned(
              top: Get.width/2.5,
              right: 0.0,
              left: 0.0,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: SizedBox(
                      height: Get.width/2.3,
                      child: Swiper(
                        itemBuilder: (context, index) {
                          return Image.asset(controller.categoryImage[index], fit: BoxFit.fill);
                        },
                        indicatorLayout: PageIndicatorLayout.COLOR,
                        itemCount: controller.categoryImage.length,
                        pagination: const SwiperPagination(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  categoryByProduct(title,List image,List name,List names) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 20),
          child: Row(
            children: [
              boldTextWidget(title,23,mainColor),
              const Spacer(),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(image.length,
                      (index) => InkWell(
                    onTap: (){
                      Get.toNamed(AppRoute.detailPage,arguments:image[index] );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Hero(
                              tag: image[index],
                              child: Container(
                                  height: Get.width/5,
                                  width:Get.width/5,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                      borderRadius: BorderRadius.circular(25),
                                      // image:  DecorationImage(image: AssetImage(image[index]))
                                  )),
                            ),
                          ),
                          const SizedBox(height: 15),
                          normalTextWidget(name[index], 15, mainColor),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
        const SizedBox(height: 25),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(image.length,
                      (index) => InkWell(
                    onTap: (){
                      Get.toNamed(AppRoute.detailPage,arguments:image[index] );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Hero(
                              tag: image[index],
                              child: Container(
                                  height: Get.width/5,
                                  width:Get.width/5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      // image:  DecorationImage(image: AssetImage(image[index]))
                                  )),
                            ),
                          ),
                          const SizedBox(height: 15),
                          normalTextWidget(names[index], 15, mainColor),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        )
      ],
    );
  }

  quickBookings(title,List image,List name,){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 20),
          child: Row(
            children: [
              boldTextWidget(title,23,mainColor),
              const Spacer(),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(image.length,
                      (index) => InkWell(
                    onTap: (){
                      Get.toNamed(AppRoute.theaterPage);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Hero(
                              tag: image[index],
                              child: Container(
                                  height: Get.width/5,
                                  width:Get.width/5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    // image:  DecorationImage(image: AssetImage(image[index]))
                                  )),
                            ),
                          ),
                          const SizedBox(height: 15),
                          normalTextWidget(name[index], 15, mainColor),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        )
      ],
    );
  }

}
