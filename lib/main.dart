import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:moneymanager_app/models/add_date.dart';
import 'package:moneymanager_app/widgets/bottomnavBar.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money manager App',
      debugShowCheckedModeBanner: false,
      home:  Bottom(),
    );
  }
}
