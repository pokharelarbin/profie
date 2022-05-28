import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'response.dart';
import 'uiconstant.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      smallScreen: _buildSmallScreen(),
    );
  }

  Widget _buildSmallScreen() {
    return SingleChildScrollView(
      
    );
  }
}
