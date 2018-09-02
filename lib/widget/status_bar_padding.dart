import 'package:flutter/material.dart';

class StatusBarPadding extends StatefulWidget {
  final Widget child;

  StatusBarPadding({this.child});

  @override
  _StatusBarPaddingState createState() => _StatusBarPaddingState();
}

class _StatusBarPaddingState extends State<StatusBarPadding> {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: widget.child,
    );
  }
}
