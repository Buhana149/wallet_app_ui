import 'package:flutter/material.dart';

class CardBalance {
  final Color? color;
  final String amount;
  final String cardNumber;
  final String expiryDate;
  const CardBalance({
    
    required this.amount,
    required this.cardNumber,
    required this.expiryDate,
    required this.color,
  });


}
