import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

class HomeAppBar extends StatelessWidget implements PreferredSize {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "General Practicioner",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "101 Practitioners are ready to help you!",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const SvgIcon(
            size: 32,
            icon: SvgIconData('assets/icons/search.svg'),
          ),
        )
      ],
    );
  }

  @override
  Widget get child => const Placeholder();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
