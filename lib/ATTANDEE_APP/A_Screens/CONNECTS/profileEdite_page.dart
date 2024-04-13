import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/CONNECTS/scanUpload_page.dart';

import 'messageAccept_page.dart';


class ProfileEditePage extends StatefulWidget {
  const ProfileEditePage({Key? key}) : super(key: key);

  @override
  State<ProfileEditePage> createState() => _ProfileEditePageState();
}

class _ProfileEditePageState extends State<ProfileEditePage> {
  TextEditingController universityController = TextEditingController();
  int selectedGenderIndex = -1;

  bool isOn1 = false;
  bool isOn2 = false;

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff201335),
        ),
        child: Column(
          children: [
            SizedBox(height: mQuery.size.height * 0.034),
            Padding(
              padding: EdgeInsets.only(
                top: mQuery.size.height * 0.048,
                bottom: mQuery.size.height * 0.02,
                left: mQuery.size.width * 0.045,
                right: mQuery.size.width * 0.045,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return MessageAcceptPage();
                                }));
                          },
                          child: SvgPicture.asset(
                            'Assets/Images/Icon/HelpSupport/cancel-circle.svg',)),
                      Text("Profile Edit", style: TextStyle(
                          fontSize: 24,
                          color: Color(0xffF9F9F9),
                          fontFamily: 'SatoshiBold'
                      ),),
                      Text("Save", style: TextStyle(
                          color: Color(0xff8DC73F),
                          fontSize: 16,
                          fontFamily: 'SatoshiMedium'
                      ),)
                    ],
                  ),
                  SizedBox(height: mQuery.size.height * 0.015,),
                  Center(
                      child: GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ScanUploadPage();
                          }));
                        },
                        child: ProfilePicture(
                          fontsize: 10,
                          name: "",
                          radius: 55,
                          img: "https://s3-alpha-sig.figma.com/img/29d3/bf46/23978ebdf8beab470216c575f9244337?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Cw6ZQcuZ7Mnt1M3Fm1cc6TB6W4oxiqaIoEBMHjdmSUCn-DH0oVfWSxxLLZm2eGKyxukq4m74~kxpBG3eiMwbBE34UxkX3pZOkylCYA73M0xspHokXgjtqz55o~k4MieSXDMNj4x1woX0vC10MtEwQO8VRlgT3gaf19-X9sSEGFb9x38VwQ~eiwBrLjBII3uV-0iBnptYnhIF0BJg8w85MBkFbFKmnJVE-IsnG6jOth2H7j-BIBPnOHM0uyfsU4t0sk5KrhersG0iNdE~xeYaTTCLwAYI4z7yQsfFgliVCPEUbvgzWfIfz~l3ZficPsoROdzgWhU-aUwFZfZtFWCaGQ__",
                        ),
                      )
                  ),
                  Container(
                    width: mQuery.size.width * 0.3,
                    height: mQuery.size.height * 0.03,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff8DC73F)
                    ),
                    child: Center(
                      child: Text("60% COMPLETE", style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SatoshiMedium',
                          fontSize: 12
                      ),),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.003,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Laura Diamonds", style: TextStyle(
                          color: Color(0xffF9F9F9),
                          fontSize: 22,
                          fontFamily: 'SatoshiMedium'
                      ),),
                      SizedBox(width: mQuery.size.width * 0.02,),
                      SvgPicture.asset(
                        'Assets/Images/Icon/HelpSupport/verified_circle.svg',
                        width: mQuery.size.width * 0.047,),
                    ],
                  ),
                  Text("@laurad", style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SatoshiRegular'
                  ),)
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: mQuery.size.height * 0.028,
                    left: mQuery.size.width * 0.045,
                    right: mQuery.size.width * 0.045,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ABOUT ME", style: TextStyle(
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xff696D61)
                        ),),
                        SizedBox(height: mQuery.size.height * 0.013,),
                        Container(
                          width: double.infinity,
                          height: mQuery.size.height * 0.068,
                          padding: EdgeInsets.all(
                              mQuery.size.width * 0.014
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: Color(0xff8DC73F)
                              )
                          ),
                          child: Text(
                            "I am a business owner based in Austin, Texas, USA. I’m here to establish connections and meet new people |",
                            style: TextStyle(
                                fontFamily: 'SatoshiRegular',
                                color: Color(0xff696D61),
                                fontSize: 12
                            ),),
                        ),
                        SizedBox(height: mQuery.size.height * 0.02,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Photo Gallery", style: TextStyle(
                                color: Color(0xffD3D3D3),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            Text("Upload at least 3 images", style: TextStyle(
                                color: Color(0xff8DC73F),
                                fontFamily: 'SatoshiRegular'
                            ),)
                          ],
                        ),
                        SizedBox(height: mQuery.size.height * 0.02,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: mQuery.size.width * 0.3,
                              height: mQuery.size.height * 0.2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://s3-alpha-sig.figma.com/img/fa04/fe3c/5edebc680e0a44b0c5cdc"
                                            "6b9b4557dc8?Expires=1710115200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Sign"
                                            "ature=UO8isrKTJtDKn1MOEqUu~XRsEQC8OTD5Lr5a2cVLX4moldfTi7DF-i"
                                            "W4kVpH5E5~c~25QyQ8ZC7ewmGFQ6Dv3sW66eD2Rvl5qoOPifiLNMGCgZcRhe8Le9P3irk3Rdhh-qGeww267qHS2UzuuRCWwpM7DiLq9co5cDJjspwfClnrkLay2F7ByT9UmyGA1iDDgFT9hDCbV-a~Og3hwFd0TWhUBHyBDcqPpAyXNBwQYju4ZxCnIwuLRnldPW4-q0Y5dXmR~eR64lcZEBpCRMZUhXWQQTAH5oTkUsOhSkaZ5L11ADaysU9sx5gHDxQiCQb84nEo82dzuJdrG-ru1lg2gg__")
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Container(
                              width: mQuery.size.width * 0.3,
                              height: mQuery.size.height * 0.2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://s3-alpha-sig.figma.com/img/e327/de92/76388e8"
                                            "a5ccf3cff474b2bf059c524d0?Expires=1710115200&Key-Pair-Id"
                                            "=APKAQ4GOSFWCVNEHN3O4&Signature=g~khvORx6NdL1E9p~LfpT2z0rsJpS7gE4DU448RpR0Htr"
                                            "Sqef~Pa8KfNIoFos4sW4wkzSCIfP5JZCRnU-OxY23lpAbByrZ922-IrDTYdyEfgUzRqrCBLMDGk7u2WLO543C5J9hILw1H34PDW8-poW5ZhCZ~NAn9i9TUUbzT~DIa-zx5NPf3Fq6jX8pJopG-boqQ7XkNAuwkgUNLl1fMahMJ1Ln6v4yKhc5s-TgBIrM0m8Xv9IS-UCUmyBIdm9HAvlrhrqEpf1lRrdkl2uGhrZ6OexjxduY~NnkhosyUehFSF2zCjtJ1pSjNoiTMF7A4dg-2hWp8jxU1fN5ZpQOHfCw__")
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            SvgPicture.asset(
                              'Assets/Images/Icon/HelpSupport/Frame.svg',
                              width: mQuery.size.width * 0.03,
                              height: mQuery.size.height * 0.2,),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),
                        Row(
                          children: [
                            Text("JOB TITLE", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text(
                              "Business Owner, Event Planner", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        GestureDetector(
                          onTap: () {
                            _genderSelectedBottomSheet(context);
                          },
                          child: Row(
                            children: [
                              Text("GENDER", style: TextStyle(
                                  color: Color(0xff696D61),
                                  fontFamily: 'SatoshiBold'
                              ),),
                              Expanded(child: SizedBox()),
                              Text("Female", style: TextStyle(
                                  color: Color(0xff696D61),
                                  fontFamily: 'SatoshiRegular'
                              ),),
                              SizedBox(width: mQuery.size.width * 0.03,),
                              Icon(Icons.arrow_forward_ios_outlined,
                                size: mQuery.size.width * 0.028,
                                color: Color(0xff696D61),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("LOCATION", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("Austin, Texas", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        GestureDetector(
                          onTap: () {
                            _educationSelectedBottomSheet(context);
                          },
                          child: Row(
                            children: [
                              Text("EDUCATION", style: TextStyle(
                                  color: Color(0xff696D61),
                                  fontFamily: 'SatoshiBold'
                              ),),
                              Expanded(child: SizedBox()),
                              Text("Yale University", style: TextStyle(
                                  color: Color(0xff696D61),
                                  fontFamily: 'SatoshiRegular'
                              ),),
                              SizedBox(width: mQuery.size.width * 0.03,),
                              Icon(Icons.arrow_forward_ios_outlined,
                                size: mQuery.size.width * 0.028,
                                color: Color(0xff696D61),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("ZODIAC", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("Capricorn", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("INTERESTS", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("Freelance, Business", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("FRIENDSHIP GOALS", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("Longterm, Short-term", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("HEIGHT", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("183cm", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        GestureDetector(
                          onTap: ()
                          {
                            _languageSpokenBottomSheet(context);
                          },
                          child: Row(
                            children: [
                              Text("LANGUAGES SPOKEN", style: TextStyle(
                                  color: Color(0xff696D61),
                                  fontFamily: 'SatoshiBold'
                              ),),
                              Expanded(child: SizedBox()),
                              Text("English, French", style: TextStyle(
                                  color: Color(0xff696D61),
                                  fontFamily: 'SatoshiRegular'
                              ),),
                              SizedBox(width: mQuery.size.width * 0.03,),
                              Icon(Icons.arrow_forward_ios_outlined,
                                size: mQuery.size.width * 0.028,
                                color: Color(0xff696D61),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("ZODIAC", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("Taurus", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("FAMILY PLANS", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("I want children", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("COVID vaccine", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("Vaccinated", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("PERSONALITY TYPE", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("ISTP", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("COMMUNICATION STYLE", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("In-person", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("LOVE STYLE", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("Time together", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("PETS", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("Dog", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("DRINKING", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("On special occassions", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("DO YOU SMOKE", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("No", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("WORKOUT", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("Sometimes", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("DIETARY PREFERENCE", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("Omnivore", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("SOCIAL MEDIA", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("Passive scroller", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("GOING OUT", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("Socialising, dress down", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("MY WEEKENDS", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("Fun nights out", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("ME + MY PHONE", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("Texting", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.012,),

                        Row(
                          children: [
                            Text("COMPANY", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold'
                            ),),
                            Expanded(child: SizedBox()),
                            Text("Add company", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),),
                            SizedBox(width: mQuery.size.width * 0.03,),
                            Icon(Icons.arrow_forward_ios_outlined,
                              size: mQuery.size.width * 0.028,
                              color: Color(0xff696D61),
                            ),
                          ],
                        ),
                        Divider(color: Color(0xffF1F1F2),),
                        SizedBox(height: mQuery.size.height * 0.015,),

                        Text("PRIVACY SETTINGS", style: TextStyle(
                            color: Color(0xff696D61),
                            fontFamily: 'SatoshiBold'
                        ),),
                        SizedBox(height: mQuery.size.height * 0.01,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Don’t Show Me on StubConnect", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold',
                              fontSize: 13
                            ),),
                            Transform.scale(
                              scale: 0.6,
                              child: Switch(
                                value: isOn1,
                                activeTrackColor: Color(0xff008000),
                                activeColor: Colors.white,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Color(0xffD9D9D9),
                                onChanged: (value) {
                                  setState(() {
                                    isOn1 = value!;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Don’t Show My Location", style: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiBold',
                              fontSize: 13
                            ),),
                            Transform.scale(
                              scale: 0.6,
                              child: Switch(
                                value: isOn2,
                                activeTrackColor: Color(0xff008000),
                                activeColor: Colors.white,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor: Color(0xffD9D9D9),
                                onChanged: (value) {
                                  setState(() {
                                    isOn2 = value!;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _educationSelectedBottomSheet(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Container(
            width: double.infinity,
            height: mQuery.size.height * 0.3,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)
                )
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: mQuery.size.width * 0.04,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: mQuery.size.height * 0.04,),
                    Text("Education", style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SatoshiMedium',
                        color: Color(0xff201335)
                    ),),
                    SizedBox(height: mQuery.size.height * 0.025,),
                    Container(
                      width: double.infinity,
                      height: mQuery.size.height * 0.07,
                      padding: EdgeInsets.symmetric(
                          horizontal: mQuery.size.width * 0.03
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: Color(0xffF1F1F2)
                          )
                      ),
                      child: TextField(
                        cursorColor: Color(0xff696D61),
                        controller: universityController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Yale University",
                            hintStyle: TextStyle(
                                color: Color(0xff696D61),
                                fontFamily: 'SatoshiRegular'
                            ),
                            suffix: SvgPicture.asset(
                                'Assets/Images/Icon/HelpSupport/VectorCross.svg')
                        ),
                      ),
                    ),
                    SizedBox(height: mQuery.size.height * 0.032,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: mQuery.size.width * 0.44,
                            height: mQuery.size.height * 0.065,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color: Color(0xff8DC73F)
                                )
                            ),
                            child: Center(
                              child: Text("Cancel", style: TextStyle(
                                  color: Color(0xff8DC73F),
                                  fontSize: 16,
                                  fontFamily: 'SatoshiMedium'
                              ),),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: mQuery.size.width * 0.44,
                            height: mQuery.size.height * 0.065,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff201335)
                            ),
                            child: Center(
                              child: Text("Save", style: TextStyle(
                                  color: Color(0xffF1F1F2),
                                  fontSize: 16,
                                  fontFamily: 'SatoshiMedium'
                              ),),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        }
    );
  }


  void _genderSelectedBottomSheet(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    int selectedGenderIndex = -1; // Initialize to indicate no selection

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            void _updateSelectedIndex(int index) {
              setState(() {
                selectedGenderIndex = index; // Update the selected index within setState
              });
            }

            return Container(
              width: double.infinity,
              height: mQuery.size.height * 0.45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: mQuery.size.height * 0.06),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width * 0.04,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gender",
                            style: TextStyle(
                              color: Color(0xff201335),
                              fontSize: 16,
                              fontFamily: 'SatoshiBold',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: mQuery.size.height * 0.04),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width * 0.04,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _updateSelectedIndex(0);
                                },
                                child: Container(
                                  width: mQuery.size.width * 0.3,
                                  height: mQuery.size.height * 0.055,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: selectedGenderIndex == 0
                                        ? Color(0xffDEFBB8) // Change color to green if selected
                                        : Colors.transparent,
                                    border: Border.all(
                                      color: selectedGenderIndex == 0
                                          ? Colors.transparent // Change color to green if selected
                                          : Color(0xff8DC73F),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Female",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'SatoshiMedium',
                                        color: Color(0xff696D61),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: mQuery.size.width * 0.07),
                              GestureDetector(
                                onTap: () {
                                  _updateSelectedIndex(1);
                                },
                                child: Container(
                                  width: mQuery.size.width * 0.27,
                                  height: mQuery.size.height * 0.055,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: selectedGenderIndex == 1
                                        ? Color(0xffDEFBB8) // Change color to green if selected
                                        : Colors.transparent,
                                    border: Border.all(
                                      color: selectedGenderIndex == 1
                                          ? Colors.transparent // Change color to green if selected
                                          : Color(0xff8DC73F),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Male",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'SatoshiMedium',
                                        color: Color(0xff696D61),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: mQuery.size.height * 0.026),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _updateSelectedIndex(2);
                                },
                                child: Container(
                                  width: mQuery.size.width * 0.36,
                                  height: mQuery.size.height * 0.055,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: selectedGenderIndex == 2
                                        ? Color(0xffDEFBB8) // Change color to green if selected
                                        : Colors.transparent,
                                    border: Border.all(
                                      color: selectedGenderIndex == 2
                                          ? Colors.transparent // Change color to green if selected
                                          : Color(0xff8DC73F),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Prefer Not to Say",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'SatoshiMedium',
                                        color: Color(0xff696D61),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: mQuery.size.width * 0.07),
                              GestureDetector(
                                onTap: () {
                                  _updateSelectedIndex(3);
                                },
                                child: Container(
                                  width: mQuery.size.width * 0.32,
                                  height: mQuery.size.height * 0.055,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: selectedGenderIndex == 3
                                        ? Color(0xffDEFBB8) // Change color to green if selected
                                        : Colors.transparent,
                                    border: Border.all(
                                      color: selectedGenderIndex == 3
                                          ? Colors.transparent // Change color to green if selected
                                          : Color(0xff8DC73F),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Non-Binary",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'SatoshiMedium',
                                        color: Color(0xff696D61),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: mQuery.size.height * 0.09),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: mQuery.size.width * 0.44,
                                  height: mQuery.size.height * 0.065,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Color(0xff8DC73F))),
                                  child: Center(
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                          color: Color(0xff8DC73F),
                                          fontSize: 16,
                                          fontFamily: 'SatoshiMedium'),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: mQuery.size.width * 0.44,
                                  height: mQuery.size.height * 0.065,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xff201335)),
                                  child: Center(
                                    child: Text(
                                      "Save",
                                      style: TextStyle(
                                          color: Color(0xffF1F1F2),
                                          fontSize: 16,
                                          fontFamily: 'SatoshiMedium'),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }



  void _languageSpokenBottomSheet(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    List<int> selectedIndices = []; // Keep track of the selected indices

    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            void _updateSelectedIndex(int index) {
              setState(() {
                if (selectedIndices.contains(index)) {
                  // If already selected, remove it
                  selectedIndices.remove(index);
                } else {
                  // If not selected, add it
                  selectedIndices.add(index);
                }
              });
            }

            return Container(
              width: double.infinity,
              height: mQuery.size.height * 0.8,
              padding: EdgeInsets.symmetric(horizontal: mQuery.size.width * 0.045),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: mQuery.size.height * 0.04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Languages Spoken",
                          style: TextStyle(color: Color(0xff201335), fontSize: 16, fontFamily: 'SatoshiMedium'),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.close, color: Color(0xff545454)),
                        )
                      ],
                    ),
                    SizedBox(height: mQuery.size.height * 0.035),
                    buildLanguageContainer(context, "English", mQuery.size.height * 0.075, 0, selectedIndices, _updateSelectedIndex),
                    SizedBox(height: mQuery.size.height*0.02,),
                    buildLanguageContainer(context, "French", mQuery.size.height * 0.075, 1, selectedIndices, _updateSelectedIndex),
                    SizedBox(height: mQuery.size.height*0.02,),
                    buildLanguageContainer(context, "Chinese", mQuery.size.height * 0.075, 2, selectedIndices, _updateSelectedIndex),
                    SizedBox(height: mQuery.size.height*0.02,),
                    buildLanguageContainer(context, "Russian", mQuery.size.height * 0.075, 3, selectedIndices, _updateSelectedIndex),
                    SizedBox(height: mQuery.size.height*0.02,),
                    buildLanguageContainer(context, "Spanish", mQuery.size.height * 0.075, 4, selectedIndices, _updateSelectedIndex),
                    SizedBox(height: mQuery.size.height*0.02,),
                    buildLanguageContainer(context, "Portuguese", mQuery.size.height * 0.075, 5, selectedIndices, _updateSelectedIndex),
                
                    SizedBox(height: mQuery.size.height*0.055,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: mQuery.size.width * 0.44,
                          height: mQuery.size.height * 0.065,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color(0xff8DC73F)
                              )
                          ),
                          child: Center(
                            child: Text("Clear all", style: TextStyle(
                                color: Color(0xff8DC73F),
                                fontSize: 16,
                                fontFamily: 'SatoshiMedium'
                            ),),
                          ),
                        ),
                        // Expanded(child: SizedBox()),
                        Container(
                          width: mQuery.size.width * 0.44,
                          height: mQuery.size.height * 0.065,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xff201335)
                          ),
                          child: Center(
                            child: Text("Save", style: TextStyle(
                                color: Color(0xffF1F1F2),
                                fontSize: 16,
                                fontFamily: 'SatoshiMedium'
                            ),),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget buildLanguageContainer(BuildContext context, String text, double height, int index, List<int> selectedIndices, Function(int) onTap) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: Container(
        width: double.infinity,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: selectedIndices.contains(index) ? Color(0xff8DC73F) : Colors.transparent,
          ),
          color: selectedIndices.contains(index) ? Color(0xffF0FFDD) : Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'SatoshiRegular',
                color: selectedIndices.contains(index) ? Color(0xff8DC73F) : Color(0xff201335),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.04,
              height: MediaQuery.of(context).size.height * 0.02,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedIndices.contains(index) ? Color(0xff8DC73F) : Colors.transparent,
                border: Border.all(
                  color: selectedIndices.contains(index) ? Color(0xff8DC73F) : Colors.black,
                ),
              ),
              child: selectedIndices.contains(index)
                  ? Center(
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width * 0.03,
                ),
              )
                  : null,
            ),
          ],
        ),
      ),
    );
  }






}





