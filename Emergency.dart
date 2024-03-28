import 'package:flutter/material.dart';

class Emergency extends StatelessWidget {
  const Emergency({Key? key}) : super(key: key);

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
                            bottomLeft: Radius.circular(
                                screenWidth * 0.07), // Sharp edge
                            bottomRight: Radius.circular(
                                screenWidth * 0.07), // Sharp edge
                          ),
                          child: Container(
                            width: screenWidth,
                            height: screenHeight * 0.35,
                            color: Color.fromARGB(255, 165, 20, 20),
                            child: Center(
                              child: Icon(
                                Icons.warning_rounded,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: screenWidth * 0.4,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenWidth * 0.16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.phone,
                              color: Color.fromARGB(255, 165, 20, 20),
                              size: screenWidth * 0.08,
                            ),
                            Text(
                              " Call Doctor!",
                              style: TextStyle(
                                  fontSize: screenWidth * 0.08,
                                  color: const Color.fromARGB(255, 165, 20, 20),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(screenWidth * 0.07), // Soft edge
                        topRight:
                            Radius.circular(screenWidth * 0.07), // Soft edge
                        bottomLeft: Radius.zero, // Sharp edge
                        bottomRight: Radius.zero, // Sharp edge
                      ),
                      child: Container(
                        width: screenWidth,
                        height: screenHeight * 0.35,
                        color: Color.fromARGB(255, 165, 20, 20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/Homepage1");
                      },
                      icon: Icon(Icons.arrow_back),
                      iconSize: screenWidth * 0.09,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
