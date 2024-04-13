import 'package:flutter/material.dart';

class GetHelptiles extends StatefulWidget {
  final String Title;
  final String SubTitle;
  final String NumberofArticles;

  const GetHelptiles({
    Key? key,
    required this.Title,
    required this.SubTitle,
    required this.NumberofArticles,
  }) : super(key: key);

  @override
  State<GetHelptiles> createState() => _GetHelptilesState();
}

class _GetHelptilesState extends State<GetHelptiles> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,right: 15,top: 10,bottom: 5
          ),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          widget.Title,
                          style: const TextStyle(
                            color: Color(0xFF201335),
                            fontSize: 17,
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          widget.SubTitle,
                          style: const TextStyle(
                            color: Color(0xFFC4C4C4),
                            fontSize: 14,
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          widget.NumberofArticles,
                          style: const TextStyle(
                            color: Color(0xFFC4C4C4),
                            fontSize: 14,
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Color(0xFFC4C4C4),
                )
              ],
            ),
          ),
        ),
        const Padding(
          padding:
              EdgeInsets.only(top: 5.0, left: 16.0, right: 16.0, bottom: 17.0),
          child: Divider(
            height: 1.0,
            thickness: 0.3,
            color: Color(0xFFC4C4C4), // Set the color of the divider
          ),
        ),
      ],
    );
  }
}
