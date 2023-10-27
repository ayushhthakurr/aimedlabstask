import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ResponsiveCard1(),
              SizedBox(height: 20),
              ResponsiveCard2(),
            ],
          ),
        ),
      ),
    );
  }
}

class ResponsiveCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardWidth = constraints.maxWidth * 0.8; // Adjust as needed
        double greyHeight = 20.0;
        double greenHeight = 80.0;

        return Container(
          width: cardWidth,
          decoration: BoxDecoration(
            color: Colors.red[200],
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10.0), // Padding for the grey area
                color: Colors.grey,
                height: greyHeight,
              ),
              SizedBox(height: 10), // Add space between the grey and green areas
              Container(
                padding: EdgeInsets.all(10.0), // Padding for the green area
                color: Colors.lightGreen[400],
                height: greenHeight,
              ),
            ],
          ),
        );
      },
    );
  }
}

class ResponsiveCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardWidth = constraints.maxWidth * 0.8; // Adjust as needed
        double greyHeight = 50.0;
        double greenHeight = 50.0;

        return Container(
          width: cardWidth,
          decoration: BoxDecoration(
            color: Colors.red[200],
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10.0), // Padding for the grey area
                color: Colors.grey,
                height: greyHeight,
              ),
              SizedBox(height: 10), // Add space between the grey and green areas
              Container(
                padding: EdgeInsets.all(10.0), // Padding for the green area
                color: Colors.lightGreen[400],
                height: greenHeight,
              ),
            ],
          ),
        );
      },
    );
  }
}
