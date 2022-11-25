import 'package:get/get.dart';
import 'package:society_management/controller/theater_controller.dart';


class TheaterBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => TheaterController());
  }

}