import 'package:flutter/material.dart';
import 'package:flutter_app/model/bottom_bar_model.dart';
import 'package:flutter_app/page/fragment_home.dart';
import 'package:flutter_app/widget/activity.dart';
import 'package:flutter_app/widget/fragment.dart';
import 'package:flutter_app/widget/status_bar_padding.dart';
import 'package:flutter_app/widget/transaction.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primaryColor: Colors.blueAccent,
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _tabIndex = 0;
  FragmentTransaction fragmentTransaction = new FragmentTransaction();
  static TextStyle normalStyle =
      new TextStyle(fontSize: 16.0, color: Colors.grey);
  static TextStyle selectStyle =
      new TextStyle(fontSize: 16.0, color: Colors.grey);
  List<BottomBarModel> bottom = [
    new BottomBarModel(
        "ONE",
        normalStyle,
        selectStyle,
        "assets/image/bottom_one_select.png",
        "assets/image/bottom_one_normal.png"),
    new BottomBarModel(
        "ONE",
        normalStyle,
        selectStyle,
        "assets/image/bottom_one_select.png",
        "assets/image/bottom_one_normal.png"),
    new BottomBarModel(
        "ONE",
        normalStyle,
        selectStyle,
        "assets/image/bottom_one_select.png",
        "assets/image/bottom_one_normal.png"),
    new BottomBarModel(
        "ONE",
        normalStyle,
        selectStyle,
        "assets/image/bottom_one_select.png",
        "assets/image/bottom_one_normal.png"),
  ];

  String getImagePath(int index) {
    return index == _tabIndex
        ? bottom[index].selectImagePath
        : bottom[index].normalImagePath;
  }

  TextStyle getStyle(int index) {
    return index == _tabIndex
        ? bottom[index].selectStyle
        : bottom[index].normalStyle;
  }


  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> fragments=[];
    fragments.add(new HomeFragment(offstage: fragmentTransaction.isHide(0),));
    fragments.add(new Fragment(child: new Text("test"), offstage: fragmentTransaction.isHide(1),));
    fragments.add(new Fragment(child: new Text("1111"), offstage: fragmentTransaction.isHide(2),));
    fragments.add(new Fragment(child: new Text("2222"), offstage: fragmentTransaction.isHide(3),));
    return new Scaffold(
      body: new StatusBarPadding(
        child: new Activity(
          children:fragments
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: Image.asset(
                getImagePath(0),
                width: 30.0,
                height: 30.0,
              ),
              title: new Text(
                bottom[0].title,
                style: getStyle(0),
              )),
          new BottomNavigationBarItem(
              icon: Image.asset(
                getImagePath(1),
                width: 30.0,
                height: 30.0,
              ),
              title: new Text(
                bottom[1].title,
                style: getStyle(1),
              )),
          new BottomNavigationBarItem(
              icon: Image.asset(
                getImagePath(2),
                width: 30.0,
                height: 30.0,
              ),
              title: new Text(
                bottom[2].title,
                style: getStyle(2),
              )),
          new BottomNavigationBarItem(
              icon: Image.asset(
                getImagePath(3),
                width: 30.0,
                height: 30.0,
              ),
              title: new Text(
                bottom[3].title,
                style: getStyle(3),
              )),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _tabIndex = index;
            fragmentTransaction.showIndex(_tabIndex);
          });
        },
      ),
    );
  }
}
