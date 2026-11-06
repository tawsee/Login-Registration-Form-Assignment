import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: 180,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                width: 5,
                color: const Color.fromARGB(255, 162, 76, 118),
              ),
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  const Color.fromARGB(255, 255, 192, 213),
                  const Color.fromARGB(255, 228, 136, 170),
                  const Color.fromARGB(255, 194, 143, 164),
                ],
              ),
            ),
            child: Text(
              "My Profile",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            height: 180,
            width: 180,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                width: 5,
                color: const Color.fromARGB(255, 228, 136, 170),
              ),
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  const Color.fromARGB(255, 194, 143, 164),
                  const Color.fromARGB(255, 164, 103, 124),
                  const Color.fromARGB(255, 162, 76, 118),
                ],
              ),
            ),
            child: Text(
              "Daily Updates",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}