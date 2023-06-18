import 'package:flutter/material.dart';
import 'package:newstore/components/mobile_layout.dart';
import 'package:newstore/components/responsive.dart';
import 'package:newstore/components/web_layout.dart';
import 'package:newstore/screens/singin/login_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        webChild: Weblayout(
          imageWidget: Image.asset(
            "assets/tuna.jpg",
            width: 150,
          ),
          dataWidget: LoginForm(),
        ),
        mobileChild: MobileLayout(
          imageWidget: Image.asset(
            "assets/tuna.jpg",
            width: 75,
          ),
          dataWidget: LoginForm(),
        ));
  }
}
