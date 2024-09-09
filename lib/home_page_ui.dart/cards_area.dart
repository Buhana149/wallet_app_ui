import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/home_page_ui.dart/card_balance.dart';

class CardsArea extends StatefulWidget {
  const CardsArea({super.key});

  @override
  State<CardsArea> createState() => _CardsAreaState();
}

class _CardsAreaState extends State<CardsArea> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            children: [
              CardBalance(
                color: Colors.purple[300],
                amount: '\$5,250.20',
                cardNumber: '**** 3456',
                expiryDate: '10/24',
              ),
              CardBalance(
                amount: '\$5,250.80',
                cardNumber: '**** 1234',
                expiryDate: '11/24',
                color: Colors.blue[300],
              ),
              CardBalance(
                amount: '\$6,330.80',
                cardNumber: '**** 4321',
                expiryDate: '01/25',
                color: Colors.red[300],
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),
        const SizedBox(height: 25),
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
          effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
        ),
      ],
    );
  }
}
