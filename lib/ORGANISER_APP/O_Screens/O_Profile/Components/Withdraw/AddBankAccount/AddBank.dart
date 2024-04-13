import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddBank extends StatefulWidget {
  const AddBank({Key? key});

  @override
  State<AddBank> createState() => _AddBankState();
}

class _AddBankState extends State<AddBank> {
  TextEditingController routingNumberController = TextEditingController();
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController confirmAccountNumberController =
      TextEditingController();
  TextEditingController accountNickNameController = TextEditingController();
  String selectedAccountType = "Checking";

  void _showState(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: const Center(
            child: Text('Your Dynamic Bottom Sheet Content'),
          ),
        );
      },
    );
  }

  void _onAccountTypeSelected(String accountType) {
    setState(() {
      selectedAccountType = accountType; // Update the selected account type
    });
    Navigator.of(context).pop();
  }

  void _showBankAccount(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        var mQuery = MediaQuery.of(context);
        return Container(
            height: mQuery.size.height * 0.42,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: mQuery.size.height * 0.048,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Event Type", //here
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff201335),
                              fontFamily: 'SatoshiBold'),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Color(0xff545454),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      _onAccountTypeSelected("Checking");
                    },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.067,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedAccountType == "Checking"
                              ? const Color(
                                  0xff8DC73F) // Set the border color to green when selected
                              : const Color(0xFFF1F1F2),
                        ),
                        color: selectedAccountType == "Checking"
                            ? const Color(0xffF0FFDD)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Checking",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: selectedAccountType == "Checking"
                                      ? const Color(0xff8DC73F)
                                      : const Color(0xff201335),
                                  fontFamily: 'SatoshiMedium'),
                            ),
                            if (selectedAccountType == "Checking")
                              if (selectedAccountType == "Checking")
                                SvgPicture.asset(
                                    "Assets/ORGANISER_APP/Images/O_Profile/prime_check-circle.svg")
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      _onAccountTypeSelected("Savings");
                    },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.067,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedAccountType == "Savings"
                              ? const Color(
                                  0xff8DC73F) // Set the border color to green when selected
                              : const Color(0xFFF1F1F2),
                        ),
                        color: selectedAccountType == "Savings"
                            ? const Color(0xffF0FFDD)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Savings",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: selectedAccountType == "Savings"
                                      ? const Color(0xff8DC73F)
                                      : const Color(0xff201335),
                                  fontFamily: 'SatoshiMedium'),
                            ),
                            if (selectedAccountType == "Savings")
                              SvgPicture.asset(
                                  "Assets/ORGANISER_APP/Images/O_Profile/prime_check-circle.svg")
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedAccountType = selectedAccountType;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      width: double.infinity,
                      height: mQuery.size.height * 0.055,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xff201335)),
                      child: const Center(
                        child: Text(
                          "Save",
                          style: TextStyle(
                              color: Color(0xffF1F1F2),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'SatoshiMedium'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: mQuery.size.height * 0.17,
              color: const Color(0xffDEFBB8),
              child: Column(
                children: [
                  SizedBox(
                    height: mQuery.size.height * 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "Assets/ORGANISER_APP/Icons/Orders/formkit_arrowleft.svg",
                        ),
                        SizedBox(width: mQuery.size.width * 0.1),
                        const Text(
                          "Add Bank Account",
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff201335),
                            fontFamily: 'SatoshiBold',
                            height: 1.1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // STATE
            SizedBox(height: mQuery.size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "State",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff5E6366),
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  GestureDetector(
                    onTap: () {
                      _showState(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            10), // Adjust border radius as needed
                        border: Border.all(
                          color: const Color(
                              0xFFF1F1F2), // Adjust border color as needed
                          width: 2, // Adjust border width as needed
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Texas",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xffABAFB1),
                                fontFamily: 'SatoshiMedium',
                                height: 1.1,
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_down_rounded,
                                color: Color(0xffABAFB1))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // BANK ACCOUNT TYPE
            SizedBox(height: mQuery.size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Bank Account Type",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff5E6366),
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  GestureDetector(
                    onTap: () {
                      _showBankAccount(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            10), // Adjust border radius as needed
                        border: Border.all(
                          color: const Color(
                              0xFFF1F1F2), // Adjust border color as needed
                          width: 2, // Adjust border width as needed
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '$selectedAccountType',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xffABAFB1),
                                fontFamily: 'SatoshiMedium',
                                height: 1.1,
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_down_rounded,
                                color: Color(0xffABAFB1))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // BANK NAME
            SizedBox(height: mQuery.size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Bank Name",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff5E6366),
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          10), // Adjust border radius as needed
                      border: Border.all(
                        color: const Color(
                            0xFFF1F1F2), // Adjust border color as needed
                        width: 2, // Adjust border width as needed
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Bank of America",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xffABAFB1),
                              fontFamily: 'SatoshiMedium',
                              height: 1.1,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down_rounded,
                              color: Color(0xffABAFB1))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // ROUTING NUMBER
            SizedBox(height: mQuery.size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Routing Number",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff5E6366),
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          10), // Adjust border radius as needed
                      border: Border.all(
                        color: const Color(
                            0xFFF1F1F2), // Adjust border color as needed
                        width: 2, // Adjust border width as needed
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: Color(0xffABAFB1),
                      ),
                      cursorColor: Colors.grey,
                      controller: routingNumberController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 8),
                          hintText: "XXXXXXXXXX",
                          hintStyle: TextStyle(
                            color: Color(0xffABAFB1),
                            fontSize: 13,
                          ),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xffF1F1F2)))),
                    ),
                  ),
                ],
              ),
            ),

            // ACCOUNT NUMBER
            SizedBox(height: mQuery.size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Account Number",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff5E6366),
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          10), // Adjust border radius as needed
                      border: Border.all(
                        color: const Color(
                            0xFFF1F1F2), // Adjust border color as needed
                        width: 2, // Adjust border width as needed
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: Color(0xffABAFB1),
                      ),
                      cursorColor: Colors.grey,
                      controller: accountNumberController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 8),
                          hintText: "XXXXXXXXXX",
                          hintStyle: TextStyle(
                            color: Color(0xffABAFB1),
                            fontSize: 13,
                          ),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xffF1F1F2)))),
                    ),
                  ),
                ],
              ),
            ),

            // CONFIRM ACCOUNT NUMBER
            SizedBox(height: mQuery.size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Confirm Account Number",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff5E6366),
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          10), // Adjust border radius as needed
                      border: Border.all(
                        color: const Color(
                            0xFFF1F1F2), // Adjust border color as needed
                        width: 2, // Adjust border width as needed
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: Color(0xffABAFB1),
                      ),
                      cursorColor: Colors.grey,
                      controller: confirmAccountNumberController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 8),
                          hintText: "XXXXXXXXXX",
                          hintStyle: TextStyle(
                            color: Color(0xffABAFB1),
                            fontSize: 13,
                          ),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xffF1F1F2)))),
                    ),
                  ),
                ],
              ),
            ),

            // ACCOUNT NICKNAME
            SizedBox(height: mQuery.size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Account Nickname",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff5E6366),
                      fontFamily: 'SatoshiMedium',
                      height: 1.1,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  GestureDetector(
                    child: Container(
                      width: double.infinity,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            10), // Adjust border radius as needed
                        border: Border.all(
                          color: const Color(
                              0xFFF1F1F2), // Adjust border color as needed
                          width: 2, // Adjust border width as needed
                        ),
                      ),
                      child: TextField(
                        style: TextStyle(
                          color: Color(0xffABAFB1),
                        ),
                        cursorColor: Colors.grey,
                        controller: accountNickNameController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 8),
                            hintText: "e.g My Savings Wells Fargo",
                            hintStyle: TextStyle(
                              color: Color(0xffABAFB1),
                              fontSize: 13,
                            ),
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffF1F1F2)))),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: mQuery.size.height * 0.024,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                height: mQuery.size.height * 0.055,
                decoration: BoxDecoration(
                    color: Color(0xff201335),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'SatoshiMedium'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
