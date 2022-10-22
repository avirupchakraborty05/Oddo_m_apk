import 'package:flutter/material.dart';
import 'package:marchant_oddo/screens/progress_page/progress_page.dart';

import '../dragable_form/dragable_page.dart';
import '../options_screen/option_one_screen.dart';
import '../reassign_page/reassign_page.dart';

class DetailsCard extends StatefulWidget {
  final ctx;
  DetailsCard({Key? key, this.ctx});

  @override
  State<DetailsCard> createState() => _DetailsCardState();
}

class _DetailsCardState extends State<DetailsCard> {
  String _selectedMenu = '';
  var Menu = ["progress", "reassign", "edit"];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 5,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade400,
                    maxRadius: 22,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Three-line item",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PopupMenuButton<String>(
                  // Callback that sets the selected popup menu item.
                  onSelected: (String item) {
                    setState(() {
                      _selectedMenu = item;
                    });
                    print(item);
                    if (item == "reassign") {
                      Navigator.push(widget.ctx,
                          MaterialPageRoute(builder: (_) => ReassignPage()));
                    }
                    if (item == "progress") {
                      Navigator.push(widget.ctx,
                          MaterialPageRoute(builder: (_) => ProgressPage()));
                    }
                    if (item == "edit") {
                      Navigator.push(
                          widget.ctx,
                          MaterialPageRoute(
                              builder: (_) => DragableFormPage()));
                    }
                  },
                  itemBuilder: ((BuildContext context) =>
                      <PopupMenuEntry<String>>[
                        PopupMenuItem(
                          value: Menu[0],
                          child: Text('Progress'),
                        ),
                        PopupMenuItem(
                          onTap: () {},
                          value: Menu[1],
                          child: Text('Reassign'),
                        ),
                        PopupMenuItem(
                          value: Menu[2],
                          child: Text('Edit'),
                        ),
                      ]),
                ),
              )
            ]));
  }
}
