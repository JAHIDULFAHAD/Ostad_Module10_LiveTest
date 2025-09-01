import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:livetest_3_module14/recepi_model.dart';
class RecepiListview extends StatefulWidget {
  const RecepiListview({super.key});

  @override
  State<RecepiListview> createState() => _RecepiListviewState();
}

class _RecepiListviewState extends State<RecepiListview> {
  List<RecepiModel> recepiList = [];
  final String recepiJson = '''{
  "recipes": [
  {
  "title": "Pasta Carbonara",
  "description": "Creamy pasta dish with bacon and cheese.",
  "ingredients": ["spaghetti","bacon","egg","cheese"]
  },
  {
  "title": "Caprese Salad",
  "description": "Simple and refreshing salad with tomatoes, mozzarella, and basil.",
  "ingredients": ["tomatoes","mozzarella","basil"]
  },
  {
  "title": "Banana Smoothie",
  "description": "Healthy and creamy smoothie with bananas and milk.",
  "ingredients": ["bananas","milk"]
  },
  {"title": "Chicken Stir-Fry",
  "description": "Quick and flavorful stir-fried chicken with vegetables.",
  "ingredients": ["chicken breast","broccoli","carrot","soy sauce"]
  },
  {
  "title": "Grilled Salmon",
  "description": "Delicious grilled salmon with lemon and herbs.",
  "ingredients": ["salmon fillet","lemon","olive oil","dill"]
  },
  {
  "title": "Vegetable Curry",
  "description": "Spicy and aromatic vegetable curry.",
  "ingredients": ["mixed vegetables","coconut milk","curry powder"]
  },
  {"title": "Berry Parfait",
  "description": "Layered dessert with fresh berries and yogurt.",
  "ingredients": ["berries","yogurt","granola"]
  }
  ]
  }''';
  @override
  void initState() {
    super.initState();
    _loadRecipes();
  }

  void _loadRecipes() {
    final parsed = jsonDecode(recepiJson);
    final List<dynamic> recipesJson = parsed['recipes'];
    recepiList = recipesJson.map((json) => RecepiModel.fromJson(json)).toList();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Recipes"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
          separatorBuilder:  (context, index) {
            return Divider(
              color: Colors.grey,
            );
          },
          itemCount: recepiList.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(recepiList[index].title),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(recepiList[index].description),
              Text("Ingredients: ${recepiList[index].ingredients.join(', ')}")
            ],
          ),
        ),
      ),
    );
  }
}
