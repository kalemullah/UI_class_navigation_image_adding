import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/UI_task4.dart';
import 'package:test/adding_image.dart';
import 'package:test/bottombav_bar.dart';
import 'package:test/bottomnav.dart';
import 'package:test/cured_nav.dart';
import 'package:test/custommtabr.dart';
import 'package:test/expanded_flexible.dart';
import 'package:test/list_view.dart';
import 'package:test/listview_builder.dart';
import 'package:test/prfile.dart';
import 'package:test/quiz.dart';
import 'package:test/tabbar.dart';
import 'package:test/test.dart';
import 'package:test/ui_task5.dart';

////
///  column-----> main axis is vertical, cross axis is horizontal
/// row-----> main axis is horizontal, cross axis is vertical
///
///
///
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: BottomNavBar(),
      //const Quiz(),
    );
    // MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   home: Quiz(),
    //   //CustomTabBar()
    //   // Tabbar()
    //   //  Profile(),
    //   // Test()
    //   // GridviewScreen()
    //   //ListviewbuilderScreen()
    //   // ListViewScreen(),
    //   //UiTask5()
    //   //UiTask5(),
    //   // Button(),
    //   //AddingImage()
    //   // const expabded(),
    // );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Container(
            child: Container(
              width: 350,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.amber[100],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.notifications_off_rounded,
                          color: Colors.amber,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Follow',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.amber[100],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.message,
                          color: Colors.amber,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Message',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.amber[100],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.amber,
                          size: 30,
                        ),
                      ),
                      Text(
                        'favorite',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
