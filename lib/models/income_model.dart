// income_model.dart

import 'package:hive/hive.dart';
part 'income_model.g.dart';

@HiveType(typeId: 0)
class Income extends HiveObject {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late double amount;

  @HiveField(2)
  late String type;


  Income({
    required this.id,
    required this.amount,
    required this.type,

  });
}
