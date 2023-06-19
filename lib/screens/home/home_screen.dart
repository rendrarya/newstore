import 'package:flutter/material.dart';
import 'package:newstore/components/mobile_layout.dart';
import 'package:newstore/components/responsive.dart';
import 'package:newstore/components/roundedbutton.dart';
import 'package:newstore/components/web_layout.dart';
import 'package:newstore/screens/welcome/welcome_screen.dart';
import 'package:newstore/services/auth_service.dart';

class HomeScreeen extends StatelessWidget {
  const HomeScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        webChild: Weblayout(dataWidget: HomeScreenData()),
        mobileChild: MobileLayout(dataWidget: HomeScreenData()));
  }
}

class HomeScreenData extends StatelessWidget {
  const HomeScreenData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text(
                "Hello",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
              Text(
                AuthenticationService().getUserName() ?? "",
                style: const TextStyle(fontSize: 30),
              )
            ],
          ),
          //Button Log Out
          SizedBox(
            width: 100,
            child: RoundedButton(
                label: "Sign Out",
                onPressed: () {
                  //Sign Out Firebase
                  AuthenticationService().signOut().then((value) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomeScreen()),
                        (route) => false);
                  });
                }),
          )
        ],
      ),
    );
  }
}
