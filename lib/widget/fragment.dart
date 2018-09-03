import 'package:flutter/material.dart';

class Fragment extends StatefulWidget {
  final Widget child;
  final bool offstage;

  Fragment({Key key, this.offstage, this.child}) : super(key: key);

  @override
  FragmentState createState() => new FragmentState();
}

class FragmentState<T extends Fragment> extends State<T> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return new Offstage(
      child: widget.child ?? getChild(),
      offstage: _getOffstage(),
    );
  }

  bool _getOffstage() {
    onHideChanged(widget.offstage);
    return widget.offstage;
  }





  void onCreate(){}

  void onResume(){}

  void onPause(){}

  void onDestroy(){}

  void onHideChanged(bool isHide) {}

  Widget getChild() {return new Container();}


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
