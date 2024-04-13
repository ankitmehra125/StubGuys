
import 'dart:io';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/Profiles/ProfileDetails/Success.dart';

class O_CreateOrganizer extends StatefulWidget {
  const O_CreateOrganizer({Key? key}) : super(key: key);

  @override
  State<O_CreateOrganizer> createState() => _O_CreateOrganizerState();
}

class _O_CreateOrganizerState extends State<O_CreateOrganizer> {
  //File upload 
  File? _imageFile;
  
  void _removeImage() {
    setState(() {
      _imageFile = null;
    });
  }
  late String FileName;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
        String FilePath = pickedFile.path;
        FileName = FilePath.split('/').last;
        print(FileName);
      } else {
        print('Error while uploading image');
      }
    });
  }


  TextEditingController eventController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController describeController = TextEditingController();
  

  FocusNode _focusNode = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  FocusNode _focusNode3 = FocusNode();
  FocusNode _focusNode4 = FocusNode();
  FocusNode _focusNode5 = FocusNode();

  bool _isFocused = false;
  bool _isFocused2 = false;
  bool _isFocused3 = false;
  bool _isFocused4 = false;
  bool _isFocused5 = false;
  bool _isUploadContainerTapped = false;

  String selectedCountry = "United States";


  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: const Color(0xFFDEFBB8),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 85.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'Assets/Images/Icon/HelpSupport/cross.svg',
                            height: 40.0,
                            width: 40.0,
                            color: const Color(0xff201335),
                          ),
                          const Text(
                            "Create Organizer",
                            style: TextStyle(
                                color: Color(0xff201335),
                                fontSize: 24,
                                fontFamily: 'SatoshiBold'),
                          ),
                          SvgPicture.asset(
                            'Assets/Images/Icon/HelpSupport/cross.svg',
                            height: 40.0,
                            width: 40.0,
                            color: const Color(0xff201335),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: mQuery.size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                       
                    ],
                  ),
                  SizedBox(height: mQuery.size.height * 0.01),
                  //file upload
                  GestureDetector(
                    onTap: _pickImage,
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xFFF1F1F2))),
                      child: _imageFile != null
                          ? Stack(
                              fit: StackFit.expand,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Expanded(
                                        flex: 2,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: const Color(0xFF8DC73F),
                                                width: 1.0),
                                          ),
                                          width: 160,
                                          height: 125,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.file(
                                              _imageFile!,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16.0),
                                            child: Text(
                                              _imageFile!.path
                                                  .split('/')
                                                  .last, // Displaying file name
                                              style: const TextStyle(
                                                color: Color(0xFFCECECE),
                                                fontSize: 16,
                                                fontFamily: 'SatoshiBold',
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          // Progress bar for uploading image (You need to implement this)
                                          // LinearProgressIndicator(
                                          //   value:
                                          //       _uploadProgress, // Replace _uploadProgress with your actual progress value
                                          // ),
                                          const SizedBox(height: 8),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          elevation: 0,
                                                          primary: Color(
                                                              0xFFF1F1F2)),
                                                  onPressed: _pickImage,
                                                  child: const Text(
                                                    'Change',
                                                    style: TextStyle(
                                                      color: Color(0xFFB5B5B5),
                                                      fontSize: 13,
                                                      fontFamily: 'SatoshiBold',
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 3),
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          elevation: 0,
                                                          primary: Color(
                                                              0xFFE71D36)),
                                                  onPressed: _removeImage,
                                                  child: const Text(
                                                    'Remove',
                                                    style: TextStyle(
                                                      color: Color(0xFFF1F1F2),
                                                      fontSize: 13,
                                                      fontFamily: 'SatoshiBold',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.camera_alt,
                                  size: 40,
                                  color: Color(0xFFD2D2D2),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Tap to Upload ",
                                  style: TextStyle(
                                    color: Color(0xFFD2D2D2),
                                    fontSize: 13,
                                    fontFamily: 'SatoshiBold',
                                  ),
                                ),
                                Text(
                                  "Organization logo",
                                  style: TextStyle(
                                    color: Color(0xFFD2D2D2),
                                    fontSize: 13,
                                    fontFamily: 'SatoshiBold',
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.02), 
                  const Text("Country",style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff5E6366)
                  ),),
                  SizedBox(height: mQuery.size.height * 0.01),
                  GestureDetector(
                    onTap: ()
                    {
                      _showCountryPickerDialog(context);
                      setState(() {
                        _isFocused4 = !_isFocused4; // Change the color
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height*0.06,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: _isFocused4 ? const Color(0xff8DC73F) : const Color(0xffF1F1F2)
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(selectedCountry,style: const TextStyle(
                                fontSize: 13,
                                color: Color(0xffABAFB1),
                                fontFamily: 'SatoshiMedium'
                            ),),
                          ),
                          Container(
                              width: mQuery.size.width*0.06,
                              height: mQuery.size.height*0.06,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: const BoxDecoration(
                                  color: Color(0xffF1F1F2),
                                  shape: BoxShape.circle
                              ),
                              child: const Center(
                                  child: Icon(Icons.keyboard_arrow_down_outlined,
                                    color: Color(0xffABAFB1),
                                    size: 17,))),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height*0.02,),
                  const Text("Website",style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff5E6366)
                  ),),
                  SizedBox(height: mQuery.size.height * 0.01),
                  Container(
                    width: double.infinity,
                    height: mQuery.size.height * 0.06,
                    padding: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: _isFocused2 ? const Color(0xff8DC73F) : const Color(0xffF1F1F2))),
                    child: Focus(
                      onFocusChange: (hasFocus) {
                        setState(() {
                          _isFocused2 = hasFocus;
                        });
                      },
                      child: Listener(
                        onPointerDown: (_) {
                          FocusScope.of(context).requestFocus(_focusNode2);
                        },
                        child: TextField(
                          focusNode: _focusNode2,
                          controller: websiteController,
                          cursorColor: Colors.grey.shade300,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "https://",
                              hintStyle: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xffABAFB1),
                                  fontFamily: 'SatoshiMedium'),
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 16)
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height*0.02,),
                  const Text("Describe your organization",style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff5E6366)
                  ),),
                  SizedBox(height: mQuery.size.height * 0.01),
                  Container(
                    width: double.infinity,
                    height: mQuery.size.height*0.2,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: _isFocused3 ? const Color(0xff8DC73F) : const Color(0xffF1F1F2))),
                    child: Focus(
                      onFocusChange: (hasFocus) {
                        setState(() {
                          _isFocused3 = hasFocus;
                        });
                      },
                      child: Listener(
                        onPointerDown: (_) {
                          FocusScope.of(context).requestFocus(_focusNode3);
                        },
                        child: TextField(
                          focusNode: _focusNode3,
                          controller: describeController,
                          cursorColor: Colors.grey.shade300,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "The Unleash Africa event is a gathering of young tech minds around Africa" ,
                              hintStyle: TextStyle(
                                fontSize: 13,
                                color: Color(0xffABAFB1),
                                fontFamily: 'SatoshiMedium',
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 16)
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height*0.03,),
                  GestureDetector(
                     onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileCreatedSuccess()),
                        );
                      },
                    child: Container(
                      width: double.infinity,
                      height: mQuery.size.height*0.062,
                      decoration: BoxDecoration(
                          color: const Color(0xff201335),
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: const Center(
                        child: Text("Continue",style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'SatoshiBold',
                            color: Color(0xfff1f1f2)
                        ),),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _showCountryPickerDialog(BuildContext context) async {
    showCountryPicker(
      context: context,
      showPhoneCode: false,
      onSelect: (Country country) {
        setState(() {
          selectedCountry = country.name;
        });
      },
      favorite: ['US'],
    );
  }
}