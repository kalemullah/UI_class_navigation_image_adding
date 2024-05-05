import 'package:flutter/material.dart';
import 'package:test/UI_task4.dart';
import 'package:test/expanded_flexible.dart';

class AddingImage extends StatelessWidget {
  const AddingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('adding image here'),
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/image1.jpeg'),
            ),
            Container(
              height: 50,
              width: 200,
              child: TextButton(
                onPressed: () {
                  print('Button Pressed');
                },
                child: Text('Add Image'),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  overlayColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(100000),
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  // push
                  // pushReplacement
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Button()));
                },
                child: Text('Add Image111'),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  overlayColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(100000),
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
              ),
            ),
            // CircleAvatar(
            //   radius: 20,
            //   backgroundImage :
            // )
          ],
        ),
      ),
    );
  }
}
