import 'package:flutter/material.dart';

class TextListViewBuilder extends StatelessWidget {
  final List<String> timeList;
  final List<String> agendaList;

  TextListViewBuilder({required this.timeList, required this.agendaList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14.0),
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: timeList.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // Circular Container
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFDEFBB8),
                        ),
                      ),
                    ),

                    // Text Overlaid on the Circular Container
                    Text(
                      timeList[index],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                        fontFamily: 'SatoshiBold',
                      ),
                    ),
                  ],
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    child: Text(
                      agendaList[index],
                      style: TextStyle(
                        color: Color(0xFF696D61),
                        fontSize: 14.0,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
