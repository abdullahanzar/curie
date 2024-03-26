import 'dart:convert';
import 'dart:math';
import 'package:curie/models/elements_data_model.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PeriodicTableService {
  static const String _cacheKey = 'periodic_elements';

  Future<List<PeriodicElement>> getPeriodicElements() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final cachedData = prefs.getString(_cacheKey);

    /*var logger = Logger(
      printer: PrettyPrinter(),
    );*/ //really helpful in debugging

    if (cachedData != null) {
      final jsonData = json.decode(cachedData) as List<dynamic>;
      final elements =
          jsonData.map((json) => PeriodicElement.fromJson(json)).toList();
      return elements;
    }

    final response = await http.get(Uri.parse(
        'https://pubchem.ncbi.nlm.nih.gov/rest/pug/periodictable/json'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body)['Table']['Row'] as List<dynamic>;

      final elements = jsonData.map((row) {
        final cell = row['Cell'] as List<dynamic>;
        return PeriodicElement(
          atomicNumber: int.parse(cell[0]),
          symbol: cell[1],
          name: cell[2],
          atomicMass: double.tryParse(cell[3]) ?? 0.0,
          hexColor: cell[4] ?? '',
          electronConfiguration: cell[5] ?? '',
          electronegativity: double.tryParse(cell[6]) ?? 0.0,
          atomicRadius: int.tryParse(cell[7]),
          ionizationEnergy: double.tryParse(cell[8]) ?? 0.0,
          oxidationStates: cell[10] ?? '',
          state: cell[11] ?? '',
          meltingPoint: int.tryParse(cell[12]),
          boilingPoint: int.tryParse(cell[13]),
          density: double.tryParse(cell[14]) ?? 0.0,
          group: cell[15] ?? '',
          yearDiscovered: int.tryParse(cell[16]),
        );
      }).toList();

      prefs.setString(_cacheKey, json.encode(elements));
      return elements;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
