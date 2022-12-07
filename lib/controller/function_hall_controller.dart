import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class FunctionHallController extends GetxController {

  var Time = RxString('').obs;
  var amountSelect = RxInt(0).obs;
  var slotID = RxInt(0).obs;
  DateTime selectedDate = DateTime.now();
  var selectStartDate = ''.obs;
  var selectStartDateFormate =
      DateFormat('yyyy-MM-dd').format(DateTime.now()).obs;

  final selected = "1".obs;

  void setSelected( value){
    selected.value = value;
  }
  List dayOfList = [
    '1',
    '2',
    '3',
    '4',
  ];
  // List movieList = [
  //   'Hiropanti',
  //   'KGF',
  //   'Shiddat',
  //   'Jeel',
  //   'Drishyam 2'
  // ];
  selectStartDates(context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1949, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) selectedDate = picked;
    selectStartDate.value = DateFormat('dd-MM-yyyy').format(selectedDate);
    selectStartDateFormate.value =
        DateFormat('yyyy-MM-dd').format(selectedDate);
    print(selectStartDateFormate.value);
  }
}