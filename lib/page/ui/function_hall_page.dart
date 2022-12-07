import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:society_management/controller/function_hall_controller.dart';
import 'package:society_management/resource/image.dart';
import '../../resource/color.dart';
import '../../route/route.dart';
import '../widget/all_widget.dart';


class FunctionHallPage extends GetView<FunctionHallController> {
  const FunctionHallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Function Hall Booking'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(width:Get.width,height:Get.width/2,child: Image.asset(hall, fit: BoxFit.fill)),
            // smallBoxWidget(controller.movieList),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  normalTextWidget("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", 17, mainColor),
                  const SizedBox(height: 20),
                 Obx(() => Row(
                   children: [
                     selectDateWidget(controller.selectStartDate.value == '' ? 'Select Date' :controller.selectStartDate.value,
                          Icons.calendar_today, () {
                            controller.selectStartDates(context);
                          }),
                     const Spacer(),
                     Container(
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15),
                           color: whiteBlueColor
                         // gradient: gradientColor(),
                       ),
                       child: DropdownButton(
                         underline: const SizedBox(),
                         focusColor: Colors.white,
                         style:  TextStyle(color: mainColor,fontSize: 20,fontWeight: FontWeight.w500),
                         hint: const Text(
                           '1',
                         ),
                         onChanged: (newValue) {
                           controller.setSelected(newValue);
                         },
                         value: controller.selected.value,
                         items: controller.dayOfList.map((selectedType) {
                           return DropdownMenuItem(
                             value: selectedType,
                             child:  Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text(
                                 selectedType,
                               ),
                             ),
                           );
                         }).toList(),
                       ),
                     )
                   ],
                 )),
                  SizedBox(height: 40),
                  kPrimaryButton('Booking Now',(){})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget selectDateWidget(String text, IconData icon, Function fun) {
    return GestureDetector(
      onTap: () async {
        fun();
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: mainColor)),
        child: SizedBox(
            height: 45,
            width: Get.width/1.6,
            child: Row(
              children: [
                Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: boldTextWidget(text, 18, mainColor),
                    )),
                const Spacer(),
                Container(
                    height: 45,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: whiteBlueColor),
                    child: Icon(
                      icon,
                      color: mainColor,
                      size: 30,
                    )),
              ],
            )),
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
