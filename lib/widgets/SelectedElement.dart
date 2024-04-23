import 'package:curie/data/element_image_urls.dart';
import 'package:curie/models/elements_data_model.dart';
import 'package:flutter/material.dart';

class SelectedElement extends StatelessWidget {
  final PeriodicElement element;
  final int atomicNumber;
  final String symbol;
  final String name;
  final double atomicMass;
  final String hexColor;
  final String electronConfiguration;
  final num? atomicRadius;
  final double ionizationEnergy;
  final double electronegativity;
  final String oxidationStates;
  final String standardState;
  final num meltingPoint;
  final num boilingPoint;
  final double density;
  final String groupBlock;
  final num yearDiscovered;

  SelectedElement({
    Key? key,
    required this.element,
    required this.atomicNumber,
    required this.symbol,
    required this.name,
  })  : atomicMass = element.atomicMass ?? 0.0,
        hexColor = element.hexColor ?? "",
        electronConfiguration = element.electronConfiguration ?? "",
        density = element.density ?? 0.0,
        atomicRadius = element.atomicRadius ?? 0.0,
        ionizationEnergy = element.ionizationEnergy ?? 0.0,
        electronegativity = element.electronegativity ?? 0.0,
        oxidationStates = element.oxidationStates ?? "",
        standardState = element.state ?? "",
        meltingPoint = element.meltingPoint ?? 0.0,
        boilingPoint = element.boilingPoint ?? 0.0,
        groupBlock = element.group ?? "",
        yearDiscovered = element.yearDiscovered ?? 0.0,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
        elevation: 0.0,
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          ImageUrls[atomicNumber-1]),
                      radius: 50.0),
                ),
                Divider(
                  height: 60.0,
                  color: Colors.grey[800],
                ),
                const Text(
                  "Name",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  "Symbol",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$symbol",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Atomic Number",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$atomicNumber",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  "Atomic Mass",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$atomicMass",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  "Hex Color",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$hexColor",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  "Electron Configuration",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$electronConfiguration",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  "Electronegativity",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$electronegativity",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  "Atomic Radius",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$atomicRadius",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  "Ionization Energy",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$ionizationEnergy",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  "Oxidation States",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$oxidationStates",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  "Standard State",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$standardState",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  "Melting Point",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$meltingPoint",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  "Boiling Point",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$boilingPoint",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  "Oxidation States",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$oxidationStates",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  "Density",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$density",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  "Group Block",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$groupBlock",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Text(
                  "Year Discovered",
                  style: TextStyle(color: Colors.grey, letterSpacing: 1.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "$yearDiscovered",
                  style: const TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 1.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
