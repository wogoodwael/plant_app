import 'package:flutter/material.dart';

class CustomIconsRow extends StatelessWidget {
  const CustomIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.phone, color: Colors.white),
        Icon(Icons.email, color: Colors.white),
        Icon(Icons.home, color: Colors.white),
      ],
    );
  }
}
