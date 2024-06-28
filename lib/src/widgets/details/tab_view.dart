import 'package:flutter/material.dart';

class MyTabView extends StatelessWidget {
  const MyTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: TabBar(
        dividerColor: Colors.transparent,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        tabs: [
          Tab(text: "OVERVIEW"),
          Tab(text: "REVIEWS"),
        ],
      ),
    );
  }
}
