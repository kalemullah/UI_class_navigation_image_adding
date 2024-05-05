import 'package:flutter/material.dart';

class UITask51 extends StatelessWidget {
  const UITask51({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text('move to back screen')),
          ],
        ),
      ),
    );
  }
}
