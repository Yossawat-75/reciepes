import 'package:flutter/material.dart';
import 'package:reciepes/Model/recipe.dart';
import 'package:reciepes/recipe-detail.dart';
import 'package:google_fonts/google_fonts.dart'; 
void main() {
  runApp(const RecipeApp());
}
 
class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: const AppBarTheme(centerTitle: true)),
      home: const MyHomePage(title: 'Recipe App'),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  print('You Tapped on ${Recipe.samples[index].imgLabel}');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RecipeDetail(recipe: Recipe.samples[index]);
                      },
                    ),
                  );
                },
                child: buildRecipeCard(Recipe.samples[index]),
              );
            },
            itemCount: Recipe.samples.length,
          ),
        ),
      ),
    );
  }
 
  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
            const SizedBox(height: 14.0),
            Text(
              recipe.imgLabel,
              style: GoogleFonts.kanit(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}