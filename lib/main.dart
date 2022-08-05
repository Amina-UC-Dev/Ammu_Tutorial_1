import 'package:ardhra_chechi_tutorial_1/05_08_2022/add_2_numbers.dart';
import 'package:ardhra_chechi_tutorial_1/05_08_2022/counter.dart';
import 'package:ardhra_chechi_tutorial_1/05_08_2022/widgets/appbar.dart';
import 'package:ardhra_chechi_tutorial_1/05_08_2022/widgets/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DrawerWidget(),
    );
  }
}
