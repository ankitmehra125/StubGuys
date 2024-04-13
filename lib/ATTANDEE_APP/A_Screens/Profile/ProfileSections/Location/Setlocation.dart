import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Profile/Mainprofile.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      // onTap: () => {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const Profile()),
                      //   )
                      // },
                      child: SvgPicture.asset(
                        'Assets/Images/Components/black_back.svg',
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    const Text(
                      'Location',
                      style: TextStyle(
                        color: Color(0xFF201335),
                        fontSize: 38.0,
                        height: 1.1,
                        fontFamily: 'SatoshiMedium',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 15.0,
                    ),
                    labelText: 'Search',
                    labelStyle: const TextStyle(
                      color: Color(0xFFE3E3E3),
                    ),
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(
                        color: Color(0xFFE3E3E3),
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(
                        color: Color(0xFFE3E3E3),
                        width: 1.0,
                      ),
                    ),
                    prefixIcon:
                        const Icon(Icons.search, color: Color(0xFFE3E3E3)),
                  ),
                ),
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}

class LanguageItem extends StatelessWidget {
  final String language;
  final bool isSelected;
  final String flagPath;
  final VoidCallback onTap;

  const LanguageItem({
    Key? key,
    required this.language,
    required this.isSelected,
    required this.flagPath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: Container(
          height: 75,
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFFF6FFEA) : Colors.white,
            border: Border(
              top: BorderSide(
                color: isSelected
                    ? const Color(0xFF8DC73F)
                    : Colors.white, // Set your desired border color
                width: 1.0, // Set your desired border thickness
              ),
              bottom: BorderSide(
                color: isSelected
                    ? const Color(0xFF8DC73F)
                    : Colors.white, // Set your desired border color
                width: 1.0, // Set your desired border thickness
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                // Use SvgPicture.asset with the dynamic flagPath
                SvgPicture.asset(
                  flagPath,
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Text(
                  language,
                  style: TextStyle(
                    fontFamily: 'SatoshiBold',
                    fontSize: 16,
                    color: isSelected
                        ? const Color(0xFF201335)
                        : const Color(0xFF201335),
                  ),
                ),
                const Spacer(),
                if (isSelected)
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: SvgPicture.asset(
                      'Assets/Images/Components/Flags/tick.svg',
                      width: 25,
                      height: 25,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
