import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropPopup extends StatelessWidget {
  const BackdropPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      // Blurs the background
      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
      child: Container(
        color: Colors.black.withOpacity(0.1),
        child: AlertDialog(
          shape: const RoundedRectangleBorder(
            // Rounded corners
            borderRadius: const BorderRadius.all(
              const Radius.circular(25),
            ),
          ),
          title: Center(child: Text('message')), // What the text will be
          actions: [
            ElevatedButton(
              // Using the style we made
              onPressed: () {
                Navigator.pop(context); // Allows the user to close the popup
              },
              child: const Text('Close'), // Text inside the button
            ),
          ],
        ),
      ),
    );
  }
}
