import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ''
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: ''
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: ''
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: ''
        ),
      ]),
    );
  }
}
