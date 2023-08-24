import 'dart:developer';
import 'package:http/http.dart';

const String apiKey = '652dc4a0dbf52232244107fc0aee9b55';
const String apiId = '093ac3bd';
const String apiUrl = 'https://api.edamam.com/search';

class RecipeService {
  Future getData(String url) async {
    final response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      log('Error: ${response.body}');
    }
  }

  //get Recipes
  Future<dynamic> getRecipes(String query, int from, int to) async {
    final recipeData = await getData(
        '$apiUrl?app_id=$apiId&app_key=$apiKey&q=$query&from=$from&to=$to');
    return recipeData;
  }
}
