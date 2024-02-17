// ignore_for_file: non_constant_identifier_names

import 'package:moneymanager_app/data/one.dart';

List<money> geter_top() {
  money snapFood = money();
  snapFood.time = 'jan 30 2023';
  snapFood.image = 'mac.png';
  snapFood.buy = true;
  snapFood.fee = '_\$100';
  snapFood.name = 'macDonald';
  money snap = money();
  snap.image = 'credit.jpg';
  snap.time = 'today';
  snap.buy = true;
  snap.name = 'transfer';
  snap.fee = '_\$60';

  return [snapFood, snap];
}
