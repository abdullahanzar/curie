import 'package:curie/models/elements_data_model.dart';
import 'package:curie/services/api_periodic_table_elements.dart';
import 'package:curie/widgets/element_card.dart';
import 'package:flutter/material.dart';

class ElementsScreen extends StatefulWidget {
  const ElementsScreen({super.key});

  @override
  State<ElementsScreen> createState() => _ElementsScreenState();
}

class _ElementsScreenState extends State<ElementsScreen> {
  final PeriodicTableService _periodicTableService = PeriodicTableService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Elements')),
      body: FutureBuilder<List<PeriodicElement>>(
        future: _periodicTableService.getPeriodicElements(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final elements = snapshot.data!;
            return ListView.builder(
              itemCount: elements.length,
              itemBuilder: (context, index) {
                final element = elements[index];
                return ElementCard(
                  element: element,
                  atomicNumber: element.atomicNumber,
                  symbol: element.symbol,
                  name: element.name,
                );
              },
            );
          } else {
            return const Center(child: Text('No data'));
          }
        },
      ),
    );
  }
}