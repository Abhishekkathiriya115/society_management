import 'package:get/get.dart';
import 'package:society_management/route/route.dart';

import '../resource/image.dart';

class HomeController extends GetxController {
  var count = 0.obs;

  add() {
    count.value += 2;
  }

  sub() {
    if (count.value > 0) {
      count.value -= 2;
    }
  }

  List eventBanner = [
    event1,
    event2,
    event3,
    event4,
    event5,
  ];

  List quickActionImage1 = [
    quick1,
    quick2,
    quick3,
    quick4,
  ];

  List quickActionImage2 = [
    quick6,
    quick5,
    quick4,
    quick3,
  ];


  List quickActionName2 = [
    'Invite Guest',
    'Book Facilities',
    'Raise a Complain',
    'Payment',
  ];

  List quickActionName1 = [
    'Gate Pass',
    'Delivery',
    'cab',
    'service',
  ];

  List quickBookingImage = [
    quick1,
    quick2,
    quick3,
    quick4,
  ];

  List bookingNameList = [
    'Theater','Swiming Pool','Function Hall','Club House'
  ];

  List bookingPage = [
    AppRoute.theaterPage,
    AppRoute.functionHallPage,
    AppRoute.functionHallPage,
    AppRoute.functionHallPage,
    AppRoute.theaterPage,
  ];
}
