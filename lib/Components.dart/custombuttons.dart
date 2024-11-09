/// Import necessary packages
import 'package:flutter/material.dart';

/// Custom button widget.
///
/// Displays a customizable button with label, color, and tap functionality.
class CustomButtons extends StatelessWidget {
  /// Button label.
  final String label;

  /// Custom button color.
  final Color custColor;

  /// Function to call when button is tapped.
  final Function movefunction;

  /// Constructor for CustomButtons widget.
  ///
  /// Requires [label] and [custColor], optionally takes [movefunction].
  const CustomButtons(
      {super.key,
      required this.label,
      required this.movefunction,
      required this.custColor});

  @override

  /// Builds the CustomButtons widget.
  ///
  /// Returns an InkWell widget with customizable appearance.
  Widget build(BuildContext context) {
// Handle tap event
    return InkWell(
      onTap: () {
// Call the move function when tapped
        movefunction();
      },
      child: Container(
// Set button width
        width: 75,

        // Add horizontal and vertical padding
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),

        // Customize button decoration
        decoration: BoxDecoration(
          // Set button color
          color: custColor,

          // Add border radius
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),

        // Center align button content
        child: Center(
          child: Text(
            // Display button label
            '$label',

            // Customize text style
            style: const TextStyle(
                fontSize: 17, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
