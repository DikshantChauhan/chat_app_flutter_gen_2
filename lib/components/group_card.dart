import 'package:flutter/material.dart';
import 'package:testing_gen_2/models/ModelProvider.dart';

class GroupCard extends StatelessWidget {
  final Group group;

  const GroupCard({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: Text("${group.name}."),
    );
  }
}
