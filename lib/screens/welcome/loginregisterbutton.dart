import 'package:flutter/material.dart';
import 'package:newstore/components/roundedbutton.dart';
import 'package:newstore/screens/signup/signup_screen.dart';

class LoginRegisterButtons extends StatelessWidget {
  const LoginRegisterButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Text(
            "Welcome",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          RoundedButton(label: "Sign In", onPressed: () {}),
          const SizedBox(
            height: 10,
          ),
          RoundedButton(
              label: "Sign Up",
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()),
                    (route) => false);
              })
        ],
      ),
    );
  }
}
