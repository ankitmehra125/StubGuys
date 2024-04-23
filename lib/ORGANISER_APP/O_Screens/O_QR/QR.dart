import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRViewExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {

  late final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  late QRViewController controller;
  late String qrText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text(
                  "Scan QR\nCode",
                  style: TextStyle(
                    color: Color(0xFF201335),
                    fontSize: 32,
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset("Assets/Images/qr.svg"),
                Container(
                  width: MediaQuery.of(context).size.width * 0.65, // Customize the width of your container
                  height: MediaQuery.of(context).size.height * 0.3, // Customize the height of your container
                  child: QRView(
                    key: qrKey,
                    onQRViewCreated: _onQRViewCreated,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.1,
            color: const Color(0xFF008000),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Scan successful",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'SatoshiMedium',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     if (controller != null) {
      //       controller.toggleFlash();
      //     }
      //   },
      //   child: Icon(Icons.flash_on),
      // ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });

    controller.scannedDataStream.listen((scanData) {
      setState(() {
        qrText = scanData.code!;
      });

      // Here, you can open the link or perform any action with the scanned QR code data.
      // For demonstration, we'll print the QR code data.
      print('Scanned QR Code: $qrText');
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
