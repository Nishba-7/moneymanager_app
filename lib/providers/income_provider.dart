// income_provider.dart

import 'package:flutter/material.dart';
import 'package:moneymanager_app/models/income_model.dart';

class IncomeProvider extends ChangeNotifier {
  List<Income> _incomeList = [];

  List<Income> get incomeList => _incomeList;

  void addIncome(double amount, String type) {
    final newIncome = Income(
      id: DateTime.now().toString(),
      amount: amount,
      type: type,
    );
    _incomeList.add(newIncome);
    notifyListeners();
  }

  void editIncome(String id, double newAmount, String newType) {
    final index = _incomeList.indexWhere((income) => income.id == id);
    if (index != -1) {
      _incomeList[index] = Income(
        id: id,
        amount: newAmount,
        type: newType,
      );
      notifyListeners();
    }
  }

  void deleteIncome(String id) {
    _incomeList.removeWhere((income) => income.id == id);
    notifyListeners();
  }
}
