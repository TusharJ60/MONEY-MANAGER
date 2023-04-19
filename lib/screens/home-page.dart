import 'package:flutter/material.dart';
import 'package:my_web/pallete.dart';
import 'package:my_web/screens/screens.dart';
import 'package:my_web/widgets/expense_data.dart';
import 'package:my_web/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_web/widgets/expense_data.dart';
import 'package:my_web/widgets/date-time.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final newExpenseNameController = TextEditingController();
  final newExpenseAmountController = TextEditingController();
  //
  get value => null;
  //
  void addNewExpense() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Add New Expense"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: newExpenseAmountController,
                  ),
                  TextField(
                    controller: newExpenseNameController,
                  ),
                ],
              ),
              actions: [
                MaterialButton(
                  onPressed: save,
                  child: Text("Save"),
                ),
                MaterialButton(
                  onPressed: cancel,
                  child: Text("Cancel"),
                ),
              ],
            ));
  }

  void save() {
    ExpenseItem newExpense = ExpenseItem(
      name: newExpenseNameController.text,
      amount: newExpenseAmountController.text,
      dateTime: DateTime.now(),
    );
    Provider.of<ExpenseData>(context, listen: false).addNewExpense(newExpense);
    Navigator.pop(context);
  }

  void cancel() {
    Navigator.pop(context);
    clear();
  }

  void clear() {
    newExpenseNameController.clear();
    newExpenseAmountController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // children: (context, value, child) => Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: addNewExpense,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: value.getAllExpenseList().length,
        itemBuilder: (context, index) => ListTile(
          title: Text(value.getAllExpenseList()[index].name),
          subtitle: Text(value.getAllExpenseList()[index].dateTime.toString()),
          trailing: Text('\$' + value.getAllExpenseList()[index].amount),
        ),
        // )
      ),
    );
  }
}
