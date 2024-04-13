import 'package:flutter/material.dart';

class HashTag extends StatefulWidget {
  const HashTag({super.key});

  @override
  State<HashTag> createState() => _HashTagState();
}

class _HashTagState extends State<HashTag> {
  List<String> list = ['Java', 'Flutter', 'Kotlin', 'Swift', 'Objective-C'],
      selected = [];
  late TextEditingController tc;

  @override
  void initState() {
    super.initState();
    tc = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        border: Border.all(
          color: const Color(0xFFF1F1F2),
        ),
      ),
      child: Center(
        child: TextField(
          controller: tc,
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
          onChanged: (text) {
            // Split the text using commas and update the selected tags
            setState(() {
              selected = text.split(',').map((tag) => tag.trim()).toList();
            });
          },
          onSubmitted: (text) {
            // Clear the TextField when a comma is entered
            if (text.endsWith(',')) {
              setState(() {
                tc.text = '';
              });
            }
          },
          decoration: InputDecoration(
            hintText: "Use , to separate multiple tags",
            hintStyle: TextStyle(
              color: Color(0xFFABAFB1),
              fontSize: 13,
              fontFamily: 'SatoshiMedium',
            ),
            border: InputBorder.none,  
            prefixIcon: selected.length < 1
                ? null
                : Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: selected.map((s) {
                        return Chip(
                          deleteIcon: Icon(Icons.close),
                          backgroundColor: Color(0xFFFFFFFF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                              side: BorderSide(color: Colors.white)),
                          label: Text(s, style: TextStyle(color: Color(0xFF5E6366))),
                          onDeleted: () {
                            setState(() {
                              selected.remove(s);
                              tc.text = selected.join(', ');
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
