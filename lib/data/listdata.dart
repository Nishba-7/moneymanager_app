
import 'package:moneymanager_app/data/one.dart';

List<money> geter() {
  money upwork = money();
  upwork.name = 'upwork';
  upwork.fee = '750';
  upwork.time = 'today';
  upwork.image = 'up.png';
  upwork.buy = false;
  money starbucks = money();
  starbucks.buy = true;
  starbucks.fee = '625';
  starbucks.name = 'starbucks';
  starbucks.image = 'starbucks.png';
  starbucks.time = 'today';
  money transfer = money();
  transfer.buy = true;
  transfer.fee = '250';
  transfer.name = 'tranfer for sayu';
  transfer.image = 'credit.jpg';
  transfer.time = 'today';
  return [upwork, starbucks, transfer, upwork, starbucks, transfer, starbucks];
}
