import 'package:get/get.dart';
import 'package:society_management/controller/booking_controller.dart';

class BookingBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => BookingController());
  }

}