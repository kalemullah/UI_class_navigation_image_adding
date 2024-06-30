import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  TextEditingController reviewcontroller = TextEditingController();

  String review = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber[100],
        child: Center(
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: const TextSpan(
                      text: 'How was you experience\n',
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                            text: 'with',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: ' ali khan',
                            style: TextStyle(color: Colors.amber))
                      ]),
                ),
                Container(
                  width: 250,
                  // color: Colors.red,
                  child: RatingBar(
                    size: 50,
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star_border,
                    onRatingChanged: (value) {
                      review = value.toString();
                      print('this is stare value: $value');
                    },
                    initialRating: 3,
                    maxRating: 5,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextField(
                    controller: reviewcontroller,
                    onChanged: (value) {
                      review = value;
                      // print('this is text: $value');
                    },
                    maxLines: 5,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.all(8),
                      fillColor: Colors.white,
                      filled: true,
                      // prefixIcon: Icon(Icons.search),
                      // suffixIcon: Icon(Icons.clear),
                      // labelText: 'Outlined',
                      hintText: 'hint text',
                      hintStyle: TextStyle(),
                      // helperText: 'supporting text',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 170,
                  color: Colors.red,
                  child: ElevatedButton(
                    onPressed: () {
                      reviewcontroller.clear();
                      // print('this is text: ${review}');
                    },
                    child: Text('Submit'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ]),
        ),
      ),
    );
  }
}
