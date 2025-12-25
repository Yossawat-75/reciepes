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
  int price = 390;

  @override
  Widget build(BuildContext context) {
    int totalPrice = price * quantity;

    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Detail')),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(widget.recipe.imageUrl)),
            const SizedBox(height: 14.0),

            Text(
              widget.recipe.imgLabel,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),

            const SizedBox(height: 14.0),

            Text(
              widget.recipe.description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16.0),
            ),

            const SizedBox(height: 24),

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
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
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
              'Total: ฿$totalPrice',
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
