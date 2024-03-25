import 'package:flutter/material.dart';

class ScientistsScreen extends StatelessWidget {
  const ScientistsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scientists')),
      body: const Center(child: Text('Scientists Screen')),
    );
  }
}
