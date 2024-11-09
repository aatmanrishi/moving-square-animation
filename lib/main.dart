/// Import necessary packages
import 'package:animation_moving_square/Controller/mainController.dart';
import 'package:animation_moving_square/Pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Entry point of the application.
void main() {
// Initialize the MainController using GetX
Get.put(MainController());

// Run the MyApp widget
runApp(const MyApp());
}

/// Root widget of the application.
///
/// This widget is responsible for setting up the app's theme and routing.
class MyApp extends StatelessWidget {
/// Constructor for MyApp widget.
const MyApp({super.key});

// This widget is the root of your application.
@override
/// Builds the MyApp widget.
///
/// Returns a GetMaterialApp widget with customized theme and routing.
Widget build(BuildContext context) {
return GetMaterialApp(
// Set app title
title: 'Flutter Demo',

  // Hide debug banner
  debugShowCheckedModeBanner: false,
  
  // Customize app theme
  theme: ThemeData(
    // Set color scheme
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    
    // Enable Material 3 design
    useMaterial3: true,
  ),
  
  // Set home page
  home: const Home(),
);

}
}
