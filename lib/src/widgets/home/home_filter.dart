import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

class HomeFilter extends StatelessWidget {
  const HomeFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const ChoiceChip(
          label: Text.rich(
            TextSpan(
              children: [
                WidgetSpan(
                  child: SvgIcon(
                    size: 16,
                    icon: SvgIconData('assets/icons/location-pin-alt 1.svg'),
                  ),
                ),
                WidgetSpan(child: SizedBox(width: 4)),
                TextSpan(
                  text: "CDMX",
                ),
              ],
            ),
          ),
          selected: false,
        ),
        const SizedBox(width: 10),
        const ChoiceChip(
          label: Text.rich(
            TextSpan(
              children: [
                WidgetSpan(
                  child: SvgIcon(
                    size: 16,
                    icon: SvgIconData('assets/icons/language.svg'),
                  ),
                ),
                WidgetSpan(child: SizedBox(width: 4)),
                TextSpan(
                  text: "Spanish",
                ),
              ],
            ),
          ),
          selected: false,
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            "Reset Filters",
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}
