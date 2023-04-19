import 'package:flutter/material.dart';
import 'package:my_web/pallete.dart';
import 'package:my_web/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_web/widgets/date-time.dart';

class ExpenseItem {
  final String name;
  final String amount;
  final DateTime dateTime;
  ExpenseItem({
    required this.name,
    required this.amount,
    required this.dateTime,
  });
}

class ExpenseData extends ChangeNotifier {
  List<ExpenseItem> overallExpenseList = [];

  DateTime? dateTime;
  String amount = "";
// var newExpense = ExpenseData();
// newExpense.dateTime = DateTime.now();
// newExpense.amount = "10.0";
// addNewExpense(newExpense);

  // DateTime get dateTime => _dateTime;
  List<ExpenseItem> getAllExpenseList() {
    return overallExpenseList;
  }

  void addNewExpense(ExpenseItem newExpense) {
    overallExpenseList.add(newExpense);
    notifyListeners();
  }

  void deleteExpense(ExpenseItem expense) {
    overallExpenseList.remove(expense);
    notifyListeners();
  }

  String getDayName(DateTime dateTime) {
    switch (dateTime.weekday) {
      case 1:
        return "Monday";
      case 2:
        return "Tuesday";
      case 3:
        return "Wednesday";
      case 4:
        return "Thursday";
      case 5:
        return "Friday";
      case 6:
        return "Saturday";
      case 7:
        return "Sunday";
      default:
        return "";
    }
  }

  DateTime startofWeekDate() {
    DateTime? startOfWeek;

    DateTime today = DateTime.now();

    for (int i = 0; i < 7; i++) {
      if (getDayName(today.subtract(Duration(days: i))) == "Sunday") {
        startOfWeek = today.subtract(Duration(days: i));
      }
    }
    return startOfWeek!;
  }

  Map<String, double> calculateDailyExpenseSummary() {
    Map<String, double> dailyExpensesSummary = {};

    for (var expenses in overallExpenseList) {
      // String date = convertDateTimeToString(expenses.dateTime);
      // String date = expenses.dateTime != null
      //     ? convertDateTimeToString(expenses.dateTime!)
      //     : "";
      String date = convertDateTimeToString(expenses.dateTime);

      // var amount;
      double amount = double.parse(expenses.amount);
      if (dailyExpensesSummary.containsKey(date)) {
        double currentAmount = dailyExpensesSummary[date]!;
        currentAmount += amount;
        dailyExpensesSummary[date] = currentAmount;
      } else {
        dailyExpensesSummary.addAll({date: amount});
      }
    }
    return dailyExpensesSummary;
  }
}
  // Map<String, double> calculateDailyExpenseSummary() {
  //   Map<String, double> dailyExpensesSummary = {

  //   };
  //   for (var expenses in overallExpenseList) {
  //     String date = convertDateTimeToString(expenses.DateTime);
  //     // var amount;
  //     double amount = double.parse(expenses.amount);
  //     if (dailyExpensesSummary.containsKey(date)) {
  //       double currentAmount = dailyExpensesSummary[date]!;
  //       currentAmount += amount;
  //       dailyExpensesSummary[date] = currentAmount;
  //     } else {
  //       dailyExpensesSummary.addAll({date: amount});
  //     }
  //   }
  //   return dailyExpensesSummary;
  // }
// void addNewExpense(ExpenseItem newExpense) {
//   overallExpenseList.add(newExpense);
// }

// void deleteExpense(ExpenseItem expense) {
//   overallExpenseList.remove(expense);
// }

// String getDayName(DateTime dateTime) {
//   switch (dateTime.weekday) {
//     case 1:
//       return "Monday";
//     case 2:
//       return "Tuesday";
//     case 3:
//       return "Wednesday";
//     case 4:
//       return "Thursday";
//     case 5:
//       return "Friday";
//     case 6:
//       return "Saturday";
//     case 7:
//       return "Sunday";
//     default:
//       return "";
//   }
// }

// DateTime startofWeekDate() {
//   DateTime? startOfWeek;

//   DateTime today = DateTime.now();

//   for (int i = 0; i < 7; i++) {
//     if (getDayName(today.subtract(Duration(days: i))) == "Sunday") {
//       startOfWeek = today.subtract(Duration(days: i));
//     }
//   }
//   return startOfWeek;
// }

// Map<String, double> calculateDailyExpensesSummary() {
//   Map<String, double> dailyExpensesSummary = {};
//   for (var expense in overallExpenseList) {
//     String date = convertDateTimeToString(expense.dateTime);
//     double amount = double.parse(expense.amount);
//     if (dailyExpensesSummary.containsKey(date)) {
//       double currentAmount = dailyExpensesSummary[date]!;
//       currentAmount += amount;
//           dailyExpensesSummary[date] = currentAmount;
//     } else {
//       dailyExpensesSummary.addAll({date:amount});
//     }
//     return dailyExpensesSummary;
//   }
// }
