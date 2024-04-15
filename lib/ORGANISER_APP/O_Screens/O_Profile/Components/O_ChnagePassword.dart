import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../O_HomeFeeds/O_HomeFeed.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                      GestureDetector(
                        onTap : ()
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const O_HomeFeed()),
                          );
                        },
                        child: SvgPicture.asset(
                            "Assets/ORGANISER_APP/Icons/Orders/formkit_arrowleft.svg"),
                      ),
                      SizedBox(
                        width: mQuery.size.width * 0.1,
                      ),
                      const Text(
                        "Change Password",
                        style: TextStyle(
                          color: Color(0xFF201335),
                          fontSize: 24,
                          fontFamily: 'SatoshiBold',
                          height: 1.1,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: mQuery.size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Column(
                  children: [
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            "Current Password",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff5E6366),
                              fontFamily: 'SatoshiMedium',
                              height: 1.1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomTextField(passwordController)
                  ],
                ),
                SizedBox(
                  height: mQuery.size.height * 0.02,
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            "New Password",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff5E6366),
                              fontFamily: 'SatoshiMedium',
                              height: 1.1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomTextField(newPasswordController),
                  ],
                ),
              ],
            ),
          ),
          Expanded(child: SizedBox()),
          Container(
            width: double.infinity,
            height: mQuery.size.height * 0.065,
            margin: EdgeInsets.symmetric(
              horizontal: mQuery.size.width*0.045
            ),
            decoration: BoxDecoration(
                color: const Color(0xff201335),
                borderRadius: BorderRadius.circular(15)),
            child: const Center(
              child: Text(
                "Change Password",
                style: TextStyle(
                    color: Color(0xffF1F1F2),
                    fontFamily: 'SatoshiBold',
                    fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: mQuery.size.height*0.023,)
        ],
      ),
    );
  }
}

CustomTextField(TextEditingController controller) {
  return Builder(builder: (context) {
    var mQuery = MediaQuery.of(context);
    return Container(
      width: double.infinity,
      height: mQuery.size.height * 0.06,
      child: TextField(
        controller: controller,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFFf1f1f2), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFFf1f1f2), width: 1),
          ),
        ),
      ),
    );
  });
}
