import 'package:chapter_13/data/models/ingredient.dart';
import 'package:equatable/equatable.dart';

class Recipe extends Equatable {
  int? id;
  String? label;
  String? image;
  String? url;

  List<Ingredient>? ingredients;
  final double? calories;
  final double? totalWeight;
  final double? totalTime;

  Recipe({
    this.id,
    this.label,
    this.image,
    this.url,
    this.calories,
    this.totalWeight,
    this.totalTime,
  });

  @override
  List<Object?> get props => [
    id,
    label,
    image,
    url,
    calories,
    totalWeight,
    totalTime,
  ];

}
