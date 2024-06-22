import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int selectedSize = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
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
                ),
                Text(
                  "Name",
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
            SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 400,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: Column(children: [
                  SizedBox(height: 45),
                  Text(
                    'T-shirt',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 45),
                  Image.asset(
                    "assets/image1.jpeg",
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ]),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 30,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey)),
              child: Center(child: Text('Size')),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        List<int> Sized = [23, 34, 45, 67];

                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSize = index;
                              });
                              print('Size: $selectedSize');
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: selectedSize == index
                                      ? Colors.red
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey, blurRadius: 10)
                                  ]),
                              child: Center(child: Text('${Sized[index]}')),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
            SizedBox(height: 35),
            Container(
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(.5)),
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(
                child: Text('Buy now',
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
