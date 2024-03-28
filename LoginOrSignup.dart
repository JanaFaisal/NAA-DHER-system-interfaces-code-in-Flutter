import 'package:flutter/material.dart';

// Here the code of the Login Or Signup page of NAA'DHER application
//     Size size = MediaQuery.of(context).size;

class LoginOrSignup extends StatelessWidget {
  const LoginOrSignup({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromRGBO(224, 251, 252, 1.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.03),
                  Image.asset("assets/images/Logo.png",
                      height: size.height * 0.6),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/Login");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(37, 50, 55, 1.0),
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.2,
                        vertical: size.height * 0.02,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(size.width * 0.05),
                      ),
                    ),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontSize: size.width * 0.06,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/UserSignup");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(92, 107, 115, 1),
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.18,
                        vertical: size.height * 0.02,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(size.width * 0.05),
                      ),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: size.width * 0.06,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
