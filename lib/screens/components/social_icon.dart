import 'package:flutter/material.dart';

class SocialIcon extends StatefulWidget {
  final String image;
  final Function() ontap;
  SocialIcon({Key? key, required this.image, required this.ontap})
      : super(key: key);

  @override
  State<SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      child: GestureDetector(
        onTap: widget.ontap,
        child: Container(
          height: 45,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Image.asset(widget.image),
        ),
      ),
    );
  }
}
