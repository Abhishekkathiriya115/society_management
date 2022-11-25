import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:society_management/controller/community_controller.dart';


class CommunityPage extends GetView<CommunityController> {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Community Page'),),
    );
  }
}
