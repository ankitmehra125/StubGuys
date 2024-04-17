import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Currency extends StatefulWidget {
  const Currency({Key? key}) : super(key: key);

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  String selectedLanguage = 'USD'; // Default selected language

  final List<String> availableLanguages = [
    'USD',
    'EUR',
    'GPB',
    'JPY',
    'CNY',
    'ZAR',
    'CAD'
  ];

  // Map of languages and their corresponding flag SVG paths
  final Map<String, String> languageFlagPaths = {
    'English': 'Assets/Images/Components/Flags/english.svg',
    'French': 'Assets/Images/Components/Flags/french.svg',
    'Germany': 'Assets/Images/Components/Flags/germany.svg',
    'Italian': 'Assets/Images/Components/Flags/ilalian.svg',
    'Korean': 'Assets/Images/Components/Flags/korean.svg',
    'Norwegian': 'Assets/Images/Components/Flags/norwegian.svg',
    'Polish': 'Assets/Images/Components/Flags/poland.svg'
  };

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Choose Currency',
                      style: TextStyle(
                        color: Color(0xFF201335),
                        fontSize: 20.0,
                        height: 1.1,
                        fontFamily: 'SatoshiBold',
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                        {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close))
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
                    labelText: 'Choose Currency',
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: availableLanguages.length,
              itemBuilder: (context, index) {
                return LanguageItem(
                  language: availableLanguages[index],
                  isSelected: availableLanguages[index] == selectedLanguage,
                  flagPath: languageFlagPaths[availableLanguages[index]] ?? '',
                  onTap: () {
                    // Handle language selection
                    setState(() {
                      selectedLanguage = availableLanguages[index];
                    });
                    print('Selected language: ${availableLanguages[index]}');
                  },
                );
              },
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
                      color: Color(0xff8DC73F),
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
