import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/home_page_ui.dart/app_bar_area.dart';
import 'package:wallet_app_ui/home_page_ui.dart/card_balance.dart';
import 'package:wallet_app_ui/home_page_ui.dart/cards_area.dart';
import 'package:wallet_app_ui/home_page_ui.dart/my_button.dart';
import 'package:wallet_app_ui/home_page_ui.dart/analytics_tile.dart';
import 'package:wallet_app_ui/home_page_ui.dart/nav_bar_iconbutton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavBarIconbutton(
                icon: Icons.home,
                color: Colors.pink[200],
                onPressed: () {},
              ),
              NavBarIconbutton(
                icon: Icons.settings,
                color: Colors.grey[500],
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: const SafeArea(
          child: Column(
        children: [
          AppBarArea(),
          CardsArea(),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageButton(
                  imagePath: 'lib/icons/transfer.png',
                  buttonName: 'Send',
                ),
                ImageButton(
                  imagePath: 'lib/icons/atm-card.png',
                  buttonName: 'Pay',
                ),
                ImageButton(
                  imagePath: 'lib/icons/bill.png',
                  buttonName: 'Bills',
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              children: [
                AnalyticsTile(
                  tileIconPath: 'lib/icons/analysis.png',
                  tileName: 'Statistics',
                  tileDescription: 'Payments and Income',
                ),
                AnalyticsTile(
                  tileIconPath: 'lib/icons/transaction.png',
                  tileName: 'Transactions',
                  tileDescription: 'Transaction History',
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
