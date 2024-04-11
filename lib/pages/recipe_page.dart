import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app2/components/recipe_body.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  // RecipeBody()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: RecipeBody(),
    );
  }

  AppBar _appbar() {
    return AppBar(
      actions: [
        Icon(CupertinoIcons.search),
        //시그니처 매개변수 키 값이 없다, 그 위젯의 핵심은 시그니처로 키 값을 넣지 않는다.
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
