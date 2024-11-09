// Import necessary packages and components
import 'package:animation_moving_square/Components.dart/redbox.dart';
import 'package:flutter/material.dart';

/// A widget representing a stacked container.
///
/// Displays a container with a red box inside, used for animation purposes.
class StackContianer extends StatelessWidget {
  /// Constructor for StackContianer widget.
  const StackContianer({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      // Set minimum width constraint
      constraints: const BoxConstraints(minWidth: 400),
      child: Container(
        // Calculate width based on screen size
        width: MediaQuery.of(context).size.width * 0.9,
        height: 300,
        // Add padding and margin
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.fromLTRB(20, 20, 20, 50),
        // Customize container decoration
        decoration: BoxDecoration(
          color: Colors.amber[50],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.black, width: 0.25),
        ),
        // Add RedBox as child
        child: RedBox(),
      ),
    );
  }
}
