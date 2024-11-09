// Import necessary packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/mainController.dart';

/// A widget representing a red box.
///
/// This widget is animated and moves based on the custom alignment.
///
/// The animation is handled by the [AnimatedAlign] widget, and the alignment
/// is controlled by the [MainController].
class RedBox extends StatelessWidget {
  /// Constructor for RedBox widget.
  ///
  /// Takes an optional [Key] parameter.
  const RedBox({super.key});

  @override
  /// Builds the RedBox widget.
  ///
  /// Returns an [Obx] widget containing an [AnimatedAlign] widget.
  Widget build(BuildContext context) {
    // Get the MainController instance
    final mainController = Get.find<MainController>();

    // Use Obx to react to changes in the MainController
    return Obx(() {
      // Animate the alignment of the red box
      return AnimatedAlign(
        // Get the current alignment from the MainController
        alignment: mainController.customAlignment.value,
        
        // Set the animation duration to 1 second
        duration: const Duration(seconds: 1),
        
        // Child widget - the red box
        child: Container(
          // Customize the container decoration
          decoration: BoxDecoration(
            // Set the color to red
            color: Colors.red,
            
            // Add a border radius
            borderRadius: BorderRadius.circular(15),
          ),
          
          // Set the height and width of the container
          height: 100,
          width: 100,
        ),
      );
    });
  }
}