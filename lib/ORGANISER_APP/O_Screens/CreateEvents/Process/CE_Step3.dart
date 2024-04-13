import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Components/HashTextField.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Process/CE_Step4.dart';
import 'package:table_calendar/table_calendar.dart';
import 'dart:io';

class CE_Step3 extends StatefulWidget {
  const CE_Step3({super.key});

  @override
  State<CE_Step3> createState() => _CE_Step3State();
}

class _CE_Step3State extends State<CE_Step3> {
  File? _imageFile;
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

  void _removeImage() {
    setState(() {
      _imageFile = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xFFDEFBB8),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.14,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('Assets/Images/Components/cross.svg'),
                        const Text(
                          "Create Event",
                          style: TextStyle(
                            color: Color(0xFF201335),
                            fontSize: 24,
                            fontFamily: 'SatoshiBold',
                          ),
                        ),
                        SvgPicture.asset(
                          'Assets/Images/Components/createevent3.svg',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
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
                                                left: 16.0),
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
                                                const SizedBox(width: 8),
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
                                  "Event Poster",
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),

                  const Text(
                    "Event Video (Youtube or Vimeo link)",
                    style: TextStyle(
                      color: Color(0xFF5E6366),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Theme(
                      data: ThemeData(
                        textTheme: const TextTheme(
                          subtitle1: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xFFABAFB1),
                            fontFamily: 'SatoshiRegular',
                          ),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFF1F1F2)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFF1F1F2)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          labelText: 'https://youtube.be/We9293kuj',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text(
                    "Describe your event (short)",
                    style: TextStyle(
                      color: Color(0xFF5E6366),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.height * 0.065,
                    child: Theme(
                      data: ThemeData(
                        textTheme: const TextTheme(
                          subtitle1: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xFFABAFB1),
                            fontFamily: 'SatoshiRegular',
                          ),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF8DC73F)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFF8DC73F)),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          labelText: 'Keep it short and straight to the point',
                          suffixIcon: SvgPicture.asset(
                              "Assets/Images/Components/generate.svg"),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "0/150",
                        style: TextStyle(
                          color: Color(0xFFABAFB1),
                          fontSize: 12,
                          fontFamily: 'SatoshiRegular',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const Text(
                    "Full Summary",
                    style: TextStyle(
                      color: Color(0xFF5E6366),
                      fontSize: 12,
                      fontFamily: 'SatoshiMedium',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Theme(
                      data: ThemeData(
                        textTheme: const TextTheme(
                          subtitle1: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xFFABAFB1),
                            fontFamily: 'SatoshiRegular',
                          ),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF8DC73F)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF8DC73F)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            labelText: '',
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SvgPicture.asset(
                                      "Assets/Images/Components/generate.svg"),
                                ],
                              ),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            contentPadding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.3,
                                left: 16.0)),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "0/150",
                        style: TextStyle(
                          color: Color(0xFFABAFB1),
                          fontSize: 12,
                          fontFamily: 'SatoshiRegular',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  //buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50.0, // Adjust the width as needed
                        height: 50.0, // Adjust the height as needed
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF1F1F2),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: Color(0xFF141619),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CE_Step4()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF201335),
                          minimumSize: const Size(181, 55),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        child: const Text(
                          'Save and Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily:
                                'SatoshiMedium', // You can adjust the font weight
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
