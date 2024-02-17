// income_screen.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:moneymanager_app/providers/income_provider.dart';
import 'package:moneymanager_app/models/income_model.dart';

class IncomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Income'),
      ),
      body: Consumer<IncomeProvider>(
        builder: (context, incomeProvider, _) {
          return ListView.builder(
            itemCount: incomeProvider.incomeList.length,
            itemBuilder: (context, index) {
              final income = incomeProvider.incomeList[index];
              return ListTile(
                title: Text('Amount: ${income.amount.toString()}'),
                subtitle: Text('Type: ${income.type}'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        _editIncome(context, income);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        incomeProvider.deleteIncome(income.id);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addIncome(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _addIncome(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Income'),
          content: Text('Add form fields for amount and type here.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add income logic here
                Provider.of<IncomeProvider>(context, listen: false).addIncome(100, 'Salary');
                Navigator.pop(context);
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  void _editIncome(BuildContext context, Income income) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Income'),
          content: Text('Edit form fields for amount and type here.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Edit income logic here
                Provider.of<IncomeProvider>(context, listen: false).editIncome(income.id, 200, 'Bonus');
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
