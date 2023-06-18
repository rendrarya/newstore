import 'package:flutter/material.dart';
import 'package:newstore/components/mobile_layout.dart';
import 'package:newstore/components/responsive.dart';
import 'package:newstore/components/web_layout.dart';
import 'package:newstore/screens/welcome/loginregisterbutton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        webChild: Weblayout(
          dataWidget: LoginRegisterButtons(),
        ),
        mobileChild: MobileLayout(
          dataWidget: LoginRegisterButtons(),
        ));
  }
}
