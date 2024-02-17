// expense_model.dart

import 'package:hive/hive.dart';

part 'expense_model.g.dart';

@HiveType(typeId: 1)
class Expense extends HiveObject {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late double amount;

  @HiveField(2)
  late String type;

  @HiveField(3)
  late DateTime date;

  Expense({
    required this.id,
    required this.amount,
    required this.type,
    required this.date,
  });
}
