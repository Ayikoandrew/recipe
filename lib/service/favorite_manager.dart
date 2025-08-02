import 'package:recipe/model/recipe.dart';

class FavoritesManager {
  static final FavoritesManager _instance = FavoritesManager._internal();
  factory FavoritesManager() => _instance;
  FavoritesManager._internal();

  final List<Recipe> _favorites = [];

  List<Recipe> get favorites => List.unmodifiable(_favorites);

  bool isFavorite(Recipe recipe) {
    return _favorites.any((fav) => fav.name == recipe.name);
  }

  void addFavorite(Recipe recipe) {
    if (!isFavorite(recipe)) {
      _favorites.add(recipe);
    }
  }

  void removeFavorite(Recipe recipe) {
    _favorites.removeWhere((fav) => fav.name == recipe.name);
  }

  void toggleFavorite(Recipe recipe) {
    if (isFavorite(recipe)) {
      removeFavorite(recipe);
    } else {
      addFavorite(recipe);
    }
  }
}
