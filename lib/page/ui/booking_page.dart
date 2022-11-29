import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:society_management/controller/booking_controller.dart';
import 'package:society_management/page/widget/all_widget.dart';




class BookingPage extends GetView<BookingController> {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Theater'),
    );
  }
}
