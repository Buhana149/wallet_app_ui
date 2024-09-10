import 'package:flutter/material.dart';

class NavBarIconbutton extends StatelessWidget {
  final IconData? icon;
  final Color? color;
  Function()? onPressed;
   NavBarIconbutton({
    super.key,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 32,
          color: color,
        ));
  }
}
