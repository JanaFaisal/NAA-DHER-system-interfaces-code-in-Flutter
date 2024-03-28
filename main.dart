import 'package:flutter/material.dart';
import 'package:v444/pages/Welcome.dart';
import 'package:v444/pages/LoginOrSignup.dart';
import 'package:v444/pages/Login.dart';
import 'package:v444/pages/UserSignup.dart';
import 'package:v444/pages/DoctorSignup.dart';
import 'package:v444/pages/InfantSignup.dart';
import 'package:v444/pages/Homepage1.dart';
import 'package:v444/pages/Homepage2.dart';
import 'package:v444/pages/Emergency.dart';
import 'package:v444/pages/AskDoctor.dart';
import 'package:v444/pages/Profile.dart';
import 'package:v444/pages/AskPublic.dart';
import 'package:v444/pages/InfantProfile.dart';
import 'package:v444/pages/HealthCondition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //ما كان موجود في الفيد
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      //****************

      //First page appere to the user
      initialRoute: '/',
      routes: {
        '/': (context) => const Welcome(),
        '/LoginOrSignup': (context) => const LoginOrSignup(),
        '/Login': (context) => const Login(),
        '/UserSignup': (context) => const UserSignup(),
        '/DoctorSignup': (context) => const DoctorSignup(),
        '/InfantSignup': (context) => const InfantSignup(),
        '/Homepage1': (context) => const Homepage1(),
        '/Homepage2': (context) => const Homepage2(),
        '/Emergency': (context) => const Emergency(),
        '/AskDoctor': (context) => const AskDoctor(),
        '/Profile': (context) => const Profile(),
        '/AskPublic': (context) => const AskPublic(),
        '/InfantProfile': (context) => const InfantProfile(),
        '/HealthCondition': (context) => HealthCondition(),
      },
    );
  }
}
