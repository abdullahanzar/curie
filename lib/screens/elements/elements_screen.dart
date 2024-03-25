import 'package:flutter/material.dart';

class ElementsScreen extends StatelessWidget {
  const ElementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Elements')),
      body: const Center(child: Text('Elements Screen')),
    );
  }
}
