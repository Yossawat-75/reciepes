import 'package:flutter/material.dart';
import 'package:reciepes/Model/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({super.key, required this.recipe});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Detail')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(widget.recipe.imageUrl)),
            const SizedBox(height: 14),

            Text(
              widget.recipe.imgLabel,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),

            const SizedBox(height: 10),

            Text(
              widget.recipe.description,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Palatino',
              ),
            ),

            const SizedBox(height: 16),

            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '$sliderVal servings',
              value: sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  sliderVal = newValue.round();
                });
              },
            ),

            const SizedBox(height: 8),

            const Text(
              'Ingredients',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Expanded(
              child: ListView.builder(
                itemCount: widget.recipe.ingredient.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredient[index];
                  final adjustQuantity = widget.recipe.ingredient[index].quantity * sliderVal;           
                  return Text(
                    '${adjustQuantity} '
                    '${ingredient.unit} '
                    '${ingredient.name}',
                    style: const TextStyle(fontSize: 16),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
