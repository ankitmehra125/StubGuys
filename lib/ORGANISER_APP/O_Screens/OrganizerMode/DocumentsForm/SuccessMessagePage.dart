import 'package:badges/badges.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessMessagePage extends StatefulWidget {
  const SuccessMessagePage({super.key});

  @override
  State<SuccessMessagePage> createState() => _SuccessMessagePageState();
}

class _SuccessMessagePageState extends State<SuccessMessagePage> {

  String _selectedCountry = "";
  String _selectedCountry2 = "";

  DateTime? _selectedDate;
  DateTime? _selectedDate2;

  bool isOn = false;

  TextEditingController ownerNameController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController countryController2 = TextEditingController();
  TextEditingController usTaxpayerController = TextEditingController();
  TextEditingController foreignTaxController = TextEditingController();
  TextEditingController referenceController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController benificialOwnerController = TextEditingController();
  TextEditingController specialRateController = TextEditingController();
  TextEditingController specialRateController2 = TextEditingController();
  TextEditingController articleController = TextEditingController();
  TextEditingController signhereController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController signerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: mQuery.size.width*0.045
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: mQuery.size.height*0.032,),
              SvgPicture.asset("Assets/Images/exitIcon.svg"),
              SizedBox(height: mQuery.size.height*0.032,),
              Text("Non-US Individual (W-8BEN Form)",style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.023,),
              Text("Certificate of Foreign Status of Beneficial Owner for United States Tax Withholding and Reporting (Individuals)",style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.032,),
              Text("For use by individuals. Entities must use Form W-8BEN-E",style: TextStyle(
                  color: Color(0xff696D61),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),
              Text("Go to www.irs.gov/FormW8BEN for instructions and the latest information. ",style: TextStyle(
                  color: Color(0xff696D61),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),),
              Text("Give this form to the withholding agent or payer. Do not send to the IRS.",style: TextStyle(
                  color: Color(0xff696D61),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),
              ),
              SizedBox(height: mQuery.size.height*0.042,),
              Text("Do NOT use this form if:",style: TextStyle(
                fontSize: 13,
                color: Color(0xff696D61),
                fontFamily: 'SatoshiBold'
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
                      text: "You are NOT an individual",
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
                          "You are a U.S. citizen or other U.S. person, including a resident alien individual",
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
                          "You are a beneficial owner claiming that income is effectively connected with the conduct of trade "
                              "or business within the United States (other than personal services)",
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
                          "You are a beneficial owner who is receiving compensation for personal services performed in the United States",
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
                      text: "You are a person acting as an intermediary",
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Color(0xff696D61),
                          fontFamily: 'SatoshiMedium'
                      ), // Adjust styling as needed
                    ),
                  ],
                ),
              ),
              SizedBox(height: mQuery.size.height*0.032,),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Note: ",style: TextStyle(
                        color: Color(0xff696D61),
                      fontSize: 13,
                      fontFamily: 'SatoshiBold'
                    )
                    ),
                    TextSpan(
                      text: "If you are resident in a FATCA partner jurisdiction (that is, a Model 1 IGA jurisdiction with reciprocity), certain tax account information may be provided to your jurisdiction of residence.",style: TextStyle(
                       color: Color(0xff696D61),
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium'
                    )
                    )
                  ]
                ),
              ),
              SizedBox(height: mQuery.size.height*0.032,),
              Text("Part I. Identification of Beneficial Owner (see instructions)",style: TextStyle(
                color: Color(0xff000000),
                fontFamily: 'SatoshiBold',
                fontSize: 16
              ),),
              SizedBox(height: mQuery.size.height*0.023,),
              Text("(1) Name of individual who is the beneficial owner",style: TextStyle(
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiBold',
                fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                padding: EdgeInsets.symmetric(
                  horizontal: mQuery.size.width*0.03
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffC8C8C8)
                  ),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: ownerNameController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("(2) Country of citizenship",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiBold',
                  fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: countryController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("(3) Permanent residence address",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiBold',
                  fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.03
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
              Text("(street, apt. or suite no., or rural route). Do not use a P.O. box or in-care-of address.",style: TextStyle(
                color: Color(0xff5E6258),
                fontSize: 13,
                fontFamily: 'SatoshiMedium'
              ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("City or town, state or province",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiBold',
                  fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.03
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
              Text("Include postal code where appropriate.",style: TextStyle(
                color: Color(0xff5E6258),
                fontSize: 13,
                fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("Country",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiBold',
                  fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              GestureDetector(
                onTap: () {
                  _openCountryPicker(context);
                },
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.03),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC8C8C8)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Text( _selectedCountry.isNotEmpty ? _selectedCountry : "Choose country",
                      style : TextStyle(
                      fontSize: 13,
                        fontFamily: 'SatoshiMedium',
                        color: Color(0xff5E6258),),),
                      Expanded(child: SizedBox()),
                      Icon(Icons.keyboard_arrow_down, color: Color(0xff545454)),
                    ],
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("(4) Mailing address",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiBold',
                  fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: mailController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),
              Text("City or town, state or province. Include postal code where appropriate.",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("Country",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiBold',
                  fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              GestureDetector(
                onTap: () {
                  _openCountryPicker2(context);
                },
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.03),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC8C8C8)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Text( _selectedCountry2.isNotEmpty ? _selectedCountry2 : "Choose country",
                        style : TextStyle(
                          fontSize: 13,
                          fontFamily: 'SatoshiMedium',
                          color: Color(0xff5E6258),),),
                      Expanded(child: SizedBox()),
                      Icon(Icons.keyboard_arrow_down, color: Color(0xff545454)),
                    ],
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("(5) U.S. taxpayer identification number",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiBold',
                  fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: usTaxpayerController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),
              Text("(SSN or ITIN), if required (see instructions)",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),
              ),

              SizedBox(height: mQuery.size.height*0.026,),
              Text("(6a) Foreign tax identifying number",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiBold',
                  fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: foreignTaxController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),


              SizedBox(height: mQuery.size.height*0.026,),
              Text("(6b) FTIN not required",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiBold',
                  fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Stack(
                alignment: Alignment.center,
                children: [
                  Transform.scale(
                    scale: 1.1,
                    child: Switch(
                      value: isOn,
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: const Color(0xff8DC73F),
                      thumbColor: MaterialStateProperty.all<Color>(Colors.white),
                      onChanged: (value) {
                        setState(() {
                          isOn = value;
                        });
                      },
                    ),
                  ),
                  Positioned(
                    left: isOn ? 6 : null,
                    right: isOn ? null : 6,
                    child: Text(
                      isOn ? 'ON' : 'OFF',
                      style: TextStyle(
                        color: isOn ? Colors.white : Colors.red,
                        fontFamily: 'SatoshiMedium',
                        fontSize: 11
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: mQuery.size.height*0.026,),
              Text("(7) Reference number(s)",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiBold',
                  fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: referenceController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),
              Text("(see instructions)",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("(8) Date of birth",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiBold',
                  fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              GestureDetector(
            onTap: () {
              _selectDate(context);
            },
            child: Container(
              width: double.infinity,
              height: mQuery.size.height * 0.055,
              padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.03),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffC8C8C8)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Text(
                    _selectedDate != null
                        ? "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}"
                        : "",
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium',
                      color: Color(0xff5E6258),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  SvgPicture.asset("Assets/Images/calendorIcon.svg"),
                ],
              ),
            ),),
              Text("(see instructions)",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),
              ),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("Part II. Claim of Tax Treaty Benefits (for chapter 3 purposes only) (see instructions)",style: TextStyle(
                fontSize: 24,
                fontFamily: 'SatoshiBold',
                color: Colors.black
              ),),

              SizedBox(height: mQuery.size.height*0.026,),
              Text("(9) I certify that the beneficial owner is a resident of",style: TextStyle(
              color: Color(0xff5E6258),
              fontFamily: 'SatoshiBold',
              fontSize: 13
          ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
               width: double.infinity,
               height: mQuery.size.height*0.055,
               padding: EdgeInsets.symmetric(
                horizontal: mQuery.size.width*0.03
            ),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xffC8C8C8)
                ),
                borderRadius: BorderRadius.circular(8)
            ),
            child: TextField(
              controller: benificialOwnerController,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  border: InputBorder.none
              ),
            ),
          ),
              SizedBox(height: mQuery.size.height*0.01,),
              Text("within the meaning of the income tax treaty between the United States and that country.",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium'
              ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "(10) Special rates and conditions",style: TextStyle(
                        color: Color(0xff5E6258),
                      fontFamily: 'SatoshiBold',
                      fontSize: 13
                    )
                    ),
                    TextSpan(
                        text: " (if applicable - see instructions): The beneficial owner is claiming the provisions of Article and paragraph",style: TextStyle(
                        color: Color(0xff5E6258),
                        fontFamily: 'SatoshiMedium',
                        fontSize: 13
                    )
                    ),
                  ]
                ),
              ),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("of the treaty identified on line 9 above to claim a",style: TextStyle(
                 fontSize: 13,
                fontFamily: 'SatoshiMedium',
                color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: specialRateController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),


              SizedBox(height: mQuery.size.height*0.023,),
              Text("% rate of withholding on (specify type of income):",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: specialRateController2,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.032,),
              Text("Explain the additional conditions in the Article and paragraph the beneficial owner meets to be eligible for the rate of withholding:",style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xff5E6258)
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height*0.11,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: articleController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.04,),
              Text("Part III. Certification",style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'SatoshiBold'
              ),),
              SizedBox(height: mQuery.size.height*0.034,),
              Text("Under penalties of perjury, I declare that I have examined the information on this form and to the best of my knowledge and belief it is true, correct, and complete. I further certify under penalties of perjury that:",style: TextStyle(
                color: Color(0xff5E6258),
                fontSize: 13,
                fontFamily: 'SatoshiMedium'
              ),),
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
                          "I am the individual that is the beneficial owner (or am authorized to sign for the individual that is the beneficial owner) of all the income or proceeds to which this form relates or am using this form to document myself for chapter 4 purposes;",
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
                          "The person named on line 1 of this form is not a U.S. person;",
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "This form relates to",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiMedium',
                              ),
                            ),
                            Text(
                              "(a) income not effectively connected with the conduct of a trade or business in the United States;",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiMedium',
                              ),
                            ),

                            Text(
                              "(b) income effectively connected with the conduct of a trade or business in the United States but is not subject to tax under an applicable income tax treaty;",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiMedium',
                              ),
                            ),

                            Text(
                              "(c) the partner’s share of a partnership’s effectively connected taxable income; or",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiMedium',
                              ),
                            ),

                            Text(
                              "(d) the partner’s amount realized from the transfer of a partnership interest subject to withholding under section 1446(f);",
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiMedium',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
                          "The person named on line 1 of this form is a resident of the treaty country listed on line 9 of the form (if any) within the meaning of the income tax treaty between the United States and that country; and",
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
                          "For broker transactions or barter exchanges, the beneficial owner is an exempt foreign person as defined in the instructions.",
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
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Furthermore, I authorize this form to be provided to any withholding agent that has control, receipt, or custody of the income of which I am the beneficial owner or any withholding agent that can  disburse or make payments of the income of which I am the beneficial owner.",style: TextStyle(
                      color: Color(0xff5E6258),
                      fontSize: 13,
                      fontFamily: 'SatoshiMedium'
                    )
                    ),

                    TextSpan(
                        text: " I agree that I will submit a new form within 30 days if any certification made on this form becomes incorrect.",style: TextStyle(
                        color: Color(0xff5E6258),
                        fontSize: 13,
                        fontFamily: 'SatoshiBold'
                    )
                    )
                  ]
                )
              ),


              SizedBox(height: mQuery.size.height*0.023,),
              Text("Sign Here",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiBold',
                  fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: signhereController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),
              SizedBox(height: mQuery.size.height*0.02,),

              Text("Signature of beneficial owner (or individual authorized to sign for beneficial owner)",style: TextStyle(
                color: Color(0xff5E6258),
                fontFamily: 'SatoshiMedium'
              ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("Date (MM-DD-YYYY)",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium',
                  fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              GestureDetector(
                onTap: () {
                  _selectDate2(context);
                },
                child: Container(
                  width: double.infinity,
                  height: mQuery.size.height * 0.055,
                  padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.03),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC8C8C8)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Text(
                        _selectedDate2 != null
                            ? "${_selectedDate2!.day}/${_selectedDate2!.month}/${_selectedDate2!.year}"
                            : "",
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'SatoshiMedium',
                          color: Color(0xff5E6258),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      SvgPicture.asset("Assets/Images/calendorIcon.svg"),
                    ],
                  ),
                ),),

              SizedBox(height: mQuery.size.height*0.023,),
              Text("Print name of signer",style: TextStyle(
                  color: Color(0xff5E6258),
                  fontFamily: 'SatoshiMedium',
                  fontSize: 13
              ),),
              SizedBox(height: mQuery.size.height*0.016,),
              Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                padding: EdgeInsets.symmetric(
                    horizontal: mQuery.size.width*0.03
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xffC8C8C8)
                    ),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: TextField(
                  controller: signerController,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.055,),

              Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                decoration: BoxDecoration(
                  color: Color(0xff8DC73F),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Text("Submit",style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'SatoshiBold'
                  ),),
                ),
              ),

              SizedBox(height: mQuery.size.height*0.032,)

            ],
          ),
        ),
      ),
    );
  }

  void _openCountryPicker(BuildContext context) {
    showCountryPicker(
      context: context,
      showPhoneCode: false,
      onSelect: (Country country) {
        setState(() {
          _selectedCountry = country.name;
        });
      },
    );
  }

  void _openCountryPicker2(BuildContext context) {
    showCountryPicker(
      context: context,
      showPhoneCode: false,
      onSelect: (Country country) {
        setState(() {
          _selectedCountry2 = country.name;
        });
      },
    );
  }


  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
      selectableDayPredicate: (DateTime date) {
        // Return true for the dates that should be selectable
        return true;
      },
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light().copyWith(
              primary: Color(0xff8DC73F), // Change the highlight color
            ),
          ),
          child: child!,
        );
      },
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  Future<void> _selectDate2(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
      selectableDayPredicate: (DateTime date) {
        // Return true for the dates that should be selectable
        return true;
      },
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light().copyWith(
              primary: Color(0xff8DC73F), // Change the highlight color
            ),
          ),
          child: child!,
        );
      },
    );
    if (pickedDate != null && pickedDate != _selectedDate2) {
      setState(() {
        _selectedDate2 = pickedDate;
      });
    }
  }

}


