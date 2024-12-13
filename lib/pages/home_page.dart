import 'package:flutter/material.dart';
import 'package:testing_gen_2/components/group_card.dart';
import 'package:testing_gen_2/models/ModelProvider.dart';
import 'package:testing_gen_2/pages/base_page.dart';
import 'package:testing_gen_2/services/group_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Group?> groups = [];

  @override
  void initState() {
    super.initState();
    GroupService.createGroup("first group").then((_) => {
          GroupService.fetchGroup().then((response) => {
                setState(() {
                  groups = response;
                })
              })
        });
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBar: AppBar(
        title: const Text('Groups'),
        centerTitle: true,
      ),
      body: groups.isEmpty
          ? const Text("no groups found")
          : ListView.builder(
            itemCount: groups.length,
              itemBuilder: (_, index) => GroupCard(group: groups[index]!)),
    );
  }
}
