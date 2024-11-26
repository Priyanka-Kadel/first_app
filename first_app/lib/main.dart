import 'package:flutter/material.dart';

import 'area_of_circle_view.dart'; // Import Area of Circle screen
import 'arithmetic_view.dart'; // Import Arithmetic screen
import 'simple_interest_view.dart'; // Import Simple Interest screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigate to Arithmetic View
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ArithmeticView()),
                );
              },
              child: const Text('Arithmetic'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Simple Interest View
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SimpleInterestView()),
                );
              },
              child: const Text('Simple Interest'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Area of Circle View
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AreaOfCircleView()),
                );
              },
              child: const Text('Area of Circle'),
            ),
          ],
        ),
      ),
    );
  }
}
