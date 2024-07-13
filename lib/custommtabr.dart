import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

int isSelected = 0;

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = 1;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                        color: isSelected == 1 ? Colors.green : Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text('Container1')),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = 2;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                        color: isSelected == 2 ? Colors.green : Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text('Container2')),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                      color: isSelected == 0 ? Colors.amber : Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      isSelected == 1 ? "Container1" : 'Container2',
                    ),
                  ))
            ]),
      ),
    );
  }
}
