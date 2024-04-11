import 'package:flutter/material.dart';

// 레시피 메뉴 한 개
class RecipMenuItem extends StatelessWidget {
  IconData mIcon;
  String text;

  // 나중에는
  // final mIcon; // ? 타입 포함하고 있어서 오류가 안난다.
  // final text;

  RecipMenuItem({required this.mIcon, required this.text});

  // 무조건 받을꺼면 선택적 매개변수에 required 붙여야 함

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container 빈박스, 자식 하나 가질 수 있다.
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            mIcon,
            color: Colors.redAccent,
            size: 30,
          ),
          Text(
            "${text}",
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
