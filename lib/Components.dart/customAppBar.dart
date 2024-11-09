/// Import necessary packages
import 'package:flutter/material.dart';

/// Custom app bar widget.
///
/// Displays a customized app bar with a title.
class CustomAppBar extends StatelessWidget {
  /// Constructor for CustomAppBar widget.
  const CustomAppBar({super.key});

  @override

  /// Builds the CustomAppBar widget.
  ///
  /// Returns an AppBar widget with customized appearance.
  Widget build(BuildContext context) {
// Create a custom app bar
    return AppBar(
// Set app bar background color
      backgroundColor: Colors.black,

      // Set app bar title
      title: Text(
        // Title text
        'Moving Square Animation',

        // Customize title text style
        style: const TextStyle(
          // Text color
          color: Colors.white,

          // Font weight
          fontWeight: FontWeight.w700,

          // Letter spacing
          letterSpacing: 1,
        ),
      ),
    );
  }
}
