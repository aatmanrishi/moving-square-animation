// Import necessary packages and components
import 'package:animation_moving_square/Components.dart/customAppBar.dart';
import 'package:animation_moving_square/Components.dart/custombuttons.dart';
import 'package:animation_moving_square/Components.dart/stackContianer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/mainController.dart';

/// Home screen widget.
///
/// Displays the main UI, including the custom app bar, stack container, and buttons.
class Home extends StatelessWidget {
  /// Constructor for Home widget.
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the MainController instance
    final mainController = Get.find<MainController>();

    return Scaffold(
      // Custom app bar with preferred size
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: const CustomAppBar(),
      ),
      // Main body with stack container and buttons
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          // Center alignment
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Stack container
            const StackContianer(),
            // Row with buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Left button
                Obx(() {
                  return CustomButtons(
                    // Button color based on leftDisable state
                    custColor: mainController.leftDisable.value
                        ? Colors.black
                        : Colors.redAccent,
                    label: 'LEFT',
                    // Move function based on leftDisable state
                    movefunction: mainController.leftDisable.value
                        ? () {
                            print('Disabled Left');
                          }
                        : mainController.moveLeft,
                  );
                }),
                // Right button
                Obx(() {
                  return CustomButtons(
                    // Button color based on rightDisable state
                    custColor: mainController.rightDisable.value
                        ? Colors.black
                        : Colors.redAccent,
                    label: 'RIGHT',
                    // Move function based on rightDisable state
                    movefunction: mainController.rightDisable.value
                        ? () {
                            print('Disabled Right');
                          }
                        : mainController.moveRight,
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
