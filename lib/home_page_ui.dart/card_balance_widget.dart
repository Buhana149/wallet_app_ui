import 'package:flutter/material.dart';
import 'package:wallet_app_ui/home_page_ui.dart/card_balance.dart';

class CardBalanceWidget extends StatelessWidget {
  final CardBalance card;

  const CardBalanceWidget({super.key, required this.card,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color:card.color, borderRadius: BorderRadius.circular(16)),
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
            Text(card.amount,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                )),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  card.cardNumber,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(card.expiryDate,
                    style: const TextStyle(
                      color: Colors.white,
                    ))
              ],
            )
          ],
        ),
      ),
    );;
  }
}
