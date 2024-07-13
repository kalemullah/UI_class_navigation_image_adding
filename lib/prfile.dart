import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
              Container(
                height: 90,
                width: 90,
                color: Colors.red,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.green,
              ),
              Container(
                height: 70,
                width: 70,
                color: Colors.blue,
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Stack(
            clipBehavior: Clip.none,
            fit: StackFit.loose,
            // alignment: AlignmentDirectional.center,
            children: [
              // Container(
              //   height: 200,
              //   width: 200,
              //   color: Colors.green,
              // ),

              // color: Colors.green,

              Container(
                height: 90,
                width: 90,
                color: Colors.yellow,
              ),
              Positioned(
                top: -20,
                left: 20,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(45),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
