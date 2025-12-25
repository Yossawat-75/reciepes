import 'package:flutter/material.dart';
import 'package:reciepes/Model/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({super.key, required this.recipe});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    int totalPrice = widget.recipe.price * quantity;

    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Detail')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.recipe.imageUrl),
            const SizedBox(height: 14),

            Text(
              widget.recipe.imgLabel,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              widget.recipe.description,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            Text(
              'ราคา: ฿${widget.recipe.price}',
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: quantity > 1
                      ? () {
                          setState(() {
                            quantity--;
                          });
                        }
                      : null,
                ),
                Text(
                  quantity.toString(),
                  style: const TextStyle(fontSize: 18),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      quantity++;
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 16),

            Text(
              'ราคารวม: ฿$totalPrice',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
