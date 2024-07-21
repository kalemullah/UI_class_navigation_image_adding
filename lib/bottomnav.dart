// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int _page = 0;
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
//   GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         key: _scaffoldKey,
//         // appBar: AppBar(
//         //   leading: GestureDetector(
//         //       onTap: () {
//         //         Scaffold.of(context).openDrawer();
//         //       },
//         //       child: Icon(Icons.menu)),
//         // ),
//         appBar: AppBar(
//           leading: Builder(
//             builder: (context) {
//               return IconButton(
//                 icon: const Icon(Icons.menu),
//                 onPressed: () {
//                   Scaffold.of(context).openDrawer();
//                 },
//               );
//             },
//           ),
//         ),
//         drawer: Drawer(
//           backgroundColor: Colors.amber,
//           // Add a ListView to the drawer. This ensures the user can scroll
//           // through the options in the drawer if there isn't enough vertical
//           // space to fit everything.
//           child: ListView(
//             // Important: Remove any padding from the ListView.
//             padding: EdgeInsets.zero,
//             children: [
//               const DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                 ),
//                 child: Text('Drawer Header'),
//               ),
//               ListTile(
//                 title: const Text('Item 1'),
//                 onTap: () {
//                   // Update the state of the app.
//                   // ...
//                 },
//               ),
//               ListTile(
//                 title: const Text('Item 2'),
//                 onTap: () {
//                   // Update the state of the app.
//                   // ...
//                 },
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: CurvedNavigationBar(
//           key: _bottomNavigationKey,
//           index: 0,
//           items: <Widget>[
//             Icon(Icons.add, size: 30),
//             Icon(Icons.list, size: 30),
//             Icon(Icons.compare_arrows, size: 30),
//             Icon(Icons.call_split, size: 30),
//             Icon(Icons.perm_identity, size: 30),
//           ],
//           color: Colors.white,
//           buttonBackgroundColor: Colors.white,
//           backgroundColor: Colors.blueAccent,
//           animationCurve: Curves.easeInOut,
//           animationDuration: Duration(milliseconds: 600),
//           onTap: (index) {
//             setState(() {
//               _page = index;
//             });
//           },
//           letIndexChange: (index) => true,
//         ),
//         body: Container(
//           color: Colors.blueAccent,
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(_page.toString(), style: TextStyle(fontSize: 160)),
//                 // ElevatedButton(
//                 //   child: Text('Go To Page of index 1'),
//                 //   onPressed: () {
//                 //     final CurvedNavigationBarState? navBarState =
//                 //         _bottomNavigationKey.currentState;
//                 //     navBarState?.setPage(1);
//                 //   },
//                 // )
//               ],
//             ),
//           ),
//         ));
//   }
// }





// // import 'package:flutter/material.dart';

// // class BottomNavigationBarExample extends StatefulWidget {
// //   const BottomNavigationBarExample({super.key});

// //   @override
// //   State<BottomNavigationBarExample> createState() =>
// //       _BottomNavigationBarExampleState();
// // }

// // class _BottomNavigationBarExampleState
// //     extends State<BottomNavigationBarExample> {
// //   int _selectedIndex = 0;
// //   static const TextStyle optionStyle =
// //       TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);
// //   static const List<Widget> _widgetOptions = <Widget>[
// //     Text(
// //       'Index 0: Home',
// //       style: optionStyle,
// //     ),
// //     Text(
// //       'Index 1: Business',
// //       style: optionStyle,
// //     ),
// //     Text(
// //       'Index 2: School',
// //       style: optionStyle,
// //     ),
// //     Text(
// //       'Index 3: Settings',
// //       style: optionStyle,
// //     ),
// //   ];

// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('BottomNavigationBar Sample'),
// //       ),
// //       body: Center(
// //         child: _widgetOptions[_selectedIndex],
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         items: const <BottomNavigationBarItem>[
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.home),
// //             label: 'Home',
// //             backgroundColor: Colors.red,
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.business),
// //             label: 'Business',
// //             backgroundColor: Colors.green,
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.school),
// //             label: 'School',
// //             backgroundColor: Colors.purple,
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.settings),
// //             label: 'Settings',
// //             backgroundColor: Colors.pink,
// //           ),
// //         ],
// //         currentIndex: _selectedIndex,
// //         selectedItemColor: Colors.amber[800],
// //         onTap: _onItemTapped,
// //       ),
// //     );
// //   }
// // }
