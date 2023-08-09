import 'package:flutter/material.dart';

class CommonElevatedButton extends StatelessWidget {
  const CommonElevatedButton({
    Key? key,
    required this.title,
    required this.onTap,
    required this.backgroundColor,
    required this.color,
  }) : super(key: key);

  final String title;
  final Color color;
  final VoidCallback onTap;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor, // Use the provided background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.6,
              color: color,
              fontSize: 16),
        ),
      ),
    );
  }
}
