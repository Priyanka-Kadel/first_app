import 'package:flutter/material.dart';

class SimpleInterestView extends StatelessWidget {
  const SimpleInterestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest'),
      ),
      body: const Center(
        child: Text('Simple Interest Calculations Here!'),
      ),
    );
  }
}
