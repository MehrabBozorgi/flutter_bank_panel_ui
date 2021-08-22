import 'package:flutter/material.dart';

class CircleAvatar_Widgets extends StatelessWidget {
  final IconData icon;
  final String text;

  const CircleAvatar_Widgets({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey[900],
          child: Icon(
            icon,
            color: Color(0xFFb9e67a),
            size: 30,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}