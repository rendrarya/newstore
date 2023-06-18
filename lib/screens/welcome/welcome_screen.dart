import 'package:flutter/material.dart';
import 'package:newstore/components/mobile_layout.dart';
import 'package:newstore/components/responsive.dart';
import 'package:newstore/components/web_layout.dart';
import 'package:newstore/screens/welcome/loginregisterbutton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        webChild: Weblayout(
          imageWidget: Image.asset(
            "assets/tuna.jpg",
            width: 250,
            height: 250,
          ),
          dataWidget: const LoginRegisterButtons(),
        ),
        mobileChild: MobileLayout(
          imageWidet: Image.asset(
            "assets/tuna.jpg",
            height: 150,
          ),
          dataWidget: const LoginRegisterButtons(),
        ));
  }
}
