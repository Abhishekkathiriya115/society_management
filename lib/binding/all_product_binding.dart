import 'package:get/get.dart';
import 'package:society_management/controller/all_product_controller.dart';

class AllProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllProductController());
  }
}
