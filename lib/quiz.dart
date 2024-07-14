import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

List<String> Question = [
  'Q1',
  'Q2',
  'Q3',
  'Q4',
  'Q5',
  'Q6',
  'Q7',
  'Q8',
  'Q9',
  'Q10'
];
List<String> options1 = [
  'opt1',
  'opt1',
  'opt1',
  'opt1',
  'opt1',
  'opt1',
  'opt1',
  'opt1',
  'opt1',
  'opt1',
];
List<String> options2 = [
  'opt2',
  'opt2',
  'opt2',
  'opt2',
  'opt2',
  'opt2',
  'opt2',
  'opt2',
  'opt2',
  'opt2',
];
List<String> options3 = [
  'opt3',
  'opt3',
  'opt3',
  'opt3',
  'opt3',
  'opt3',
  'opt3',
  'opt3',
  'opt3',
  'opt3',
];
List<String> options4 = [
  'opt4',
  'opt4',
  'opt4',
  'opt4',
  'opt4',
  'opt4',
  'opt4',
  'opt4',
  'opt4',
  'opt4',
];

List<String> tempAns = [];
List<String> cAns = ['', '', '', ''];

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'this is questions Q no.${index + 1}',
                                style: TextStyle(
                                    fontFamily: 'poppin',
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text('${Question[index]}'),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    tempAns.add(options1[index]);
                                  },
                                  child: Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                          child:
                                              Text('A) ${options1[index]}'))),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    tempAns.add(options2[index]);
                                  },
                                  child: Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                          child:
                                              Text('A) ${options2[index]}'))),
                                ),
                              ]),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    tempAns.add(options3[index]);
                                  },
                                  child: Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                          child:
                                              Text('C) ${options3[index]}'))),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    tempAns.add(options4[index]);
                                  },
                                  child: Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                          child:
                                              Text('D) ${options4[index]}'))),
                                ),
                              ]),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  );
                }),
          ),
          GestureDetector(
            onTap: () {
              int marks = 0;
              for (int i = 0; i < cAns.length; i++) {
                if (tempAns[i] == cAns[i]) {
                  print('Correct');
                  marks++;
                } else {
                  print('Incorrect');
                }
              }
              print("this is temp answer $tempAns");
            },
            child: Container(
                height: 50,
                width: 159,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('Submit'),
                )),
          )
        ],
      ),
    );
  }
}
