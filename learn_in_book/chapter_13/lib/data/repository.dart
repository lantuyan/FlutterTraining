import 'models/models.dart';

abstract class Repository {
  // Add find methods
  List<Recipe> findAllRecipes();

  Recipe findRecipeById(int id);

  List<Ingredient> findAllIngredients();

  List<Ingredient> findRecipeIngredients(int recipeId);

  // Add insert
  int insertRecipe(Recipe recipe);

  List<int> insertIngredients(List<Ingredient> ingredients);

  // Add delete
  void deleteRecipe(Recipe recipe);

  void deleteIngredient(Ingredient ingredient);

  void deleteIngredients(List<Ingredient> ingredients);

  void deleteRecipeIngredients(int recipeId);

  // Add initializing and closing
  Future init();
  
  void close();

}
