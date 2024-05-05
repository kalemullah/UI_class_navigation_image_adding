import 'package:flutter/material.dart';
import 'package:test/ui_task51.dart';

class UiTask5 extends StatelessWidget {
  const UiTask5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI task5'),
      ),
      body: Center(
        child: Container(
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text('back screen')),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => UITask51()));
                  },
                  child: Text('move to  screen51')),
              SizedBox(
                height: 10,
              ),
              Text('back screen')
            ],
          ),
        ),
      ),
    );
  }
}
