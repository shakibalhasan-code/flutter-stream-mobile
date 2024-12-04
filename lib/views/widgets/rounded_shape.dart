import 'package:flutter/material.dart';

class RoundedShape extends StatelessWidget {
  final Color color;
  final Widget child;
  const RoundedShape({super.key, required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: child,
      ),
    );
  }
}
