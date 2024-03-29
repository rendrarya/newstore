import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newstore/screens/welcome/welcome_screen.dart';
import 'package:newstore/services/auth_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AuthenticationService.intializeService();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: WelcomeScreen());
  }
}
