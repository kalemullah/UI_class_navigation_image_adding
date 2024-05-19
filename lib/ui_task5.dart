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
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, aa) {
            return ListTile(
              title: Text('Item ${aa.isEven ? 'even' : 'odd'}'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UITask51()));
              },
            );
          },
        ));
  }
}
