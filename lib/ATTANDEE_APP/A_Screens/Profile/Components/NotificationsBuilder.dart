import 'package:flutter/material.dart';

class NotificationBuilder extends StatefulWidget {
  @override
  _NotificationBuilderState createState() => _NotificationBuilderState();
}

class _NotificationBuilderState extends State<NotificationBuilder> {
  // Example data - replace it with your own list of maps
  final List<Map<String, dynamic>> dataList = [
    {
      'image': 'Assets/Images/Components/browseeventsexample1.jpg',
      'text1':
          'Unleashing Africa’s Future with bill Gates starts today. Don’t forget to set a reminder.',
      'ticket': false,
    },
    {
      'image': 'Assets/Images/Components/browseeventsexample2.jpg',
      'text1': 'Stubguys has announced a new date for Stubguys Launch 2023',
      'ticket': false,
    },
    {
      'image': 'Assets/Images/Components/browseeventsexample3.png',
      'text1': 'Felix transferred “Stubguys 2023” ticket to you.',
      'ticket': true,
    },
    {
      'image': 'Assets/Images/Components/browseeventsexample1.jpg',
      'text1': 'Cookathan event 2023 postponed. Tap for full details.',
      'ticket': false,
    },
    // Add more data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        final Map<String, dynamic> rowData = dataList[index];

        return Padding(
          padding: const EdgeInsets.only(
              left: 14.0, top: 7.0, right: 14.0, bottom: 14.0),
          child: Row(
            children: [
              SizedBox(
                width: 93,
                height: 64,
                child: Image.asset(
                  rowData['image'],
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      rowData['text1'],
                      style: const TextStyle(
                        color: Color(0xFF201335),
                        fontSize: 13.0,
                        fontFamily: 'SatoshiBold',
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    if (rowData['ticket'] ==
                        true) // Conditionally display buttons
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Implement the action for the button
                            },
                            style: ElevatedButton.styleFrom(
                              primary:
                                  Color(0xFF8DC73F), // Set the background color
                              onPrimary: Colors.white, // Set the text color
                              minimumSize: Size(
                                  110, 38), // Set the minimum width and height
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0), // Set the border radius
                              ),
                            ),
                            child: Text('Button 1'),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              // Implement the action for the button
                            },
                            style: ElevatedButton.styleFrom(
                              primary:
                                  Color(0xFF201335), // Set the background color
                              onPrimary: Colors.white, // Set the text color
                              minimumSize: Size(
                                  110, 38), // Set the minimum width and height
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0), // Set the border radius
                              ),
                            ),
                            child: Text('Button 1'),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
        /*
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
            child: Container(
              height: 100,
              child: ListTile(
                leading: Expanded(
                  child: Container(
                  
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Image.asset(
                      rowData['image'],
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                title: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        rowData['text1'],
                        style: const TextStyle(
                          color: Color(0xFF201335),
                          fontSize: 14.0,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      if (rowData['ticket'] ==
                          true) // Conditionally display buttons
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Implement the action for the button
                              },
                              style: ElevatedButton.styleFrom(
                                primary:
                                    Color(0xFF8DC73F), // Set the background color
                                onPrimary: Colors.white, // Set the text color
                                minimumSize: Size(100,
                                    35), // Set the minimum width and height
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Set the border radius
                                ),
                              ),
                              child: Text('Button 1'),
                            ),
                            SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {
                                // Implement the action for the button
                              },
                              style: ElevatedButton.styleFrom(
                                primary:
                                    Color(0xFF201335), // Set the background color
                                onPrimary: Colors.white, // Set the text color
                                minimumSize: Size(100,
                                    35), // Set the minimum width and height
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Set the border radius
                                ),
                              ),
                              child: Text('Button 1'),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );*/
      },
    );
  }
}
