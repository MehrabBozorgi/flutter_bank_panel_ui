import 'package:flutter/material.dart';

class ExpandedContainer extends StatelessWidget {
  final String text;
  final int flex;
  final double verticalSized;
  final double size;

  const ExpandedContainer({
    required this.text,
    required this.flex,
    required this.verticalSized,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: verticalSized),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: size,
          ),
        ),
      ),
    );
  }
}