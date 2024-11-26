import 'package:flutter/material.dart';

import 'menu_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Craven Menu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MainMenu(),
    );
  }
}

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  MainMenuState createState() => MainMenuState();
}

class MainMenuState extends State<MainMenu> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    TodayMenu(),
    UpcomingMenu(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text('Craven Menu'),
        centerTitle: true,
        backgroundColor: Colors.black54,
        titleTextStyle: const TextStyle(
          fontFamily: "RobotoMono",
          fontSize: 36.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black54,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.today),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upcoming),
            label: 'Upcoming',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[400],
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class TodayMenu extends StatelessWidget {
  const TodayMenu({super.key});

  @override
  Widget build(BuildContext context) {
    const double margins = 16.0;
    return const Padding(
      padding: EdgeInsets.all(margins),
      child: Column(
        children: [
          MenuItem(content: "Soup", type: "Main", enabled: true),
          SizedBox(height: margins),
          MenuItem(content: "Chicken", type: "Side", enabled: true),
          SizedBox(height: margins),
          MenuItem(content: "Beef", type: "Dessert", enabled: false),
          SizedBox(height: margins),
          MenuItem(content: "Orange Juice", type: "Drink", enabled: true),
        ],
      ),
    );
  }
}

class UpcomingMenu extends StatelessWidget {
  const UpcomingMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Upcoming Menu'),
    );
  }
}
