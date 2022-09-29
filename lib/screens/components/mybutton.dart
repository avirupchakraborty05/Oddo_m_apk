import 'package:flutter/material.dart';

class MyButtonLogin extends StatefulWidget {
  final Function() onTap;
  final String name;
  const MyButtonLogin({Key? key, required this.onTap, required this.name})
      : super(key: key);

  @override
  State<MyButtonLogin> createState() => _MyButtonLoginState();
}

class _MyButtonLoginState extends State<MyButtonLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Expanded(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.blueAccent,
            shadowColor: Colors.black,
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            minimumSize: Size(110, 45), //////// HERE
          ),
          onPressed: widget.onTap,
          child: Text(
            widget.name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
