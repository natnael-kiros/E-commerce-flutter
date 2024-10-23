// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecom/components/bottom_nav.dart';
import 'package:ecom/pages/cart_page.dart';
import 'package:ecom/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> pages = [ShopPage(), CartPage()];

  void navigateBottomBar(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(),
      body: pages[_selectedIndex],
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('lib/imgs/logo.png')),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        ListTile(
                          leading: Icon(Icons.home),
                          title: Text('Home Page'),
                        ),
                        ListTile(
                          leading: Icon(Icons.home),
                          title: Text('Settings'),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Logout'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar:
          MyBottomNavBar(onTabCange: (index) => navigateBottomBar(index)),
    );
  }
}
