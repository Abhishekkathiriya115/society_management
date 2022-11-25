import 'package:get/get.dart';
import 'package:society_management/controller/community_controller.dart';

class CommunityBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => CommunityController());
  }

}