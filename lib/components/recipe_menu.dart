import 'package:flutter/material.dart';
import 'package:recipe_app2/components/recipe_menu_item.dart';

// 레시피 메뉴들 모임
class RecipeMenu extends StatelessWidget {
  const RecipeMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        children: [
          RecipMenuItem(mIcon: Icons.food_bank, text: "ALL"),
          SizedBox(width: 25),
          RecipMenuItem(mIcon: Icons.emoji_food_beverage, text: "Coffee"),
          SizedBox(width: 25),
          RecipMenuItem(mIcon: Icons.fastfood, text: "Burger"),
          SizedBox(width: 25),
          RecipMenuItem(mIcon: Icons.local_pizza, text: "Pizza"),
        ],
      ),
    );
  }
}
