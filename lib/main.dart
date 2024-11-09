import 'package:animation_moving_square/Controller/mainController.dart';
import 'package:animation_moving_square/Pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(MainController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Home());
  }
}
