import 'package:flutter/material.dart';

class AskPublic extends StatelessWidget {
  const AskPublic({super.key});

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
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Stack(
            children: [
              SizedBox(
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.zero, // Soft edge
                        topRight: Radius.zero, // Soft edge
                        bottomLeft:
                            Radius.circular(screenWidth * 0.07), // Sharp edge
                        bottomRight:
                            Radius.circular(screenWidth * 0.07), // Sharp edge
                      ),
                      child: Container(
                        width: screenWidth,
                        height: screenHeight * 0.15,
                        color: const Color.fromRGBO(194, 223, 227, 1.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Ask public',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.07,
                                    color:
                                        const Color.fromRGBO(37, 50, 55, 1.0),
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'healthcare providers',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.07,
                                    color:
                                        const Color.fromRGBO(37, 50, 55, 1.0),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.06,
                    ),
                    Container(
                      width: screenWidth * 0.9,
                      height: screenHeight * 0.1,
                      padding: EdgeInsets.all(screenWidth * 0.04),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.055),
                        border: Border.all(
                          color: Color.fromRGBO(37, 50, 55, 1.0), // Edge color
                          width: screenWidth * 0.005, // Edge width
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Ministry of Health',
                            style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              color: Color.fromRGBO(37, 50, 55, 1.0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.2,
                          ),
                          Icon(Icons.call,
                              size: screenWidth * 0.07,
                              color: Color.fromRGBO(37, 50, 55, 1.0)),
                          SizedBox(
                            width: screenWidth * 0.08,
                          ),
                          Icon(Icons.email,
                              size: screenWidth * 0.07,
                              color: Color.fromRGBO(37, 50, 55, 1.0))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Container(
                      width: screenWidth * 0.9,
                      height: screenHeight * 0.1,
                      padding: EdgeInsets.all(screenWidth * 0.04),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.055),
                        border: Border.all(
                          color: Color.fromRGBO(37, 50, 55, 1.0), // Edge color
                          width: screenWidth * 0.005, // Edge width
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Nahdi Care Clinics',
                            style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              color: Color.fromRGBO(37, 50, 55, 1.0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.19,
                          ),
                          Icon(Icons.call,
                              size: screenWidth * 0.07,
                              color: Color.fromRGBO(37, 50, 55, 1.0)),
                          SizedBox(
                            width: screenWidth * 0.08,
                          ),
                          Icon(Icons.email,
                              size: screenWidth * 0.07,
                              color: Color.fromRGBO(37, 50, 55, 1.0))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/AskDoctor");
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
