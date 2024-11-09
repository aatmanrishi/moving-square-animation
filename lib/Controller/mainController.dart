import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Controller for managing the main UI.
class MainController extends GetxController {
  /// Reactive variable for custom alignment, initially set to Alignment.center.
  Rx<Alignment> customAlignment = Rx<Alignment>(Alignment.center);

  /// Boolean reactive variable indicating whether left movement is disabled.
  RxBool leftDisable = false.obs;

  /// Boolean reactive variable indicating whether right movement is disabled.
  RxBool rightDisable = false.obs;

  /// Moves the alignment to the left.
  ///
  /// Disables left and right movements temporarily and updates the alignment.
  /// After a 1-second delay, re-enables right movement.
  void moveLeft() {
    rightDisable.value = true;
    leftDisable.value = true;
    customAlignment.value = Alignment.centerLeft;
    Future.delayed(const Duration(seconds: 1), () {
      rightDisable.value = false;
    });
  }

  /// Moves the alignment to the right.
  ///
  /// Disables left and right movements temporarily and updates the alignment.
  /// After a 1-second delay, re-enables left movement.
  void moveRight() {
    leftDisable.value = true;
    rightDisable.value = true;
    customAlignment.value = Alignment.centerRight;
    Future.delayed(const Duration(seconds: 1), () {
      leftDisable.value = false;
    });
  }
}