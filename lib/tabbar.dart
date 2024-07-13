import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Tabbar',
            ),
            centerTitle: true,
            bottom: TabBar(
              dividerColor: Colors.red,
              indicatorColor: Colors.amber,
              onTap: (v) {
                print('tabbar index: $v');
              },
              tabs: [
                const Tab(
                  icon: Icon(Icons.directions_car),
                  text: 'Car',
                  // child: Container(
                  //   width: 100,
                  //   child: Center(child: Text('car')),
                  // ),
                ),
                Tab(
                  icon: Icon(
                    Icons.bike_scooter,
                  ),
                  child: Container(
                    width: 100,
                    child: Center(child: Text('bike')),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.directions_car),
                  child: Container(
                    width: 100,
                    child: Center(child: Text('ac car')),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.red.withOpacity(.4),
                child: Center(
                  child: Column(
                    children: [
                      Text('Car'),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Center(
                  child: Text('Bike'),
                ),
              ),
              Container(
                color: Colors.green,
                child: Center(
                  child: Text('AC Car'),
                ),
              ),
            ],
          )),
    );
  }
}
