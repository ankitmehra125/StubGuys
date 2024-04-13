import 'package:flutter/material.dart';

class MyListViewBuilder extends StatefulWidget {
  @override
  _MyListViewBuilderState createState() => _MyListViewBuilderState();
}

class _MyListViewBuilderState extends State<MyListViewBuilder> {
  // Example data - replace it with your own list of maps
  final List<Map<String, dynamic>> dataList = [
    {
      'image': 'Assets/Images/Components/browseeventsexample1.jpg',
      'text1': 'Unleashing Africa’s Future with Bill Gates',
      'text2': 'Sat, June 23',
      'liked': true,
    },
    {
      'image': 'Assets/Images/Components/browseeventsexample2.jpg',
      'text1': 'Stubguys Launch 2023',
      'text2': 'September 1',
      'liked': false,
    },
    {
      'image': 'Assets/Images/Components/browseeventsexample3.png',
      'text1': 'Stubguys Launch 2024 Latest',
      'text2': 'September 10 26',
      'liked': false,
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
          padding: const EdgeInsets.only(bottom: 10.0),
          child: SizedBox(
            height: 70,
            child: ListTile(
              leading: Container(
                width: 78,
                height: 58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Image.asset(
                  rowData['image'],
                  fit: BoxFit.contain,
                ),
              ),
              title: Column(
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
                  Text(
                    rowData['text2'],
                    style: const TextStyle(
                      color: Color(0xFF8DC73F),
                      fontSize: 13.0,
                      fontFamily: 'SatoshiRegular',
                    ),
                  ),
                ],
              ),
              trailing: InkWell(
                onTap: () {
                  setState(() {
                    // Toggle the 'liked' status on tap
                    rowData['liked'] = !rowData['liked'];
                  });
                },
                child: Icon(
                  rowData['liked'] ? Icons.favorite : Icons.favorite_border,
                  color: rowData['liked'] ? Colors.red : null,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
