import 'package:flutter/material.dart';
import 'package:recipe/model/recipe.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, this.recipe});
  final Recipe? recipe;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detailed Recipe')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(widget.recipe!.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cook Time',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.orange,
                  ),
                  child: Text('${widget.recipe?.cookTime.toString()} Min(s)'),
                ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Ratings'),

                ...List.generate(5, (starIndex) {
                  return Icon(
                    starIndex < widget.recipe!.ratings
                        ? Icons.star
                        : Icons.star_border,
                    size: 16,
                    color: Colors.amber,
                  );
                }),
              ],
            ),

            const SizedBox(height: 16),

            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: widget.recipe!.tags.isNotEmpty
                  ? widget.recipe!.tags.map((tag) {
                      return Chip(
                        label: Text(
                          tag,
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        backgroundColor: Colors.teal,
                      );
                    }).toList()
                  : [Text('No tags available')],
            ),

            const SizedBox(height: 16),
            // ingredient sections
            Text(
              'Ingredients',
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),
            ...widget.recipe!.ingredients.map(
              (ingredient) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 16,
                      color: Colors.green,
                    ),
                    const SizedBox(height: 8),
                    Text(ingredient),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),
            Text(
              'Instructions',
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            ...widget.recipe!.instructions.asMap().entries.map((entry) {
              final index = entry.key + 1;
              final instructions = entry.value;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.teal,
                      ),
                      child: Center(
                        child: Text(
                          index.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(child: Text(instructions)),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
