import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/home_page_ui.dart/app_bar_area.dart';
import 'package:wallet_app_ui/home_page_ui.dart/card_balance.dart';
import 'package:wallet_app_ui/home_page_ui.dart/cards_area.dart';
import 'package:wallet_app_ui/home_page_ui.dart/my_button.dart';
import 'package:wallet_app_ui/home_page_ui.dart/my_list_tile.dart';

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
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[200],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey[500],
                ),
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
                MyButton(
                  imagePath: 'lib/icons/transfer.png',
                  buttonName: 'Send',
                ),
                MyButton(
                  imagePath: 'lib/icons/atm-card.png',
                  buttonName: 'Pay',
                ),
                MyButton(
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
                MyListTile(
                  tileIconPath: 'lib/icons/analysis.png',
                  tileName: 'Statistics',
                  tileDescription: 'Payments and Income',
                ),
                MyListTile(
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
