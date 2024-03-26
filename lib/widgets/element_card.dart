import 'package:flutter/material.dart';

class ElementCard extends StatelessWidget {
  final int atomicNumber;
  final String symbol;
  final String name;

  const ElementCard({super.key,
    required this.atomicNumber,
    required this.symbol,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('$symbol - $name'),
        subtitle: Text('Atomic Number: $atomicNumber'),
      ),
    );
  }
}
