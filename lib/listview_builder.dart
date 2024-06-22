import 'package:flutter/material.dart';
import 'package:test/details.dart';

class GridviewScreen extends StatelessWidget {
  const GridviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List images = ["assets/3.jpeg", "assets/4.jpeg", "assets/6.jpeg"];
    List Name = ["poma", "gucci", "addidas"];
    List price = ["\$123", "\$153", "\$126"];
    return Scaffold(
      // appBar: AppBar(
      //   leading: Icon(Icons.arrow_back_ios),
      //   centerTitle: true,
      //   title: Text("Gridview"),
      //   actions: [Icon(Icons.search), Icon(Icons.more_vert)],
      //   backgroundColor: Colors.amber,
      //   bottom: PreferredSize(
      //     preferredSize: Size.fromHeight(140),
      //     child: Container(
      //       height: 140,
      //       width: 40,
      //       color: Colors.red,
      //     ),
      //   ),
      // ),

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
                itemCount: images.length,
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
                          FavIcons(),
                          Image.asset(
                            images[index],
                            width: 90,
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 10),
                          Text('${Name[index]}',
                              style: TextStyle(fontSize: 18)),
                          Text("${price[index]}",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.red)),
                        ]),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen()));
                        },
                        child: Container(
                          height: 35,
                          width: 110,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.withOpacity(.5)),
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text('Buy now',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          ),
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

class FavIcons extends StatefulWidget {
  const FavIcons({
    super.key,
  });

  @override
  State<FavIcons> createState() => _FavIconsState();
}

bool isfav = false;

class _FavIconsState extends State<FavIcons> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              isfav = !isfav;
            });
          },
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                // ignore: dead_code
                color: Colors.white,
                // Colors.white,
                border: Border.all(color: Colors.grey),
                boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)],
                borderRadius: BorderRadius.circular(60)),
            child: Icon(
              Icons.favorite,
              // ignore: dead_code
              color: isfav ? Colors.red : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
