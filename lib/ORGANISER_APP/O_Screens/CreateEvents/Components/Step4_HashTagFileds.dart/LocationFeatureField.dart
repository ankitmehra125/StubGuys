/*-------------------------------------------------- Location Feature */
import 'package:flutter/material.dart';

Map<int, String> tagsMap = {0: "Private security", 1: "Wheelchair access"};
int _index = 2;

class HashTagLocation extends StatefulWidget {
  final Function(String) onTagAdded;

  const HashTagLocation({Key? key, required this.onTagAdded}) : super(key: key);

  @override
  _HashTagLocationState createState() => _HashTagLocationState();
}

class _HashTagLocationState extends State<HashTagLocation> {
  late TextEditingController tc;

  @override
  void initState() {
    super.initState();
    tc = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all(
                    color: const Color(0xFFF1F1F2),
                  ),
                ),
                child: TextFormField(
                  controller: tc,
                  cursorColor: Colors.black,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (text) {
                    // Update the tags map when text is changed
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                    hintText: "Features and amenities e.g. Swimming pool",
                    hintStyle: TextStyle(
                      color: Color(0xFFABAFB1),
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        //Adding or removing texts

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                if (tc.text.isNotEmpty) {
                  widget.onTagAdded(tc.text);
                  tc.clear();
                }
              },
              child: const Row(
                children: [
                  Text(
                    "+",
                    style: TextStyle(
                      color: Color(0xFF8DC73F),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                  SizedBox(width: 6.0),
                  Text(
                    "Add another one",
                    style: TextStyle(
                      color: Color(0xFF8DC73F),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // Check if tagsMap is not empty
                  if (tagsMap.isNotEmpty) {
                    // Remove the last item from tagsMap
                    tagsMap.remove(tagsMap.keys.last);
                  }
                });
              },
              child: const Row(
                children: [
                  Text(
                    "+",
                    style: TextStyle(
                      color: Color(0xFFE71D36),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                  SizedBox(width: 6.0),
                  Text(
                    "Remove",
                    style: TextStyle(
                      color: Color(0xFFE71D36),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    tc.dispose();
    super.dispose();
  }
}
