import 'package:flutter/material.dart';

class CardBalance extends StatelessWidget {
  final Color? color;
  final String amount;
  final String cardNumber;
  final String expiryDate;
  const CardBalance({
    super.key,
    required this.amount,
    required this.cardNumber,
    required this.expiryDate,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Balance',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  'lib/icons/visa.png',
                  height: 50,
                ),
              ],
            ),
            Text(amount,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                )),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNumber,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(expiryDate,
                    style: const TextStyle(
                      color: Colors.white,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
