import 'package:flutter/material.dart';

class UnderDevelopment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '🏗️',
                style: TextStyle(
                  fontSize: 55,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Under Consturction',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 33,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
