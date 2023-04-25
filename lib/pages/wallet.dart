import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: GFCard(
          color: Colors.green,
        ),
      ),
      // bottomNavigationBar: const NavBar(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.black,
      //   child: const Icon(
      //     Icons.add,
      //     color: Colors.white70,
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
