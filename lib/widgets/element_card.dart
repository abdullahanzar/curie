import 'package:curie/models/elements_data_model.dart';
import 'package:curie/widgets/SelectedElement.dart';
import 'package:flutter/material.dart';

class ElementCard extends StatelessWidget {
  final PeriodicElement element;
  final int atomicNumber;
  final String symbol;
  final String name;

  const ElementCard({super.key,
    required this.element,
    required this.atomicNumber,
    required this.symbol,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedElement(element: element, atomicNumber: atomicNumber,
          symbol: symbol,
          name: name,)));
      },
      child: Card(
        child: ListTile(
          title: Text('$symbol - $name'),
          subtitle: Text('Atomic Number: $atomicNumber'),
        ),
      ),
    ) ;

  }
}
