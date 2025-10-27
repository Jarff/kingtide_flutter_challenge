import 'package:flutter/material.dart';

class AppBadge extends StatelessWidget {
  final String label;
  final Color color;
  final Color? textColor;
  const AppBadge({super.key, required this.label, required this.color, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
      child: Text(
        label,
        style: TextStyle(color: textColor ?? Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
      ),
    );
  }
}
