import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'response.dart';
import 'uiconstant.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

Map<String, Color?> mycolors = {
  'primary': const Color.fromARGB(1, 249, 249, 249),
  'textb': const Color.fromRGBO(21, 10, 51, 1),
  'textn': const Color.fromRGBO(82, 75, 107, 1),
  'white': const Color.fromRGBO(255, 255, 255, 1),
  'blue': const Color.fromRGBO(19, 1, 96, 1),
};

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final style1 = GoogleFonts.dmSans(
    color: const Color.fromRGBO(82, 75, 107, 1),
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  final style12 = GoogleFonts.dmSans(
    color: const Color.fromRGBO(21, 10, 51, 1),
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  final style2 = GoogleFonts.dmSans(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  final style21 = GoogleFonts.dmSans(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  final style3 = GoogleFonts.dmSans(
    color: const Color.fromRGBO(255, 255, 255, 1),
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
  final url =
      'https://c8.alamy.com/comp/2H0RYJE/5-five-years-old-photo-for-passport-or-id-card-emotionally-grimacing-little-boy-with-blond-hair-and-bright-green-eyes-white-background-2H0RYJE.jpg';
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      smallScreen: _buildSmallScreen(),
    );
  }

  Widget _buildSmallScreen() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: SizeConfig.screenHeight * 0.3,
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  border: Border.all(
                    style: BorderStyle.none,
                    // color: Colors.blue,
                  ),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Rectangle.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: const Alignment(-1, -1),
                        child: CircleAvatar(
                          radius: 45,
                          child: ClipOval(
                            child: Image.network(url,
                                width: 240, height: 240, fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      _sizedBox(height: 0.005),
                      Text(
                        'Orlando Diggs',
                        style: style2,
                      ),
                      _sizedBox(height: 0.002),
                      Text(
                        'California,USA',
                        style: style21,
                      ),
                      _sizedBox(height: 0.01),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 6,
                          primary: const Color.fromRGBO(255, 255, 255, 0.2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text('Change Image', style: style21),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: SizeConfig.screenHeight * 0.3,
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  // gradient: LinearGradient(
                  //   begin: FractionalOffset.topCenter,
                  //   end: FractionalOffset.bottomCenter,
                  //   colors: [
                  //     const Color.fromARGB(1, 19, 1, 96).withOpacity(0),
                  //     const Color.fromARGB(1, 54, 53, 60).withOpacity(1),
                  //   ],
                  //   stops: const [0, 1],
                  // ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 30, top: 25),
                  child: Align(
                    alignment: const Alignment(-1, -1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(
                          BootstrapIcons.reply,
                          color: Colors.white,
                        ),
                        // Spacer(width:),
                        _sizedBox(width: 0.03),
                        const Icon(
                          BootstrapIcons.gear,
                          color: Colors.white,
                          // size: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
              height: SizeConfig.screenHeight * 1.05,
              width: SizeConfig.screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // _sizedBox(height: 0.23),
                  _sizedBox(height: 0.03),
                  Text(
                    'FullName',
                    style: style12,
                  ),
                  _sizedBox(height: 0.015),
                  _textForm(
                    text: 'Brandone Louis',
                  ),
                  _sizedBox(height: 0.03),
                  Text(
                    'Date of Birth',
                    style: style12,
                  ),
                  _sizedBox(height: 0.015),
                  _textForm(
                    text: '06 August 1992',
                    isDate: true,
                  ),
                  _sizedBox(height: 0.03),
                  Text(
                    'Gender',
                    style: style12,
                  ),
                  _sizedBox(height: 0.015),
                  _textForm(
                    text: 'Mobile Number',
                  ),
                  _sizedBox(height: 0.03),
                  Text(
                    'Email address',
                    style: style12,
                  ),
                  _sizedBox(height: 0.015),
                  _textForm(
                    text: 'Brandonelouis@gmail.com ',
                  ),
                  _sizedBox(height: 0.03),
                  Text(
                    'Phone number',
                    style: style12,
                  ),
                  _sizedBox(height: 0.015),
                  _textForm(
                    text: 'Confirm Password',
                  ),
                  _sizedBox(height: 0.03),
                  Text(
                    'Location',
                    style: style12,
                  ),
                  _sizedBox(height: 0.015),
                  _textForm(
                    text: 'California, United states',
                  ),
                  _sizedBox(height: 0.06),
                  _button(
                    textColor: Colors.white,
                    text: 'SAVE',
                    butttonColor: const Color.fromRGBO(19, 1, 96, 1),
                  ),
                  _sizedBox(height: 0.03),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sizedBox({double height = 0, double width = 0}) {
    return SizedBox(
      height: SizeConfig.screenHeight * height,
      width: SizeConfig.screenWidth * width,
    );
  }

  Widget _textForm({String? text, bool isDate = false}) {
    return Material(
      color: mycolors['white'],
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextField(
          decoration: InputDecoration(
            // prefix: isRadio ? Radio(value: 1, groupValue: groupValue, onChanged: (value) => selectedValue = 1),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: text,
            labelStyle: style1,
            filled: true,
            fillColor: mycolors['white'],
            border: OutlineInputBorder(
              borderSide: BorderSide.none, // No border
              borderRadius: BorderRadius.circular(10), // Apply corner radius
            ),
            suffixIcon: isDate ? const Icon(Icons.calendar_month) : null,
          ),
        ),
      ),
    );
  }
// prefixIcon: Icon(
//   icon,
//   size: 24,
//   // color: UIConstant.lightGrey,
// ),

  Widget _button({
    required Color butttonColor,
    required String text,
    required Color textColor,
  }) {
    return Center(
      child: SizedBox(
        height: 50,
        width: SizeConfig.screenWidth * 0.5,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 6,
            primary: butttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: style3,
                ),
              ),
              // const Icon(BootstrapIcons.arrow_right_short),
            ],
          ),
        ),
      ),
    );
  }
}
