import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:society_management/controller/theater_controller.dart';
import 'package:society_management/resource/image.dart';
import '../../resource/color.dart';
import '../../route/route.dart';
import '../widget/all_widget.dart';


class TheaterPage extends GetView<TheaterController> {
  const TheaterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Theater Booking'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(event3),
            smallBoxWidget(controller.movieList),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  normalTextWidget("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", 17, mainColor),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GridView.builder(
                        itemCount: 6,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 3 / 1.5,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return  GestureDetector(
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(10.0)),
                              color: mainColor,
                              child: Container(
                                width:
                                MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5.0, vertical: 5.0),
                                child: const Center(
                                  child: Text(
                                    '02:00',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color:Colors.white,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  smallBoxWidget(List<dynamic> name) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(name.length,
                  (index) => InkWell(
                onTap: (){
                  Get.toNamed(AppRoute.theaterPage);
                },
                child: Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: mainColor),
                      borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: normalTextWidget(name[index], 15, mainColor),
                  ),
                ),
              )),
        ],
      ),
    );
  }

}
