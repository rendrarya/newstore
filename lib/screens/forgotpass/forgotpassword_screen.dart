import 'package:flutter/material.dart';
import 'package:newstore/components/mobile_layout.dart';
import 'package:newstore/components/responsive.dart';
import 'package:newstore/components/web_layout.dart';
import 'package:newstore/screens/forgotpass/forgotpassword_form.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        webChild: Weblayout(
          dataWidget: ForgotPasswordForm(),
        ),
        mobileChild: MobileLayout(dataWidget: ForgotPasswordForm()));
  }
}
