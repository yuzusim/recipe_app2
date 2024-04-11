import 'package:flutter/material.dart';

import 'recipe_list_item.dart';
import 'recipe_menu.dart';
import 'recipe_title.dart';

class RecipeBody extends StatelessWidget {
  RecipeBody({
    super.key,
  });

  final list = ["coffee", "pizza", "burger"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          RecipeTitle(),
          RecipeMenu(),
          // RecipeListItem(title: "coffee"),
          // RecipeListItem(title: "pizza"),
          // RecipeListItem(title: "burger"),
          for (String text in list) RecipeListItem(title: text),
          // 익스프레션이 아니라 리턴이 안된다 . map을 쓰면 컬렉션이 안된다.
          // list.map((e) => RecipeListItem(title: e)).toSet(),
        ],
      ),
    );
  }
}
