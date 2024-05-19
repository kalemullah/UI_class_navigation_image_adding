import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List names = [
      "siraj bhai",
      "samad bhai",
      "Huzaifa",
      "luqman",
      "karim",
      "faris",
      "ghalib"
    ];
    List images = [
      "assets/image1.jpeg",
      "assets/image1.jpeg",
      "assets/image1.jpeg",
      "assets/image1.jpeg",
      "assets/image1.jpeg",
      "assets/image1.jpeg",
      "assets/image1.jpeg",
    ];
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('stories'),
                Row(
                  children: [
                    Icon(Icons.play_arrow_outlined),
                    SizedBox(width: 3),
                    Text('watch all'),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 50),
          Padding(
              padding: EdgeInsets.only(left: 15),
              child: SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/image1.jpeg'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('samad')
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/image1.jpeg'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('samad')
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/image1.jpeg'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('samad')
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/image1.jpeg'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('samad')
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/image1.jpeg'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('samad')
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/image1.jpeg'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('samad')
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/image1.jpeg'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('samad')
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/image1.jpeg'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('samad')
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/image1.jpeg'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('samad')
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/image1.jpeg'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('samad')
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/image1.jpeg'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('samad')
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/image1.jpeg'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text('samad')
                      ],
                    ),
                  ],
                ),
              )),
          Divider(),
          Expanded(
            child: Container(
              // color: Colors.amber,
              // height: 500,
              width: 350,
              child: ListView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    print('this is index $index');
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('${images[index]}'),
                                  ),
                                  SizedBox(width: 10),
                                  Text('${names[index]} '),
                                ],
                              ),
                              Icon(Icons.more_horiz_outlined)
                            ],
                          ),
                          SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/image1.jpeg',
                              // height: 100,
                              // width: 100,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: index.isEven
                                        ? Colors.red
                                        : Colors.black,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(index.isEven
                                      ? Icons.circle
                                      : Icons.circle_outlined),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(Icons.send),
                                ],
                              ),
                              Icon(Icons.bookmark),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('2822882 likes'),
                          Row(
                            children: [
                              Text('alika'),
                              SizedBox(width: 5),
                              Text('hi!'),
                              SizedBox(width: 5),
                              Text(
                                '#alika',
                                style: TextStyle(color: Colors.teal),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
