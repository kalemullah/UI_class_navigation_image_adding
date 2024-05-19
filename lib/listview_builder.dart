import 'package:flutter/material.dart';

class GridviewScreen extends StatelessWidget {
  const GridviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1 / 5),
              itemBuilder: (context, inndex) {
                return Container(
                  color: Colors.amber,
                );
              }),
        )
      ]),
    );
  }
}
