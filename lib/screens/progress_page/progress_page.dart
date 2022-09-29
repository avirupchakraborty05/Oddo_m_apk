import 'package:flutter/material.dart';

import '../components/details_card.dart';
import '../home_screen/home.dart';
import '../options_screen/option_one_screen.dart';
import '../reassign_page/reassign_page.dart';
import 'details_progress.dart';

class ProgressPage extends StatefulWidget {
  ProgressPage({Key? key}) : super(key: key);

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Progress",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => HomePage()));
              },
              icon: Icon(
                Icons.check_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              DetailsProgress(),
              DetailsProgress(),
              DetailsProgress(),
              DetailsProgress(),
              DetailsProgress(),
              DetailsProgress(),
              DetailsProgress(),
              DetailsProgress(),
              DetailsProgress(),
              DetailsProgress(),
            ],
          )
        ],
      ),
    );
  }
}
