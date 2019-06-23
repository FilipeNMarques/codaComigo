import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final double size;
  final Widget child;
  final Color bc;

  const CustomCircleAvatar(
      {Key key, this.size = 40, this.bc = Colors.tealAccent, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size,
        width: size,
        alignment: Alignment.center,
        decoration:
            BoxDecoration(color: bc, borderRadius: BorderRadius.circular(40)),
        child: child);
  }
}
