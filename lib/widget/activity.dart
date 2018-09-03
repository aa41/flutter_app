import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  final List<Widget> children;

  Activity({this.children});

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> with WidgetsBindingObserver{
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: widget.children,
    );
  }



  void onCreate(){}

  void onResume(){}

  void onPause(){}

  void onDestroy(){}



  @override
  void initState() {
    onCreate();
    super.initState();
  }


  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if(state==AppLifecycleState.resumed){
      onResume();
    }else if(state==AppLifecycleState.paused){
      onPause();
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  void dispose() {
    onDestroy();
    super.dispose();
  }
}
