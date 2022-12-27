import 'package:flutter/material.dart';

class SubComponent extends StatelessWidget {
  const SubComponent({
    Key? key,
    required this.color,
    required this.isActive,
  }) : super(key: key);

  final Color color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16 / 4),
      decoration: BoxDecoration(
        border: Border.all(color: isActive ? Colors.blue : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        radius: 10,
        backgroundColor: color,
      ),
    );
  }
}
