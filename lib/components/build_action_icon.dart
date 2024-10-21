import 'package:flutter/material.dart';

// Define the reusable widget
class BuildActionIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const BuildActionIcon({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.purple[50],
          child: Icon(icon, color: Colors.purple),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12),
          textAlign: TextAlign.center, // Align text to the center
          softWrap: true, // Allows text to wrap
          maxLines: 2, // You can limit the number of lines
          overflow: TextOverflow.ellipsis, // If overflow, show ellipsis
        ),
      ],
    );
  }
}
