import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:marchant_oddo/screens/home_screen/home.dart';

class ReassignPage extends StatefulWidget {
  const ReassignPage({Key? key}) : super(key: key);

  @override
  State<ReassignPage> createState() => _ReassignPageState();
}

class _ReassignPageState extends State<ReassignPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController inspectionDate = TextEditingController();
    TextEditingController planDate = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reassign",
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                "Assign from",
                style: TextStyle(fontSize: 16.5, color: Colors.grey),
              ),
            ),
            TextFormField(
              controller: planDate,
              readOnly: true,
              onTap: () async {
                DateTime date = DateTime(2000);
                date = (await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100)))!;
                String formattedDate = DateFormat("dd-MM-yyyy").format(date);
                planDate.text = formattedDate;
              },
            ),
            /**          Inspection Date Input Box          **/
            const Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Text(
                "Inspection Date",
                style: TextStyle(fontSize: 16.5, color: Colors.grey),
              ),
            ),
            TextFormField(
              readOnly: true,
              controller: inspectionDate,
              onTap: () async {
                DateTime date = DateTime(2000);

                date = (await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100)))!;
                String formattedDate = DateFormat("dd-MM-yyyy").format(date);
                inspectionDate.text = formattedDate;
              },
            ),
            const Padding(padding: EdgeInsets.only(top: 30)),
            DropdownButtonFormField(
              decoration: const InputDecoration(
                  labelText: "Assign to",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 16.5)),
              onChanged: (newVal) {},
              items: <String>['Person A', 'Person B', 'Person C', 'Person D']
                  .map<DropdownMenuItem<String>>((String val) {
                return DropdownMenuItem(
                  value: val,
                  child: Text(val),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
