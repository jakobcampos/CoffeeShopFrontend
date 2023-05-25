import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:coffee_app/models/coffee_model.dart';

class CoffeeService {
  final String apiUrl = "http://localhost:3000/api/coffee";

  Future<List<Coffee>> getCoffees() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((coffee) => new Coffee.fromJson(coffee)).toList();
    } else {
      throw Exception('Failed to load coffees from API');
    }
  }
}
