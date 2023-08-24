import 'package:json_annotation/json_annotation.dart';

part 'recipe_model.g.dart';

@JsonSerializable()
class APIRecipeQuery {
  //Add APIRecipeQuery.fromJson
  factory APIRecipeQuery.fromJson(Map<String, dynamic> json) {
    return _$APIRecipeQueryFromJson(json);
  }
  Map<String, dynamic> toJson() => _$APIRecipeQueryToJson(this);

  @JsonKey(name: 'q')
  String query;
  int from;
  int to;
  bool more;
  int count;
  List<APIHits> hits;

  APIRecipeQuery({
    required this.query,
    required this.from,
    required this.to,
    required this.more,
    required this.count,
    required this.hits,
  });
  // Constructor
}

// add JsonSerializable class APIHit
@JsonSerializable()
class APIHits {
  APIRecipe recipe;

  APIHits({
    required this.recipe,
  });

  factory APIHits.fromJson(Map<String, dynamic> json) =>
      _$APIHitsFromJson(json);
  Map<String, dynamic> toJson() => _$APIHitsToJson(this);
}

// class APIRecipe
@JsonSerializable()
class APIRecipe {
  String label;
  String image;
  String url;

  List<APIIngredient> ingredients;

  double calories;
  double totalWeight;
  double totalTime;

  APIRecipe({
    required this.label,
    required this.image,
    required this.url,
    required this.ingredients,
    required this.calories,
    required this.totalWeight,
    required this.totalTime,
  });

  factory APIRecipe.fromJson(Map<String, dynamic> json) =>
      _$APIRecipeFromJson(json);
  Map<String, dynamic> toJson() => _$APIRecipeToJson(this);
}

// global Helper function
String getCalories(double? calories) {
  if (calories == null) {
    return '0 Kcal';
  }
  return '${calories.floor()} Kcal';
}

String getWeight(double? weight) {
  if (weight == null) {
    return '0 g';
  }
  return '${weight.floor()} g';
}

// class APIIngredient
@JsonSerializable()
class APIIngredient {
  @JsonKey(name: 'text')
  String name;
  double weight;

  APIIngredient({
    required this.name,
    required this.weight,
  });

  factory APIIngredient.fromJson(Map<String, dynamic> json) =>
      _$APIIngredientFromJson(json);
  Map<String, dynamic> toJson() => _$APIIngredientToJson(this);
  
}
