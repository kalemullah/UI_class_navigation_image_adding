import 'package:flutter/material.dart';
import 'package:test/ui_task5.dart';
import 'package:test/ui_task51.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Container(
        color: Colors.amber,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () => print('this is test'),
                iconSize: 30,
                color: Colors.red,
              ),
            ),
            Container(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  overlayColor: MaterialStateProperty.all(Colors.black),
                ),
                onPressed: () {
                  print('this is test');

                  // UiTask5()
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UITask51(),
                      ));
                },
                child: Text('move to next page'),
              ),
            ),
            // SizedBox(height: 20),
            // Container(
            //   height: 50,
            //   width: 200,
            //   child: TextButton(
            //       style: ButtonStyle(
            //         backgroundColor: MaterialStateProperty.all(Colors.red),
            //         overlayColor: MaterialStateProperty.all(Colors.black),
            //       ),
            //       onPressed: () {},
            //       child: Text(
            //         'add button2',
            //         style: TextStyle(color: Colors.amber),
            //       )),
            // ),
            // SizedBox(height: 20),
            // GestureDetector(
            //   onTap: () {},
            //   child: Container(
            //       height: 35,
            //       width: 350,
            //       decoration: BoxDecoration(
            //           color: Colors.white,
            //           border: Border.all(color: Colors.amber),
            //           borderRadius: BorderRadius.circular(20)),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Icon(
            //             Icons.facebook,
            //             color: Colors.blueAccent,
            //           ),
            //           SizedBox(
            //             width: 10,
            //           ),
            //           Text('login as facebook')
            //         ],
            //       )),
            // )
          ],
        ),
      ),
    );
  }
}
