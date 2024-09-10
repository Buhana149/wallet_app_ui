import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String imagePath;
  final String buttonName;
  const ImageButton({
    super.key,
    required this.imagePath,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 90,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 30,
                      spreadRadius: 10,
                    )
                  ]),
              child: Center(
                child: Image.asset(imagePath),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              buttonName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            )
          ],
        )
      ],
    );
  }
}
