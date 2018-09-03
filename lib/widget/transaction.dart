import 'package:flutter_app/widget/fragment.dart';

class FragmentTransaction {
  List<Fragment> fragments = [];
  List<bool> isShowing = [false];

  void add(Fragment f) {
    fragments.add(f);
    isShowing.add(false);
  }

  void remove(Fragment f) {
    if (fragments.contains(f)) {
      var index = fragments.indexOf(f);
      removeIndex(index);
    }
  }

  void removeIndex(int index) {
    if (index < 0) {
      index = 0;
    } else if (index >= fragments.length) {
      index = fragments.length - 1;
    }
    fragments.removeAt(index);
    isShowing.removeAt(index);
  }

  void show(Fragment f) {
    int index = fragments.indexOf(f);
    showIndex(index);
  }

  void showIndex(int index) {
    if (index < 0) {
      index = 0;
    } else if (index >= fragments.length) {
      index = fragments.length - 1;
    }
    for (int i = 0; i < isShowing.length; i++) {
      if (index == i) {
        isShowing[i] = false;
      } else {
        isShowing[i] = true;
      }
    }
  }

  bool isHide(int index) {
    return isShowing[index];
  }
}
