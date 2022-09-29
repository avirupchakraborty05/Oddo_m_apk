import 'package:flutter/material.dart';

class BottumTextSignIn extends StatefulWidget {
  final String name;
  final String subName;
  final Function() onPressed;
  const BottumTextSignIn(
      {Key? key,
      required this.name,
      required this.subName,
      required this.onPressed})
      : super(key: key);

  @override
  State<BottumTextSignIn> createState() => _BottumTextSignInState();
}

class _BottumTextSignInState extends State<BottumTextSignIn> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Center(
            child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.name,
          style: TextStyle(color: Colors.white),
        ),
        GestureDetector(
          onTap: widget.onPressed,
          child: Text(
            widget.subName,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
    )));
  }
}
