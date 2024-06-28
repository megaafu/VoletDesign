import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

final actionList = [
  {"icon": "assets/icons/user_add.svg", "label": "Follow"},
  {"icon": "assets/icons/phone.svg", "label": "Audio"},
  {"icon": "assets/icons/video.svg", "label": "Video"},
  {"icon": "assets/icons/message-square.svg", "label": "Message"},
];

class UserActions extends StatelessWidget {
  const UserActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: actionList
          .map(
            (action) => Column(
              children: [
                SvgIcon(
                  color: Theme.of(context).colorScheme.onSurface,
                  size: 16,
                  icon: SvgIconData(action["icon"]!),
                ),
                const SizedBox(height: 10),
                Text(action["label"]!),
              ],
            ),
          )
          .toList(),
    );
  }
}
