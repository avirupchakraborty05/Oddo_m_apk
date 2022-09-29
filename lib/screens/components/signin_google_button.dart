import 'package:flutter/material.dart';

class SignupGoogleButton extends StatefulWidget {
  void Function() onPressed;
  final String name;
  final Color color;
  final Color subSolor;
  final Color bordercolor;
  SignupGoogleButton({
    required this.name,
    required this.onPressed,
    required this.color,
    required this.subSolor,
    required this.bordercolor,
  });

  @override
  State<SignupGoogleButton> createState() => _SignupGoogleButtonState();
}

class _SignupGoogleButtonState extends State<SignupGoogleButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: widget.bordercolor),
          color: widget.subSolor,
          borderRadius: BorderRadius.circular(2),
        ),
        height: 40,
        width: 280,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/google.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: 12,
                  color: widget.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
