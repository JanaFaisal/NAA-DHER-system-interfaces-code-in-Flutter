import 'package:flutter/material.dart';

// Here the code of the Login page of NAA'DHER application

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // To make the code fit for any screen size
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
          body: SafeArea(
              child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          color: Color.fromRGBO(224, 251, 252, 1.0),
          child: Stack(
            children: [
              SizedBox(
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Text(
                      "Log in",
                      style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontFamily: "myfont",
                          color: Color.fromRGBO(37, 50, 55, 1.0)),
                    ),
                    Image.asset("assets/images/NAADHER.png"),
                    SizedBox(
                      height: screenHeight * 0.1,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.05),
                          border: Border.all(
                              color: Color.fromRGBO(37, 50, 55, 1.0))),
                      width: screenWidth * 0.7,
                      height: screenHeight * 0.08,
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.016),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Color.fromRGBO(37, 50, 55, 1.0),
                              size: screenWidth * 0.05,
                            ),
                            hintText: "Email :",
                            hintStyle: TextStyle(fontSize: screenWidth * 0.035),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.025,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.05),
                          border: Border.all(
                              color: Color.fromRGBO(37, 50, 55, 1.0))),
                      width: screenWidth * 0.7,
                      height: screenHeight * 0.08,
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.016),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            suffix: Icon(
                              Icons.visibility,
                              color: Color.fromRGBO(37, 50, 55, 1.0),
                              size: screenWidth * 0.05,
                            ),
                            icon: Icon(
                              Icons.lock,
                              color: Color.fromRGBO(37, 50, 55, 1.0),
                              size: screenWidth * 0.05,
                            ),
                            hintText: "Password :",
                            hintStyle: TextStyle(fontSize: screenWidth * 0.035),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.1,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/Homepage1");
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(37, 50, 55, 1.0)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.2,
                            vertical: screenHeight * 0.02)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.05))),
                      ),
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            fontSize: screenWidth * 0.06,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/UserSignup");
                          },
                          child: Text(
                            " Sign Up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.04),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/LoginOrSignup");
                    },
                    icon: Icon(Icons.arrow_back),
                    iconSize: screenWidth * 0.09,
                    color: Color.fromRGBO(37, 50, 55, 1.0),
                  )),
            ],
          ),
        ),
      ))),
    );
  }
}
