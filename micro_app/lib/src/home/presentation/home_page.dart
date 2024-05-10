import 'package:flutter/material.dart';
import 'package:micro_dependency/micro_dependency.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextStyles textStyles = TextStyles();
  final TextSize textSize = TextSize();
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.call,
      size: 150,
    ),
    Icon(
      Icons.camera,
      size: 150,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Waifu',
          style: textStyles.appBarTitle(
            textColor: Colors.white,
            size: textSize.big,
          ),
        ),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.woman),
            label: 'Waifu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ramen_dining),
            label: 'Others',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
    );
  }
}
