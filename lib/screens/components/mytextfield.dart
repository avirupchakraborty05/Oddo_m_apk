import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  final String name;
  final IconData icon;
  const MyTextFormField({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            prefixIcon: Icon(
              widget.icon,
              color: Colors.white,
            ), // icon is 48px widget.
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),

              // borderSide:
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none),
            hintText: widget.name,
            hintStyle: TextStyle(color: Colors.white),
            fillColor: Colors.blue,
            filled: true),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
