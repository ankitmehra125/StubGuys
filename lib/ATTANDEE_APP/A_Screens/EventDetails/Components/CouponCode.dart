import 'package:flutter/material.dart';

class CouponCode extends StatefulWidget {
  const CouponCode({Key? key}) : super(key: key);

  @override
  State<CouponCode> createState() => CouponCodeState();
}

class CouponCodeState extends State<CouponCode> {
  // Dummy array of valid coupon codes
  List<String> validCouponCodes = ['COUPON123', 'DISCOUNT50', 'SAVE10'];
  TextEditingController _couponController = TextEditingController();
  bool isCouponValid = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Set your desired width
      height: 50.0, // Set your desired height
      child: TextField(
        controller: _couponController,
        onChanged: (couponCode) {
          _validateCouponCode(couponCode);
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: _buildCouponValidationIcon(),
        ),
      ),
    );
  }

  Widget _buildCouponValidationIcon() {
    return IconButton(
      onPressed: () {
        // This is optional since the validation is done in onChanged
        // You can keep it or remove it based on your design preference
      },
      icon: isCouponValid
          ? Icon(Icons.check_circle, color: Color(0xFF8DC73F))
          : Icon(Icons.clear, color: Colors.red),
    );
  }

  void _validateCouponCode(String enteredCode) {
    enteredCode = enteredCode.toUpperCase();

    setState(() {
      isCouponValid = validCouponCodes.contains(enteredCode);
    });
  }
}
