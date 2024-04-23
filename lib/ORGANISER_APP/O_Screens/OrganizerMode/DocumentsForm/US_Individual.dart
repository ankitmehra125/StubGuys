import 'package:badges/badges.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';

class USIndividual extends StatefulWidget {
  const USIndividual({super.key});

  @override
  State<USIndividual> createState() => _USIndividualState();
}

class _USIndividualState extends State<USIndividual> {

  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;
  int focusedIndex = -1;

  @override
  void initState() {
    super.initState();
    controllers = List.generate(9, (_) => TextEditingController());
    focusNodes = List.generate(9, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  int selectedContainerIndex = -1;

  TextEditingController entityNameController = TextEditingController();
  TextEditingController bussinessNameController = TextEditingController();
  TextEditingController exemptPayeeController = TextEditingController();
  TextEditingController fatcaController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController accountsController = TextEditingController();
  TextEditingController requesterController = TextEditingController();
  TextEditingController signatureController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);

    final defaultPinTheme = PinTheme(
        width: 31,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: Color(0xffC8C8C8)
            )
        )
    );

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: mQuery.size.width * 0.045
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: mQuery.size.height * 0.032,),
              SvgPicture.asset("Assets/Images/exitIcon.svg"),
              SizedBox(height: mQuery.size.height * 0.032,),
              Text("US Individual or Entity (W-9 Form)", style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height * 0.023,),
              Text(
                "Request for Taxpayer Identification Number and Certification",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'SatoshiBold'
                ),),
              SizedBox(height: mQuery.size.height * 0.032,),
              Text(
                "1 Name of entity/individual. An entry is required. (For a sole proprietor or disregarded entity, enter the owner’s name on line 1, and enter the business/disregarded entity’s name on line 2.)",
                style: TextStyle(
                    color: Color(0xff696D61),
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium'
                ),),
              SizedBox(height: mQuery.size.height * 0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height * 0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width * 0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: entityNameController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height * 0.023,),


              Text(
                "2 Business name/disregarded entity name, if different from above.",
                style: TextStyle(
                    color: Color(0xff696D61),
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium'
                ),),
              SizedBox(height: mQuery.size.height * 0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height * 0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width * 0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: bussinessNameController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height * 0.023,),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "3a",style: TextStyle(
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258,),
                      fontSize: 13
                    )
                    ),
                    TextSpan(
                        text: " Check the appropriate box for federal tax classification of the entity/individual whose name is entered on line 1. Check only ",style: TextStyle(
                        fontFamily: 'SatoshiMedium',
                        color: Color(0xff5E6258,),
                        fontSize: 13
                    )
                    ),
                    TextSpan(
                        text: " one",style: TextStyle(
                        fontFamily: 'SatoshiBold',
                        color: Color(0xff5E6258,),
                        fontSize: 13
                    )
                    ),
                    TextSpan(
                        text: " of the following seven boxes.",style: TextStyle(
                        fontFamily: 'SatoshiMedium',
                        color: Color(0xff5E6258,),
                        fontSize: 13
                    )
                    ),

              ])
        ),
              SizedBox(height: mQuery.size.height*0.023,),
              Row(
                children: [
                  GestureDetector(
                    onTap: ()
                    {
                      setState(() {
                        selectedContainerIndex = 0;
                      });
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: selectedContainerIndex == 0 ? Color(0xff8DC73F) : Colors.white,
                        border: Border.all(
                          color: Color(0xffCFD3D4)
                        )
                      ),
                      child: Center(
                        child: selectedContainerIndex == 0 ? Icon(Icons.check,color : Colors.white,
                         size: mQuery.size.height*0.02,) : null,
                      ),
                    ),
                  ),
                  SizedBox(width: mQuery.size.width*0.02,),
                  Text("Individual/sole proprietor",style: TextStyle(
                    color: Color(0xff83898C),
                    fontSize: 12,
                    fontFamily: 'SatoshiMedium'
                  ),
                  ),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: ()
                    {
                      setState(() {
                        selectedContainerIndex = 1;
                      });
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: selectedContainerIndex == 1 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: Color(0xffCFD3D4)
                          )
                      ),
                      child: Center(
                        child: selectedContainerIndex == 1 ? Icon(Icons.check,color : Colors.white,
                          size: mQuery.size.height*0.02,) : null,
                      ),
                    ),
                  ),
                  SizedBox(width: mQuery.size.width*0.02,),
                  Text("C corporation",style: TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium'
                  ),)
                ],
              ),
              SizedBox(height: mQuery.size.height*0.02,),
              Row(
                children: [
                  GestureDetector(
                    onTap: ()
                    {
                      setState(() {
                        selectedContainerIndex = 2;
                      });
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: selectedContainerIndex == 2 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: Color(0xffCFD3D4)
                          )
                      ),
                      child: Center(
                        child: selectedContainerIndex == 2 ? Icon(Icons.check,color : Colors.white,
                          size: mQuery.size.height*0.02,) : null,
                      ),
                    ),
                  ),
                  SizedBox(width: mQuery.size.width*0.02,),
                  Text("S corporation",style: TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium'
                  ),
                  ),
                  SizedBox(width: mQuery.size.width*0.052,),
                  GestureDetector(
                    onTap: ()
                    {
                      setState(() {
                        selectedContainerIndex = 3;
                      });
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: selectedContainerIndex == 3 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: Color(0xffCFD3D4)
                          )
                      ),
                      child: Center(
                        child: selectedContainerIndex == 3 ? Icon(Icons.check,color : Colors.white,
                          size: mQuery.size.height*0.02,) : null,
                      ),
                    ),
                  ),
                  SizedBox(width: mQuery.size.width*0.02,),
                  Text("Partnership",style: TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium'
                  ),),
                  Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: ()
                    {
                      setState(() {
                        selectedContainerIndex = 4;
                      });
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: selectedContainerIndex == 4 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: Color(0xffCFD3D4)
                          )
                      ),
                      child: Center(
                        child: selectedContainerIndex == 4 ? Icon(Icons.check,color : Colors.white,
                          size: mQuery.size.height*0.02,) : null,
                      ),
                    ),
                  ),
                  SizedBox(width: mQuery.size.width*0.02,),
                  Text("Trust/estate",style: TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium'
                  ),),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.02,),
              Row(
                children: [
                  GestureDetector(
                    onTap: ()
                    {
                      setState(() {
                        selectedContainerIndex = 5;
                      });
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: selectedContainerIndex == 5 ? Color(0xff8DC73F) : Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: Color(0xffCFD3D4)
                          )
                      ),
                      child: Center(
                        child: selectedContainerIndex == 5 ? Icon(Icons.check,color : Colors.white,
                          size: mQuery.size.height*0.02,) : null,
                      ),
                    ),
                  ),
                  SizedBox(width: mQuery.size.width*0.02,),
                  Text("LLC. Enter the tax classification (C = C \ncorporation, S = S corporation, P = Partnership) .",style: TextStyle(
                      color: Color(0xff83898C),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium'
                  ),
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.032,),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Note:",style: TextStyle(
                       fontFamily: 'SatoshiBold',
                      fontSize: 12,
                      color: Color(0xff83898C)
                    )
                    ),
                    TextSpan(
                        text: " Check the “LLC” box above and, in the entry space, enter the appropriate code (C, S, or P) for the tax classification of the LLC, unless it is a disregarded entity. A disregarded entity should instead check the appropriate box for the tax classification of its owner.",style: TextStyle(
                         fontSize: 12,
                        fontFamily: 'SatoshiMedium',
                        color: Color(0xff83898C)
                    )
                    )
                  ]
                )
              ),
              SizedBox(height: mQuery.size.height*0.032,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "3b",style: TextStyle(
                            fontFamily: 'SatoshiBold',
                            fontSize: 12,
                            color: Color(0xff83898C)
                        )
                        ),
                        TextSpan(
                            text: " If on line 3a you checked “Partnership” or “Trust/estate,” or checked “LLC” and entered “P” as its tax classification, and you are providing this form to a partnership, trust, or estate in which you have an ownership interest, check this box if you have any foreign partners, owners, or beneficiaries. See instructions .",style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff83898C)
                        )
                        )
                      ]
                  )
              ),
              SizedBox(height: mQuery.size.height*0.032,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "4",style: TextStyle(
                            fontFamily: 'SatoshiBold',
                            fontSize: 12,
                            color: Color(0xff83898C)
                        )
                        ),
                        TextSpan(
                            text: "  Exemptions (codes apply only to certain entities, not individuals; see instructions on page 3):",style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff83898C)
                        )
                        )
                      ]
                  )
              ),
              SizedBox(height: mQuery.size.height*0.023,),
              Text("Exempt payee code (if any)",style: TextStyle(
                color: Color(0xff5E6258),
                fontSize: 13,
                fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height * 0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width * 0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: exemptPayeeController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),
              SizedBox(height: mQuery.size.height*0.016,),
              Text("Exemption from Foreign Account Tax Compliance Act (FATCA) reporting  code (if any)",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Text("Applies to accounts maintained outside the United States.)",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height * 0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width * 0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: fatcaController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "5",style: TextStyle(
                            fontFamily: 'SatoshiBold',
                            fontSize: 12,
                            color: Color(0xff83898C)
                        )
                        ),
                        TextSpan(
                            text: " Address (number, street, and apt. or suite no.). See instructions",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff83898C)
                        )
                        )
                      ]
                  )
              ),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height * 0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width * 0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: addressController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "6",style: TextStyle(
                            fontFamily: 'SatoshiBold',
                            fontSize: 12,
                            color: Color(0xff83898C)
                        )
                        ),
                        TextSpan(
                            text: " City, state, and ZIP code",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff83898C)
                        )
                        )
                      ]
                  )
              ),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height * 0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width * 0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: cityController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "7",style: TextStyle(
                            fontFamily: 'SatoshiBold',
                            fontSize: 12,
                            color: Color(0xff83898C)
                        )
                        ),
                        TextSpan(
                            text: " List account number(s) here (optional)",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff83898C)
                        )
                        )
                      ]
                  )
              ),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height * 0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width * 0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: accountsController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("Requester’s name and address (optional)",style: TextStyle(
                color: Color(0xff5E6258),
                fontSize: 13,
                fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height * 0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width * 0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: requesterController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),
              
              SizedBox(height: mQuery.size.height*0.055,),
              Text("Part I. Taxpayer Identification Number (TIN)",style: TextStyle(
                fontFamily: 'SatoshiBold',
                color: Colors.black,
                fontSize: 24
              ),),
              SizedBox(height: mQuery.size.height*0.023,),
              Text("Enter your TIN in the appropriate box. The TIN provided must match the name given on line 1 to avoid backup withholding. For individuals, this is generally your social security number (SSN). However, for a resident alien, sole proprietor, or disregarded entity, see the instructions for Part I, later. For other entities, it is your employer identification number (EIN). If you do not have a number, see How to get a TIN, later.",style: TextStyle(
                fontSize: 13,
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiMedium'
              ),),


              SizedBox(height: mQuery.size.height*0.023,),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Note:",style: TextStyle(
                       color: Color(0xff5E6258),
                      fontFamily: 'SatoshiBold',
                      fontSize: 13
                    )
                    ),
                    TextSpan(
                        text: " If the account is in more than one name, see the instructions for line 1. See also What Name and Number To Give the Requester for guidelines on whose number to enter.",style: TextStyle(
                        color: Color(0xff5E6258),
                        fontFamily: 'SatoshiMedium',
                        fontSize: 13
                    )
                    )
                  ]
                ),
              ),
              
              SizedBox(height: mQuery.size.height*0.032,),
              Text("Social security number",style: TextStyle(
                color: Color(0xff5E6258),
                fontSize: 13,
                fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.023,),
              Pinput(
                length: 9,
                defaultPinTheme: defaultPinTheme,
              ),
              SizedBox(height: mQuery.size.height*0.032,),
              Center(
                child: Text("or",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiBold'
                ),),
              ),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("Social security number",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.023,),
              Pinput(
                length: 9,
                defaultPinTheme: defaultPinTheme,
              ),
              
              SizedBox(height: mQuery.size.height*0.032,),
              Text("Part II. Certification",style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.023,),
              Text("Under penalties of perjury, I certify that: ",style: TextStyle(
                color: Color(0xff5E6258),
                fontSize: 13,
                fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.014,),
              Text("1. The number shown on this form is my correct taxpayer identification number (or I am waiting for a number to be issued to me); and",style: TextStyle(
                fontSize: 13,
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),
              Text("2. I am not subject to backup withholding because (a) I am exempt from backup withholding, or (b) I have not been notified by the Internal Revenue Service (IRS) that I am subject to backup withholding as a result of a failure to report all interest or dividends, or (c) the IRS has notified me that I am no longer subject to backup withholding; and ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),
              Text("3. I am a U.S. citizen or other U.S. person (defined below); and ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),
              Text("4. The FATCA code(s) entered on this form (if any) indicating that I am exempt from FATCA reporting is correct.",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.032,),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Certification instructions",style: TextStyle(
                      color: Color(0xff5E6258),
                      fontFamily: 'SatoshiBold',
                      fontSize: 13
                    )
                    ),
                    TextSpan(
                        text: " You must cross out item 2 above if you have been notified by the IRS that you are currently subject to backup withholding because you have failed to report all interest and dividends on your tax return. For real estate transactions, item 2 does not apply. For mortgage interest paid, acquisition or abandonment of secured property, cancellation of debt, contributions to an individual retirement arrangement (IRA), and, generally, payments other than interest and dividends, you are not required to sign the certification, but you must provide your correct TIN. See the instructions for Part II, later",style: TextStyle(
                        color: Color(0xff5E6258),
                        fontFamily: 'SatoshiMedium',
                        fontSize: 13
                    )
                    )
                  ]
                )
              ),
              
              SizedBox(height: mQuery.size.height*0.055,),
              Row(
                children: [
                  Text("Signature of U.S. person",style: TextStyle(
                    color: Color(0xff5E6258),
                    fontSize: 13,
                    fontFamily: 'SatoshiMedium'
                  ),),
                  Expanded(child: SizedBox()),
                  Text("Sign Here",style: TextStyle(
                      color: Color(0xff5E6258),
                      fontSize: 13,
                      fontFamily: 'SatoshiBold'
                  ),),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height * 0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width * 0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: signatureController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),
              
              SizedBox(height: mQuery.size.height*0.032,),
              Text("General Instructions",style: TextStyle(
                fontSize: 24,
                fontFamily: 'SatoshiBold',
                color: Colors.black
              ),),
              SizedBox(height: mQuery.size.height*0.02,),
              Text("Section references are to the Internal Revenue Code unless otherwise noted. Future developments. For the latest information about developments related to Form W-9 and its instructions, such as legislation enacted after they were published, go to www.irs.gov/FormW9.",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("What’s New",style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'SatoshiBold',
                  color: Colors.black
              ),),
              SizedBox(height: mQuery.size.height*0.02,),
              Text("Line 3a has been modified to clarify how a disregarded entity completes this line. An LLC that is a disregarded entity should check the appropriate box for the tax classification of its owner. Otherwise, it should check the “LLC” box and enter its appropriate tax classification. New line 3b has been added to this form. A flow-through entity is required to complete this line to indicate that it has direct or indirect foreign partners, owners, or beneficiaries when it provides the Form W-9 to another flow-through entity in which it has an ownership interest. This change is intended to provide a flow-through entity with information regarding the status of its indirect foreign partners, owners, or beneficiaries, so that it can satisfy any applicable reporting requirements. For example, a partnership that has any indirect foreign partners may be required to complete Schedules K-2 and K-3. See the Partnership Instructions for Schedules K-2 and K-3 (Form 1065).",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("Purpose of Form",style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'SatoshiBold',
                  color: Colors.black
              ),),
              SizedBox(height: mQuery.size.height*0.02,),
              Text("An individual or entity (Form W-9 requester) who is required to file an information return with the IRS is giving you this form because they must obtain your correct taxpayer identification number (TIN), which may be your social security number (SSN), individual taxpayer identification number (ITIN), adoption taxpayer identification number (ATIN), or employer identification number (EIN), to report on an information return the amount paid to you, or other amount reportable on an information return. Examples of information returns include, but are not limited to, the following. ",
               style: TextStyle(
                 fontSize: 13,
                 color: Color(0xff5E6258),
                 fontFamily: 'SatoshiMedium'
               ),
              ),
              SizedBox(height: mQuery.size.height*0.023,),
              RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                    ),
                    TextSpan(
                      text: "Form 1099-INT (interest earned or paid). ",
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Color(0xff696D61),
                          fontFamily: 'SatoshiMedium'
                      ), // Adjust styling as needed
                    ),
                  ],
                ),
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-DIV (dividends, including those from stocks or mutual funds). ",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-MISC (various types of income, prizes, awards, or gross proceeds).",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-NEC (nonemployee compensation). ",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-B (stock or mutual fund sales and certain other transactions by brokers). ",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-S (proceeds from real estate transactions).",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-K (merchant card and third-party network transactions). ",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1098 (home mortgage interest), 1098-E (student loan interest), and 1098-T (tuition). ",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-C (canceled debt). ",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: mQuery.size.height*0.01,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text('\u2022'), // Unicode character for bullet point
                      ),
                      Flexible(
                        child: Text(
                          "Form 1099-A (acquisition or abandonment of secured property). Use Form W-9 only if you are a U.S. person (including a resident alien), to provide your correct TIN. ",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiMedium',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Caution",style: TextStyle(
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiBold',
                            fontSize: 13
                        )
                        ),
                        TextSpan(
                            text: " If you don’t return Form W-9 to the requester with a TIN, you might be subject to backup withholding. See What is backup withholding, later. ",style: TextStyle(
                            color: Color(0xff5E6258),
                            fontFamily: 'SatoshiMedium',
                            fontSize: 13
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "By signing the filled-out form",style: TextStyle(
                       fontSize: 13,
                       color: Color(0xff5E6258),
                       fontFamily: 'SatoshiBold'
                    )
                    ),
                    TextSpan(
                        text: "  you: ",style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff5E6258),
                        fontFamily: 'SatoshiMedium'
                    )
                    )
                  ]
                )
              ),
              SizedBox(height: mQuery.size.height*0.014,),

              Text("1. The number shown on this form is my correct taxpayer identification number (or I am waiting for a number to be issued to me); and",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),

              Text("2. Certify that you are not subject to backup withholding; or ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),

              Text("3. Claim exemption from backup withholding if you are a U.S. exempt payee; and ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),

              Text("4. Certify to your non-foreign status for purposes of withholding under chapter 3 or 4 of the Code (if applicable); and ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.01,),

              Text("5. Certify that FATCA code(s) entered on this form (if any) indicating that you are exempt from the FATCA reporting is correct. See What Is FATCA Reporting, later, for further information. ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.032,),

              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Note:",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiBold',
                      color: Color(0xff5E6258)
                    )
                    ),
                    TextSpan(
                        text: " If you are a U.S. person and a requester gives you a form other than Form W-9 to request your TIN, you must use the requester’s form if it is substantially similar to this Form W-9. ",style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'SatoshiMedium',
                        color: Color(0xff5E6258)
                    )
                    )
                  ]
                )
              ),

              SizedBox(height: mQuery.size.height*0.032,),

              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Definition of a U.S. person",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: " For federal tax purposes, you are considered a U.S. person if you are:  ",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),
              SizedBox(height: mQuery.size.height*0.012,),

              Text(
                "• An individual who is a U.S. citizen or U.S. resident alien; ",
                style: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xff696D61),
                  fontFamily: 'SatoshiMedium',
                ),
              ),
              SizedBox(height: mQuery.size.height*0.007),
              Text(
                "• A partnership, corporation, company, or association created or organized in the United States or under the laws of the United States; ",
                style: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xff696D61),
                  fontFamily: 'SatoshiMedium',
                ),
              ),

              SizedBox(height: mQuery.size.height*0.007),
              Text(
                "• An estate (other than a foreign estate); or ",
                style: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xff696D61),
                  fontFamily: 'SatoshiMedium',
                ),
              ),

              SizedBox(height: mQuery.size.height*0.007),
              Text(
                "• A domestic trust (as defined in Regulations section 301.7701-7). ",
                style: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xff696D61),
                  fontFamily: 'SatoshiMedium',
                ),
              ),

              SizedBox(height: mQuery.size.height*0.032),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Establishing U.S. status for purposes of chapter 3 and chapter 4 withholding. ",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: "Payments made to foreign persons, including certain distributions, allocations of income, or transfers of sales proceeds, may be subject to withholding under chapter 3 or chapter 4 of the Code (sections 1441–1474). Under those rules, if a Form W-9 or other certification of non-foreign status has not been received, a withholding agent, transferee, or partnership (payor) generally applies presumption rules that may require the payor to withhold applicable tax from the recipient, owner, transferor, or partner (payee). See Pub. 515, Withholding of Tax on Nonresident Aliens and Foreign Entities. ",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("The following persons must provide Form W-9 to the payor for purposes of establishing its non-foreign status. ",style: TextStyle(
                fontSize: 13,
                fontFamily: 'SatoshiMedium',
                color: Color(0xff5E6258)
              ),),
              
              Text("• In the case of a disregarded entity with a U.S. owner, the U.S. owner of the disregarded entity and not the disregarded entity. ",style: TextStyle(
                fontSize: 13,
                fontFamily: 'SatoshiMedium',
                color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("• In the case of a grantor trust with a U.S. grantor or other U.S. owner, generally, the U.S. grantor or other U.S. owner of the grantor trust and not the grantor trust. ",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.007,),
              Text("• In the case of a U.S. trust (other than a grantor trust), the U.S. trust and not the beneficiaries of the trust. See Pub. 515 for more information on providing a Form W-9 or a certification of non-foreign status to avoid withholding.",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),

              SizedBox(height: mQuery.size.height*0.045,),
              Text("Foreign person. if you are a foreign person or the U.S branch"
                  "of a foreign bank that has elected to be treated as a U"
                  "person (under Regulations section 1.1441-1(b)(2)(iv) or other "
                  "applicable section for chapter 3 or 4 purposes), do not use Form W-9,instead , use the "
                  "appropriate Form W-8 or Form 8233(see Pub.515),. if you are a qualified foreign pension fund under Regulations section 1.897(|)-1(d)"
                  ", or a partnership that is wholly owned by qualified foreign pension funds, that is treated as a non-foreign person for "
                  "purposes of section 1445 withholding, do not use Form W-9. Instead, use Form W-8EXP(or other certification of non-foreign status).",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("If you are a U.S. resident alien who is relying on an exception contained in the saving clause of a tax treaty to claim an exemption from U.S. tax on certain types of income, you must attach a statement to Form W-9 that specifies the following five items. ",style: TextStyle(
                fontSize: 13,
                fontFamily: 'SatoshiMedium',
                color: Color(0xff5E6258)
              ),),
              
              SizedBox(height: mQuery.size.height*0.023,),
              
              Text("1. The treaty country. Generally, this must be the same treaty under which you claimed exemption from tax as a nonresident alien. ",style: TextStyle(
                fontSize: 13,
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.007,),

              Text("1. The treaty country. Generally, this must be the same treaty under which you claimed exemption from tax as a nonresident alien. ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.007,),

              Text("2. The treaty article addressing the income.",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.007,),

              Text("3. The article number (or location) in the tax treaty that contains the saving clause and its exceptions. ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.007,),

              Text("4. The type and amount of income that qualifies for the exemption from tax. ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),
              SizedBox(height: mQuery.size.height*0.007,),

              Text("5. Sufficient facts to justify the exemption from tax under the terms of the treaty article. ",style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.032,),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: "Example",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xff5E6258)
                        )
                        ),
                        TextSpan(
                            text: "  Article 20 of the U.S.-China income tax treaty allows an exemption from tax for scholarship income received by a Chinese student temporarily present in the United States. Under U.S. law, this student will become a resident alien for tax purposes if their stay in the United States exceeds 5 calendar years. However, paragraph 2 of the first Protocol to the U.S.-China treaty (dated April 30, 1984) allows the provisions of Article 20 to continue to apply even after the Chinese student becomes a resident alien of the United States. A Chinese student who qualifies for this exception (under paragraph 2 of the first Protocol) and is relying on this exception to claim an exemption from tax on their scholarship or fellowship income would attach to Form W-9 a statement that includes the information described above to support that exemption.",style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff5E6258)
                        )
                        )
                      ]
                  )
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("if you are a noresident alien or a foreign entity, give the requester the "
                  "appropriate completed Form W-8 or Form 8233",style: TextStyle(
                fontSize: 13,
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiMedium'
              ),),
              
              SizedBox(height: mQuery.size.height*0.032,),
              Text("Backup Withholding",style: TextStyle(
                fontSize: 24,
                fontFamily: 'SatoshiBold',
                color: Colors.black
              ),)


            ],
          ),
        ),
      ),
    );
  }
}

