import 'package:get/get.dart';
import 'package:society_management/controller/function_hall_controller.dart';


class FunctionHallBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => FunctionHallController());
  }

}