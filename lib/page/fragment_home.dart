import 'package:flutter/material.dart';
import 'package:flutter_app/widget/fragment.dart';

class HomeFragment extends Fragment {
  final bool offstage;

  HomeFragment({this.offstage}) : super(offstage: offstage);

  @override
  createState() {
    return new _HomeFragmentState();
  }
}

class _HomeFragmentState extends FragmentState<HomeFragment> {

  @override
  void onCreate() {
    super.onCreate();
  }

  @override
  void onResume() {

  }



  @override
  Widget getChild() {
    return new Text("content");
  }

  @override
  void onHideChanged(bool isHide) {
    super.onHideChanged(isHide);
  }
}
