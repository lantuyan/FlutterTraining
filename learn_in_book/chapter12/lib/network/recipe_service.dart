// import 'dart:developer';
// import 'package:http/http.dart';

import 'package:chopper/chopper.dart';
import 'recipe_model.dart';
import 'model_response.dart';
import 'model_converter.dart';
part 'recipe_service.chopper.dart';


const String apiKey = '652dc4a0dbf52232244107fc0aee9b55';
const String apiId = '093ac3bd';
const String apiUrl = 'https://api.edamam.com';

// @ChopperAPI
@ChopperApi()
abstract class RecipeService extends ChopperService {
  @Get(path: '/search')
  Future<Response<Result<APIRecipeQuery>>> queryRecipes(
    @Query('q') String query,
    @Query('from') int from,
    @Query('to') int to,
  );
  // Add create()
  static RecipeService create() {
    final client = ChopperClient(
      baseUrl: Uri.parse(apiUrl),
      interceptors: [_addQuery, HttpLoggingInterceptor()],
      converter: ModelConverter(),
      errorConverter: const JsonConverter(),
      services: [
        _$RecipeService(),
      ],
    );
    return _$RecipeService(client);
  }
}

// ADD _addQuery
Request _addQuery(Request request) {
  final params = Map<String, dynamic>.from(request.parameters);
  params['app_id'] = apiId;
  params['app_key'] = apiKey;
  return request.copyWith(parameters: params);
}



// Old RecipeService class
// class RecipeService {
//   Future getData(String url) async {
//     final response = await get(Uri.parse(url));
//     if (response.statusCode == 200) {
//       return response.body;
//     } else {
//       log('Error: ${response.body}');
//     }
//   }

//   //get Recipes
//   Future<dynamic> getRecipes(String query, int from, int to) async {
//     final recipeData = await getData(
//         '$apiUrl?app_id=$apiId&app_key=$apiKey&q=$query&from=$from&to=$to');
//     return recipeData;
//   }
// }
