import 'package:flutter/material.dart';

// Here the code of the Signup page of NAA'DHER application

class InfantSignup extends StatelessWidget {
  const InfantSignup({super.key});

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
                    Image.asset("assets/images/NAADHER.png"),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Text(
                      "Infant information",
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: Color.fromRGBO(37, 50, 55, 1.0),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
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
                              Icons.person,
                              color: Color.fromRGBO(37, 50, 55, 1.0),
                              size: screenWidth * 0.05,
                            ),
                            hintText: "First Name : ",
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
                              Icons.person,
                              color: Color.fromRGBO(37, 50, 55, 1.0),
                              size: screenWidth * 0.05,
                            ),
                            hintText: "Last Name : ",
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
                              Icons.accessibility_new,
                              color: Color.fromRGBO(37, 50, 55, 1.0),
                              size: screenWidth * 0.05,
                            ),
                            hintText: "Age : ",
                            hintStyle: TextStyle(fontSize: screenWidth * 0.035),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.12,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/Homepage1");
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(37, 50, 55, 1.0)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.18,
                            vertical: screenHeight * 0.02)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.05))),
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: screenWidth * 0.06,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Text(
                      "Add another infant",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.04),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/DoctorSignup");
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
