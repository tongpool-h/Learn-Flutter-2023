import 'package:flutter/material.dart';
import 'constant/my_constant.dart';
import 'screens/widgets001.dart';
import 'screens/widgets002.dart';
import 'screens/widgets003.dart';
import 'screens/widgets004.dart';
import 'screens/widgets005.dart';
import 'screens/widgets006.dart';
import 'screens/widgets007.dart';
import 'screens/widgets008.dart';
import 'screens/widgets009.dart';
import 'screens/widgets010.dart';
import 'screens/widgets011.dart';
import 'screens/widgets012.dart';
import 'screens/widgets013.dart';
import 'screens/widgets014.dart';
import 'screens/widgets015.dart';
import 'screens/widgets016.dart';

import 'screens/pages/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: MyConstant.ligh,
        primaryColor: MyConstant.orange,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyConstant.primary,
        leading: Icon(
          Icons.menu,
          color: MyConstant.ligh,
          size: 24,
        ),
        title: Center(
          child: Text(
            'Flutter Beginner',
            style: MyConstant().h1Style(),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(
              Icons.search,
              size: 24,
              color: MyConstant.ligh,
            ),
          ),
        ],
      ),
      // bottomNavigationBar: NavgitorBottomBar(),
      body: OnBoardingScreen(),
    );
  }
}

// Source:
// https://www.youtube.com/watch?v=xOMtvnhJhVE
// https://www.kindacode.com/article/creating-masonry-layout-in-flutter/
// https://flutterawesome.com/grid-view-app-for-flutter/