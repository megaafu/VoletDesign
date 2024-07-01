import 'package:flutter/material.dart';

class MyTabView extends StatelessWidget {
  const MyTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: TabBar(
        dividerColor: Theme.of(context).colorScheme.surface,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        tabs: const [
          Tab(text: "OVERVIEW"),
          Tab(text: "REVIEWS"),
        ],
      ),
    );
  }
}
