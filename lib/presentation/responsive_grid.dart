import 'package:flutter/material.dart';
import 'package:recipe/model/recipe.dart';

class ResponsiveGrid extends StatelessWidget {
  const ResponsiveGrid({super.key, required this.recipes});
  final List<Recipe> recipes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: recipes.length,
      itemBuilder: (context, index) {
        final recipe = recipes[index];
        return ResponsiveGridCard(recipe: recipe);
      },
    );
  }
}

class ResponsiveGridCard extends StatelessWidget {
  const ResponsiveGridCard({super.key, required this.recipe});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        return _buildLayout(width);
      },
    );
  }

  Widget _buildLayout(double width) {
    if (width > 1200) {
      return _buildDesktopLayout(width);
    } else if (width > 600) {
      return _buildTabletLayout(width);
    } else {
      return _buildPhoneLayout(width);
    }
  }

  Widget _buildDesktopLayout(double width) {
    return Card();
  }

  Widget _buildTabletLayout(double width) {
    return Card();
  }

  Widget _buildPhoneLayout(double width) {
    return Card(
      elevation: 0,
      child: SingleChildScrollView(
        reverse: true,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(12),
                ),
                image: DecorationImage(image: NetworkImage(recipe.imageUrl)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
