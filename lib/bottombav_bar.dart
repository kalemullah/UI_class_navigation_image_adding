import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Column(
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.red,
        ),
        SizedBox(height: 20),
        Container(
          height: 200,
          width: 200,
          color: Colors.green,
        ),
      ],
    ),
    Text(
      'Index 1: Business',
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    Text(
      'Index 2: School',
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    ),
  ];

  void _onItemTapped(int index) {
    print('this is current index $index');
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(child: _widgetOptions[_selectedIndex]
          //.elementAt(_selectedIndex),
          ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
