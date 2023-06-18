import 'package:flutter/material.dart';
import 'package:newstore/components/mobile_layout.dart';
import 'package:newstore/components/responsive.dart';
import 'package:newstore/components/web_layout.dart';
import 'package:newstore/screens/signup/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        webChild: Weblayout(
          imageWidget: Image.asset("assets/tuna.jpg", width: 150),
          dataWidget: SignUpForm(),
        ),
        mobileChild: MobileLayout(
          imageWidet: Image.asset(
            "assets/tuna.jpg",
            width: 75,
          ),
          dataWidget: SignUpForm(),
        ));
  }
}
