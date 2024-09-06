import 'package:flutter/material.dart';

class AppBarArea extends StatelessWidget {
  const AppBarArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Text(
                'My',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Cards',
                style: TextStyle(fontSize: 28),
              ),
            ],
          ),
          Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.grey[400], shape: BoxShape.circle),
              child: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
