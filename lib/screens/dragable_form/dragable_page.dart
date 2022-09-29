import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marchant_oddo/data/data.dart';
import 'package:marchant_oddo/screens/home_screen/home.dart';

import '../components/mytextfield.dart';

class DragableFormPage extends StatefulWidget {
  const DragableFormPage({Key? key}) : super(key: key);

  @override
  State<DragableFormPage> createState() => _DragableFormPageState();
}

class _DragableFormPageState extends State<DragableFormPage> {
  List<String> options = [
    "task 0",
    "Task 1",
    "Task 2",
    "Task 3",
    "Task 4",
    "Task 5",
    "task 6",
    "task 7",
    "task 8",
    "task 9",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Add Task",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop((context));
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
                Navigator.of(context).push((MaterialPageRoute(
                  builder: (context) => HomePage(),
                )));
              },
              icon: Icon(
                Icons.check,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 45.0, horizontal: 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                ),
              ),
            ),
            // Stack(
            //   children: [
            //     // all.map((List) => DraggableWidget(options: options)).toList(),
            //   ],
            // ),
          ],
        ));
  }
}
