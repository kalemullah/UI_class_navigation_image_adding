import 'package:flutter/material.dart';

class GridviewScreen extends StatelessWidget {
  const GridviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List colors = [Colors.red, Colors.green, Colors.yellow, Colors.blue];
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Color(0xfff2ddd8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Icon(
                  Icons.arrow_back_ios,
                )),
              ),
              Text(
                "T-shirt shop",
                style: TextStyle(fontSize: 22),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Color(0xfff2ddd8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Icon(Icons.menu)),
              ),
            ],
          ),
          SizedBox(height: 25),
          Expanded(
            child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1 / 1.7),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 250,
                        width: 180,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.grey.withOpacity(.5)),
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 5, color: Colors.grey)
                                    ],
                                    borderRadius: BorderRadius.circular(60)),
                                child: Icon(Icons.favorite_border),
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/image1.jpeg',
                            width: 90,
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 10),
                          Text('T-shirt', style: TextStyle(fontSize: 18)),
                          Text('\$18',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.red)),
                        ]),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 35,
                        width: 110,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.grey.withOpacity(.5)),
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: Text('Buy now',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                      )
                    ],
                  );
                }),
          )
        ]),
      ),
    );
  }
}
