import 'package:flutter/material.dart';
import 'package:newstore/components/roundedbutton.dart';
import 'package:newstore/screens/home/Keranjang/keranjang.dart';
import 'package:newstore/screens/home/Keranjang/keranjang_screen.dart';
import 'package:newstore/screens/home/ListIkan/listikan.dart';
import 'package:newstore/screens/home/ListIkan/listikan_screen.dart';
import 'package:newstore/screens/singin/signin_screen.dart';
import 'package:newstore/screens/welcome/welcome_screen.dart';
import 'package:newstore/services/auth_service.dart';
import 'package:newstore/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Keranjang()));
              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: SizedBox(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Column(
                children: [
                  const Text(
                    "Hello",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  Text(
                    AuthenticationService().getUserName() ?? "",
                    style: const TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
            // Button Log Out
            Container(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 100,
                child: RoundedButton(
                  label: "Sign Out",
                  onPressed: () {
                    // Sign Out Firebase
                    AuthenticationService().signOut().then((value) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeScreen(),
                        ),
                        (route) => false,
                      );
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: mobileBackgroundColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: primaryColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt_outlined,
              color: primaryColor,
            ),
            label: 'Ikan',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      index == 0 ? const HomeScreen() : const FishList()),
              (route) => false);
        },
      ),
    );
  }
}
