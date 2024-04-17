import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/EventDetails/GetTickets/Step4.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/MyTickets/Mytickets.dart';



class Step5 extends StatefulWidget {
  const Step5({Key? key}) : super(key: key);

  @override
  State<Step5> createState() => _Step5State();
}

class _Step5State extends State<Step5> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        color: const Color(0xFF201335),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery
                    .of(context)
                    .size
                    .height * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the Material Page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Step4()),
                      );
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                        'Assets/Images/Components/step1_back.svg',
                        height: 40.0,
                        width: 40.0,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Edit Ticket Information',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.0,
                          fontFamily: 'SatoshiBold',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    width: 50,
                    height: 50,
                    child: SvgPicture.asset(
                      'Assets/Images/Components/step1_bell.svg',
                      height: 40.0,
                      width: 40.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.02,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: mQuery.size.width * 0.045
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: mQuery.size.height * 0.03,),
                            Text('Ticket 1', style: TextStyle(
                                color: Color(0xff201335),
                                fontFamily: 'SatoshiBold',
                                fontSize: 20
                            ),),
                            SizedBox(height: mQuery.size.height * 0.023,),
                            Text("Unleashing Africa’s Future with bill Gates",
                              style: TextStyle(
                                  fontFamily: 'SatoshiBold',
                                  color: Color(0xff201335),
                                  fontSize: 16
                              ),),
                            SizedBox(height: mQuery.size.height * 0.02,),
                            Text('General Admission', style: TextStyle(
                                color: Color(0xffE3E3E3),
                                fontFamily: 'SatoshiBold'
                            ),),
                            SizedBox(height: mQuery.size.height * 0.03,),
                            Container(
                              width: double.infinity,
                              height: mQuery.size.height * 0.075,
                              padding: EdgeInsets.only(
                                left: mQuery.size.width*0.03
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30)
                                  ),
                                  border: Border.all(
                                      color: Color(0xffE3E3E3)
                                  )
                              ),
                              child: Row(
                                children: [
                                  Text("First Name",style: TextStyle(
                                    color: Color(0xffE3E3E3
                                    ),
                                    fontFamily: 'SatoshiMedium'
                                  ),),
                                  SizedBox(width: mQuery.size.width*0.05,),
                                  Expanded(
                                    child: TextField(
                                      cursorColor: Colors.grey,
                                      controller: firstNameController,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Cavil",
                                        hintStyle: TextStyle(
                                          color: Color(0xff201335),
                                          fontFamily: 'SatoshiMedium'
                                        ),
                                        focusedBorder: InputBorder.none
                                      ),
                                    )
                                  )
                                ],
                              ),
                            ),

                            Container(
                              width: double.infinity,
                              height: mQuery.size.height * 0.075,
                              padding: EdgeInsets.only(
                                left: mQuery.size.width*0.03
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft : Radius.circular(30),
                                      bottomRight : Radius.circular(30)
                                  ),
                                  border: Border.all(
                                      color: Color(0xffE3E3E3)
                                  )
                              ),
                              child: Row(
                                children: [
                                  Text("Last Name",style: TextStyle(
                                    color: Color(0xffE3E3E3
                                    ),
                                    fontFamily: 'SatoshiMedium'
                                  ),),
                                  SizedBox(width: mQuery.size.width*0.05,),
                                  Expanded(
                                    child: TextField(
                                      cursorColor: Colors.grey,
                                      controller: lastNameController,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Inwang",
                                        hintStyle: TextStyle(
                                          color: Color(0xff201335),
                                          fontFamily: 'SatoshiMedium'
                                        ),
                                        focusedBorder: InputBorder.none
                                      ),
                                    )
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: mQuery.size.height*0.036,),
                            Container(
                              width: double.infinity,
                              height: mQuery.size.height * 0.075,
                              padding: EdgeInsets.only(
                                  left: mQuery.size.width*0.03,
                                  right : mQuery.size.width*0.03,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    30
                                  ),
                                  border: Border.all(
                                      color: Color(0xffE3E3E3)
                                  )
                              ),
                              child: Row(
                                children: [
                                  Text("Email",style: TextStyle(
                                      color: Color(0xffE3E3E3
                                      ),
                                      fontFamily: 'SatoshiMedium'
                                  ),),
                                  SizedBox(width: mQuery.size.width*0.16,),
                                  Expanded(
                                      child: TextField(
                                        cursorColor: Colors.grey,
                                        controller: emailController,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "lordcavil@gmail.com",
                                            hintStyle: TextStyle(
                                                color: Color(0xff201335),
                                                fontFamily: 'SatoshiMedium'
                                            ),
                                            focusedBorder: InputBorder.none
                                        ),
                                      )
                                  ),
                                  SvgPicture.asset("Assets/Images/Icon/circularCheckedIcon.svg")
                                ],
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            GestureDetector(
                              onTap: ()
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return MyTickets();
                                }));
                              },
                              child: Container(
                                width: double.infinity,
                                height: mQuery.size.height*0.065,
                                decoration: BoxDecoration(
                                  color: Color(0xff8DC73F),
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Center(
                                  child: Text("Save",style: TextStyle(
                                    color: Color(0xffF1F1F2),
                                    fontFamily: 'SatoshiBold',
                                    fontSize: 16
                                  ),),
                                ),
                              ),
                            ),
                            SizedBox(height: mQuery.size.height*0.023,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

  
