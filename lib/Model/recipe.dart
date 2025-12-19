import 'package:reciepes/Model/ingredient.dart';

class Recipe {
  String imgLabel;
  String imageUrl;
  String description;
  List<Ingredient> ingredient = [];
 
  Recipe(this.imageUrl, this.imgLabel,this.description,this.ingredient);
  
 

  static List<Recipe> samples = [
  Recipe(
    'assets/images/Green fish curry.webp',
    'Green fish curry',
    'แกงเขียวหวานปลา รสเข้มข้นจากพริกแกงเขียวหวานและกะทิหอมมัน ใส่เนื้อปลาสดและโหระพา ให้รสเผ็ดหอมแบบไทยแท้',
    [
      Ingredient(name: 'green curry paste', quantity: 50, unit: 'grams'),
      Ingredient(name: 'fish', quantity: 300, unit: 'grams'),
      Ingredient(name: 'coconut milk', quantity: 250, unit: 'ml'),
      Ingredient(name: 'thai basil', quantity: 1, unit: 'handful'),
      Ingredient(name: 'chili', quantity: 3, unit: 'pieces'),
    ],
  ),

  Recipe(
    'assets/images/Larb Muang.webp',
    'Larb Muang',
    'ลาบเมืองเหนือ รสจัดจ้านหอมข้าวคั่วและสมุนไพร คลุกเคล้ากับเนื้อสับ ปรุงรสเปรี้ยว เค็ม เผ็ด กลมกล่อม',
    [
      Ingredient(name: 'minced pork', quantity: 300, unit: 'grams'),
      Ingredient(name: 'chili flakes', quantity: 2, unit: 'tbsp'),
      Ingredient(name: 'lime juice', quantity: 2, unit: 'tbsp'),
      Ingredient(name: 'fish sauce', quantity: 2, unit: 'tbsp'),
      Ingredient(name: 'mint leaves', quantity: 1, unit: 'handful'),
    ],
  ),

  Recipe(
    'assets/images/Pad Thai.webp',
    'Pad Thai',
    'ผัดไทยเส้นจันท์เหนียวนุ่ม ผัดกับซอสผัดไทยรสหวานเปรี้ยว ใส่กุ้งสด ไข่ และถั่วงอก โรยถั่วลิสงคั่ว',
    [
      Ingredient(name: 'rice noodles', quantity: 200, unit: 'grams'),
      Ingredient(name: 'shrimp', quantity: 150, unit: 'grams'),
      Ingredient(name: 'egg', quantity: 2, unit: 'pieces'),
      Ingredient(name: 'bean sprouts', quantity: 100, unit: 'grams'),
      Ingredient(name: 'pad thai sauce', quantity: 3, unit: 'tbsp'),
    ],
  ),

  Recipe(
    'assets/images/Sweet thai basil smash cocktail.webp',
    'Sweet thai basil smash cocktail',
    'ค็อกเทลกลิ่นโหระพาไทย หอมสดชื่น ผสานรสเปรี้ยวหวานจากมะนาวและไซรัป ดื่มง่าย เหมาะกับวันสบาย ๆ',
    [
      Ingredient(name: 'thai basil', quantity: 10, unit: 'leaves'),
      Ingredient(name: 'lime juice', quantity: 30, unit: 'ml'),
      Ingredient(name: 'simple syrup', quantity: 20, unit: 'ml'),
      Ingredient(name: 'gin', quantity: 45, unit: 'ml'),
      Ingredient(name: 'ice', quantity: 1, unit: 'cup'),
    ],
  ),

  Recipe(
    'assets/images/Thai pumpkin curry.webp',
    'Thai pumpkin curry',
    'แกงฟักทองกะทิ รสกลมกล่อมหอมมัน ฟักทองเนื้อนุ่มหวานธรรมชาติ เคี่ยวกับพริกแกงและเนื้อไก่',
    [
      Ingredient(name: 'pumpkin', quantity: 300, unit: 'grams'),
      Ingredient(name: 'red curry paste', quantity: 50, unit: 'grams'),
      Ingredient(name: 'coconut milk', quantity: 250, unit: 'ml'),
      Ingredient(name: 'chicken', quantity: 200, unit: 'grams'),
      Ingredient(name: 'basil leaves', quantity: 1, unit: 'handful'),
    ],
  ),
];
}