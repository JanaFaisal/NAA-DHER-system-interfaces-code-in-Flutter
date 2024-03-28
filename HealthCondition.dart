import 'package:flutter/material.dart';

class HealthCondition extends StatefulWidget {
  const HealthCondition({super.key});

  @override
  _HealthConditionState createState() => _HealthConditionState();
}

class _HealthConditionState extends State<HealthCondition> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
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
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                        bottomLeft: Radius.circular(screenWidth * 0.07),
                        bottomRight: Radius.circular(screenWidth * 0.07),
                      ),
                      child: Container(
                        width: screenWidth,
                        height: screenHeight * 0.15,
                        color: const Color.fromRGBO(92, 107, 115, 1),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "The infant's",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.07,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'health history',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.07,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.06,
                    ),
                    AnimatedContainer(
                      width: screenWidth * 0.9,
                      height: isExpanded
                          ? screenHeight * 0.25
                          : screenHeight * 0.15,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.055),
                        border: Border.all(
                          color: Color.fromRGBO(37, 50, 55, 1.0), // Edge color
                          width: screenWidth * 0.005, // Edge width
                        ), // You can change the color as needed
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: screenHeight * 0.015,
                            left: screenHeight * 0.02,
                            child: Text(
                              'The condition from the AI model',
                              style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  color: Color.fromRGBO(37, 50, 55, 1.0),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.03,
                              ),
                              Text(
                                'Date',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    color: Color.fromRGBO(92, 107, 115, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: screenWidth * 0.3,
                              ),
                              Text(
                                'Time',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    color: Color.fromRGBO(92, 107, 115, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 120,
                              ),
                            ],
                          ),
                          Positioned(
                            top: 0,
                            right: screenHeight * 0.01,
                            child: IconButton(
                              icon: isExpanded
                                  ? Icon(
                                      Icons.arrow_drop_up_rounded,
                                      size: screenWidth * 0.08,
                                      color: Color.fromRGBO(37, 50, 55, 1.0),
                                    )
                                  : Icon(
                                      Icons.arrow_drop_down_rounded,
                                      size: screenWidth * 0.08,
                                      color: Color.fromRGBO(37, 50, 55, 1.0),
                                    ),
                              onPressed: () {
                                setState(() {
                                  isExpanded = !isExpanded;
                                });
                              },
                            ),
                          ),
                          if (isExpanded)
                            Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: screenHeight *
                                          0.14), // Adjust the height as needed
                                  Text(
                                    'The message',
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.045,
                                        color: Color.fromRGBO(37, 50, 55, 1.0),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
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
    );
  }
}
