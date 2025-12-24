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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage(widget.recipe.imageUrl),
                height: 250,
              ),
              const SizedBox(height: 16),
              Text(
                widget.recipe.imgLabel,
                textAlign: TextAlign.center,
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
              Text(
                'ราคา: ${widget.recipe.price} บาท / ชิ้น',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 12),
              Text(
                'จำนวน: $quantity ชิ้น',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Slider(
                value: quantity.toDouble(),
                min: 1,
                max: 10,
                divisions: 9,
                label: quantity.toString(),
                onChanged: (value) {
                  setState(() {
                    quantity = value.toInt();
                  });
                },
              ),
              const SizedBox(height: 12),
              Text(
                'ราคารวม: $totalPrice บาท',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
