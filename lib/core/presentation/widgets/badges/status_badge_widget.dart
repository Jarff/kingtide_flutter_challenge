import 'package:flutter/material.dart';
import 'package:kingtide_challenge/core/core.dart';

class StatusBadge extends StatelessWidget {
  final StatusEnum status;
  const StatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return AppBadge(label: status.toDisplayValue(), color: status.color);
  }
}
