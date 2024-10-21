import 'package:flutter/material.dart';

class MoneyVisibilityToggle extends StatefulWidget {
  final double amount; // Money amount to display
  final bool isVisible; // Pass visibility state
  final VoidCallback toggleVisibility; // Callback to toggle visibility

  const MoneyVisibilityToggle({
    required this.amount,
    required this.isVisible,
    required this.toggleVisibility,
    Key? key,
  }) : super(key: key);

  @override
  _MoneyVisibilityToggleState createState() => _MoneyVisibilityToggleState();
}

class _MoneyVisibilityToggleState extends State<MoneyVisibilityToggle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Money display (hidden or shown)
        Text(
          widget.isVisible
              ? '\$${widget.amount.toStringAsFixed(2)}'
              : '******', // Mask if hidden
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 8), // Spacing between text and icon
        // Icon button to toggle visibility
        IconButton(
          icon: Icon(
            widget.isVisible ? Icons.visibility : Icons.visibility_off,
          ), // Change icon
          onPressed: widget.toggleVisibility, // Trigger parent toggle function
        ),
      ],
    );
  }
}
