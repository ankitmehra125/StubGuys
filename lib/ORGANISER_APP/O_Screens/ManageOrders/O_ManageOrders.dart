import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/ManageOrders/Components/orderssampledata.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/ManageOrders/Refund.dart';
import 'package:badges/badges.dart' as badges;


bool OrderManage = false;

class ManageOrders extends StatefulWidget {
  const ManageOrders({super.key});

  @override
  State<ManageOrders> createState() => _ManageOrdersState();
}

class _ManageOrdersState extends State<ManageOrders> {
  TextEditingController searchController = TextEditingController();
  String selectedOption = '';

  @override
  void initState() {
    super.initState();
    selectedOption = 'Option 1'; // Set the first option as selected by default
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50.0),
                  child: const Text(
                    "Manage\nOrders",
                    style: TextStyle(
                      color: Color(0xFF201335),
                      fontSize: 40,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                ),

                badges.Badge(
                  badgeContent: Text("3",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Colors.white
                  ),),
                  badgeStyle: badges.BadgeStyle(
                      badgeColor: Color(0xff8DC73F)
                  ),
                  child: SvgPicture.asset('Assets/ORGANISER_APP/Icons/Dashboard/bell.svg'),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  UiHelper.CustomTextField(
                      searchController, "Search", Icons.search),
                  Container(
                    width: 114.0,
                    height: MediaQuery.of(context).size.height * 0.060,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9F9F9),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.menu_sharp,
                            size: 14,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            "Filter by",
                            style: TextStyle(
                              color: Color(0xFF201335),
                              fontSize: 16,
                              fontFamily: 'SatoshiRegular',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Text(
              "Showing 1 of 795 orders",
              style: TextStyle(
                color: Color(0xFF201335),
                fontSize: 16,
                fontFamily: 'SatoshiRegular',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (refundData == true) {
                              OrderManage = !OrderManage;
                            }
                            selectedOption = 'Option 1';
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Orders',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: selectedOption == 'Option 1'
                                    ? 'SatoshiBold'
                                    : 'SatoshiRegular',
                                color: selectedOption == 'Option 1'
                                    ? const Color(0xFF8DC73F) // Selected color
                                    : const Color(0xFF696D61),
                              ),
                            ),
                            selectedOption == 'Option 1'
                                ? Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Container(
                                      height: 2.0,
                                      width: 150.0,
                                      color: const Color(0xFF8DC73F),
                                    ),
                                  )
                                : Container(
                                    height: 2.0,
                                    width: 150.0,
                                  ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (refundData == false) {
                              OrderManage = !OrderManage;
                            }

                            selectedOption = 'Option 2';
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Refund Requests',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: selectedOption == 'Option 2'
                                    ? 'SatoshiBold'
                                    : 'SatoshiRegular',
                                color: selectedOption == 'Option 2'
                                    ? const Color(0xFF8DC73F) // Selected color
                                    : const Color(0xFF696D61),
                              ),
                            ),
                            selectedOption == 'Option 2'
                                ? Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Container(
                                      height: 2.0,
                                      width: 150.0,
                                      color: const Color(0xFF8DC73F),
                                    ),
                                  )
                                : Container(
                                    height: 2.0,
                                    width: 150.0,
                                  ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Scrollable ListView.builder
            selectedOption == 'Option 1'
                ? Expanded(
                    child: ListView.builder(
                      itemCount: transactionData
                          .length, // Adjust the item count as needed
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      width: 38.0,
                                      height: 38.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: transactionData[index]
                                                    ['status'] ==
                                                'outgoing'
                                            ? const Color(0xFFECFFD2)
                                            : const Color(0xFFFFD2D2),
                                      ),
                                      child: Center(
                                        child: transactionData[index]
                                                    ['status'] ==
                                                'outgoing'
                                            ? SvgPicture.asset(
                                                'Assets/ORGANISER_APP/Icons/Orders/outgoing.svg',
                                                width: 16.0,
                                                height: 16.0,
                                              )
                                            : SvgPicture.asset(
                                                'Assets/ORGANISER_APP/Icons/Orders/incoming.svg',
                                                width: 16.0,
                                                height: 16.0,
                                              ),
                                      )),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        transactionData[index]['name']!,
                                        style: const TextStyle(
                                          color: Color(0xFF696D61),
                                          fontSize: 16,
                                          fontFamily: 'SatoshiBold',
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            transactionData[index]['details']!,
                                            style: const TextStyle(
                                              color: Color(0xFF696D61),
                                              fontSize: 10,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                          Text(
                                            transactionData[index]
                                                ['timestamp']!,
                                            style: const TextStyle(
                                              color: Color(0xFF696D61),
                                              fontSize: 10,
                                              fontFamily: 'SatoshiMedium',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                '-${transactionData[index]['price']}',
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount:
                          refundData.length, // Adjust the item count as needed
                      itemBuilder: (context, index) {
                        return Slidable(
                          key: ValueKey(index),
                          endActionPane: ActionPane(
                            motion: const ScrollMotion(),
                            children: [
                              CustomSlidableAction(
                                // An action can be bigger than the others.
                                flex: 1,
                                onPressed: (context) {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        backgroundColor: Colors.white,
                                        surfaceTintColor: Colors.white,
                                        content: SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.37,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          child: Column(children: [
                                            SizedBox(
                                              height: 40,
                                            ),
                                            const Text(
                                              "Are you sure you want to issue a refund to Petter",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontFamily: 'SatoshiBold',
                                                  color: Color(0xff201335)),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            const Text(
                                              'Note: This action cannot be reversed.',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xffFF3D00),
                                                  fontFamily: 'SantoshiLight'),
                                            ),
                                            SizedBox(
                                              height: 70,
                                            ),
                                            GestureDetector(
                                              onTap: () => {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const RefundIssued()),
                                                )
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.055,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      color: const Color(
                                                          0xff201335)),
                                                  child: const Center(
                                                    child: Text(
                                                      "Yes, Issue refund!",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                          fontFamily:
                                                              'SatoshiMedium'),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            GestureDetector(
                                              onTap: () => {},
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16),
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.055,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(
                                                              0xff8DC73F)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      color: const Color(
                                                          0xffffffff)),
                                                  child: const Center(
                                                    child: Text(
                                                      "No, cancel.",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff8DC73F),
                                                          fontSize: 16,
                                                          fontFamily:
                                                              'SatoshiMedium'),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ),
                                      );
                                    },
                                  );
                                },

                                backgroundColor: Color(0xFFFF3D00),
                                foregroundColor: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        'Assets/Images/Icon/ref.svg'),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Issue refund',
                                      style: TextStyle(
                                          fontSize: 8,
                                          fontFamily: 'SatoshiBold'),
                                    ),
                                  ],
                                ),
                              ),
                              CustomSlidableAction(
                                // An action can be bigger than the others.
                                flex: 1,
                                onPressed: (context) {},

                                backgroundColor: Color(0xFF201335),
                                foregroundColor: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Details',
                                      style: TextStyle(
                                          fontSize: 8,
                                          fontFamily: 'SatoshiBold'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        width: 38.0,
                                        height: 38.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: refundData[index]['status'] ==
                                                  'outgoing'
                                              ? const Color(0xFFECFFD2)
                                              : const Color(0xFFFFD2D2),
                                        ),
                                        child: Center(
                                          child: refundData[index]['status'] ==
                                                  'outgoing'
                                              ? SvgPicture.asset(
                                                  'Assets/ORGANISER_APP/Icons/Orders/outgoing.svg',
                                                  width: 16.0,
                                                  height: 16.0,
                                                )
                                              : SvgPicture.asset(
                                                  'Assets/ORGANISER_APP/Icons/Orders/incoming.svg',
                                                  width: 16.0,
                                                  height: 16.0,
                                                ),
                                        )),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          refundData[index]['name']!,
                                          style: const TextStyle(
                                            color: Color(0xFF696D61),
                                            fontSize: 16,
                                            fontFamily: 'SatoshiBold',
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              refundData[index]['details']!,
                                              style: const TextStyle(
                                                color: Color(0xFF696D61),
                                                fontSize: 10,
                                                fontFamily: 'SatoshiMedium',
                                              ),
                                            ),
                                            Text(
                                              refundData[index]['timestamp']!,
                                              style: const TextStyle(
                                                color: Color(0xFF696D61),
                                                fontSize: 10,
                                                fontFamily: 'SatoshiMedium',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  '-${refundData[index]['price']}',
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class UiHelper {
  static CustomTextField(
      TextEditingController controller, String text, IconData icon) {
    return Builder(
      builder: (context) {
        var mQuery = MediaQuery.of(context);
        return SizedBox(
          height: mQuery.size.height * 0.060,
          width: 250,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFF1F1F2),
                  width: 1.0, // Unfocused border width
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFF1F1F2),
                  width: 2.0, // Focused border width
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFF1F1F2),
                  width: 1.0, // Unfocused border width
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: text,
              hintStyle: const TextStyle(color: Color(0xFFF1F1F2)),
              prefixIcon: Icon(
                icon,
                color: const Color(0xFFF1F1F2),
              ),
            ),
          ),
        );
      },
    );
  }
}