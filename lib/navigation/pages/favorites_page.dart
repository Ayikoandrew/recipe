import 'package:flutter/material.dart';
import 'package:recipe/model/recipe.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key, required this.favoriteRecipes});
  final List<Recipe> favoriteRecipes;

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  late List<Recipe> favorites;
  @override
  void initState() {
    super.initState();
    favorites = List.from(widget.favoriteRecipes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorites')),
      body: favorites.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.favorite_border, size: 64, color: Colors.grey),
                  const SizedBox(height: 16),
                  Text('No favorites yet', style: TextStyle(fontSize: 18)),
                ],
              ),
            )
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final recipe = favorites[index];
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(recipe.imageUrl),
                    ),
                    title: Text(recipe.name),
                    subtitle: Text(recipe.description),
                    trailing: IconButton(
                      onPressed: () => _removeFavorites(index),
                      icon: Icon(Icons.delete, color: Colors.red),
                    ),
                  ),
                );
              },
            ),
    );
  }

  void _removeFavorites(int index) {
    setState(() {
      favorites.removeAt(index);
    });
  }
}

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  List<Recipe> favoritesList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Items'),
        actions: [
          IconButton(
            icon: Badge(
              label: Text('${favoritesList.length}'),
              child: Icon(Icons.favorite),
            ),
            onPressed: _openFavorites,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favoritesList.length,
              itemBuilder: (context, index) {
                final item = favoritesList[index];
                final isFavorited = favoritesList.any(
                  (fav) => fav.id == item.id,
                );

                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(item.imageUrl),
                    ),
                    title: Text(item.name),
                    subtitle: Text(item.description),
                    trailing: IconButton(
                      icon: Icon(
                        isFavorited ? Icons.favorite : Icons.favorite_border,
                        color: isFavorited ? Colors.red : Colors.grey,
                      ),
                      onPressed: () => _toggleFavorite(item),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _toggleFavorite(Recipe item) {
    setState(() {
      final existingIndex = favoritesList.indexWhere(
        (fav) => fav.id == item.id,
      );
      if (existingIndex >= 0) {
        favoritesList.removeAt(existingIndex);
      } else {
        favoritesList.add(item);
      }
    });
  }

  Future<void> _openFavorites() async {
    final updatedFavorites = await Navigator.push<List<Recipe>>(
      context,
      MaterialPageRoute(
        builder: (context) => FavoritesPage(favoriteRecipes: favoritesList),
      ),
    );

    if (updatedFavorites != null) {
      setState(() {
        favoritesList = updatedFavorites;
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Favorites updated!'),
            backgroundColor: Colors.blue,
          ),
        );
      }
    }
  }
}
