/// FileName primary_button
///
/// @Author radical
/// @Date 2022/9/25 08:40
///
/// @Description 基础按钮封装
import 'package:flutter/material.dart';

const TextStyle style = TextStyle(
  fontSize: 17,
  color: Colors.white,
);

class PrimaryButton extends StatelessWidget {
  final String title;
  final Color? color;
  final VoidCallback onPressed;

  const PrimaryButton({
    Key? key,
    required this.title,
    this.color = Colors.cyan,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        margin: const EdgeInsets.all(10),
        constraints: const BoxConstraints(
          minWidth: double.infinity,
          minHeight: 45,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: color,
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(title, style: style),
        ),
      ),
    );
  }
}
