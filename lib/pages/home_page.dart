import 'package:flutter/material.dart';
import 'package:wallet_app_ui/home_page_ui.dart/app_bar_area.dart';

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
      body: const SafeArea(
          child: Column(
        children: [
          AppBarArea(),
        ],
      )),
    );
  }
}
