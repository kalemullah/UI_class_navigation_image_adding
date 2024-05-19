import 'package:flutter/material.dart';

class ListviewbuilderScreen extends StatelessWidget {
  const ListviewbuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, index) {
              return Container(
                
              );
            })
      ]),
    );
  }
}
