import 'package:flutter/material.dart';
import 'package:recipe/model/recipe.dart';

class DesktopPage extends StatefulWidget {
  const DesktopPage({super.key});

  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: LayoutBuilder(
        builder: (contex, constraints) {
          final availableWidth = constraints.maxWidth;
          return Row(
            children: [
              SizedBox(
                width: availableWidth * 0.60,
                height: constraints.maxHeight,
                child: GridView.builder(
                  itemCount: recipes.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6,
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 3,
                  ),
                  itemBuilder: (context, index) {
                    final recipe = recipes[index];
                    return Card(
                      shape: RoundedRectangleBorder(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(recipe.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            recipe.name,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rating',
                                style: TextStyle(color: Colors.black),
                              ),
                              ...List.generate(5, (starIndex) {
                                return Icon(
                                  starIndex < recipe.ratings
                                      ? Icons.star
                                      : Icons.star_border,
                                  size: 12,
                                  color: Colors.amber,
                                );
                              }),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                color: Colors.red,
                width: availableWidth * 0.40,
                height: constraints.maxHeight,
              ),
            ],
          );
        },
      ),
    );
  }
}
