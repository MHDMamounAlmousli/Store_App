import 'package:flutter/material.dart';
class changeColor extends StatelessWidget {
  const changeColor({
    super.key,
    required this.color,
    required this.isSelected
  });
  final Color color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected?color:Colors.transparent)
      ),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:color
        ),
      ),
    );
  }
}