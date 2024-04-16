import 'package:flutter/material.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: mQuery.size.width*0.045
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: mQuery.size.height*0.06,),
            GestureDetector(
              onTap: ()
              {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,
                color: Color(0xff201335),
              ),
            ),
            SizedBox(height: mQuery.size.height*0.02,),
            Text('Set Your New Password',style: TextStyle(
              fontSize: 24,
              fontFamily: 'SatoshiBold',
              color: Color(0xff201335)
            ),),
            SizedBox(height: mQuery.size.height*0.06,),
            TextField(
              controller: newPasswordController,
             decoration: InputDecoration(
            labelText: 'Enter new password',
            labelStyle: TextStyle(
              fontFamily: 'SatoshiMedium',
              color: Color(0xFF696D61),
              // Adjust the color
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF696D61), // Adjust the color of the base line
                width: 0.9, // Adjust the width of the base line
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF696D61), // Adjust the color of the base line for unfocused state
                width: 0.9, // Adjust the width of the base line for unfocused state
              ),
            ),
          ),
        ),
            SizedBox(height: mQuery.size.height*0.035,),
            TextField(
              controller: confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm new password',
                labelStyle: TextStyle(
                  fontFamily: 'SatoshiMedium',
                  color: Color(0xFF696D61),
                  // Adjust the color
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF696D61), // Adjust the color of the base line
                    width: 0.9, // Adjust the width of the base line
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF696D61), // Adjust the color of the base line for unfocused state
                    width: 0.9, // Adjust the width of the base line for unfocused state
                  ),
                ),
              ),
            ),
            SizedBox(height: mQuery.size.height*0.045,),
            Container(
              width: double.infinity,
              height: mQuery.size.height*0.065,
              decoration: BoxDecoration(
                color: Color(0xff8DC73F),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Text("Confirm",style: TextStyle(
                  color: Color(0xffF1F1F2),
                  fontSize: 16,
                  fontFamily: 'SatoshiBold'
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
