import 'package:flutter/material.dart';

import 'balance/BalanceAppScreen.dart'; // Ensure BalanceAppScreen.dart is correctly implemented
import 'balance/HelpButtonDemo.dart'; // Corrected import

// import 'balance/CreateAccountPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sticky Button Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppWithStickyButton(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppWithStickyButton extends StatefulWidget {
  @override
  _AppWithStickyButtonState createState() => _AppWithStickyButtonState();
}

class _AppWithStickyButtonState extends State<AppWithStickyButton> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // Example(),
    // StickyButton(),
    // SignUpScreen(),
    // BalanceTabScreen(),
    BalanceAppScreen(), // Main page content
    // BalanceTabScreen(),
    // TabScreen(),
    // CreateAccountPage(),
    Center(child: Text('Search Page')),
    Center(child: Text('Profile Page')),
  ];

  bool isExpanded = false;

  void toggleButton() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main Page Content
          _pages[_currentIndex],

          // Sticky Button
          Positioned(
            right: -40,
            bottom: 156,
            child: HelpButtonDemo(
              isExpanded: isExpanded,
              onToggle: toggleButton,
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      //   ],
      // ),
    );
  }
}
