import 'package:flutter/material.dart';
import 'package:marchant_oddo/screens/home_screen/home.dart';

import '../tabbar_screens/midline_screen.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifiications",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => HomePage()));
            },
            icon: Icon(
              Icons.check_outlined,
              color: Colors.grey.shade700,
              size: 25,
            ),
          ),
        ],
      ),
      body: Midline_screen(),
    );
  }
}
