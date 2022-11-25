import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:society_management/controller/theater_controller.dart';


class TheaterPage extends GetView<TheaterController> {
  const TheaterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Theater Booking'),),
    );
  }
}
