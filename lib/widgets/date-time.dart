import 'package:flutter/material.dart';
import 'package:my_web/pallete.dart';
import 'package:my_web/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_web/widgets/expense_data.dart';

String convertDateTimeToString(DateTime datetime) {
  String year = datetime.year.toString();
  String month = datetime.month.toString();
  if (month.length == 1) {
    month = "0" + month;
  }
  String day = datetime.day.toString();
  if (day.length == 1) {
    day = "0" + day;
  }
  String yyyymmdd = year + month + day;
  return yyyymmdd;
}
