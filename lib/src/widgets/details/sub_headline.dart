import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:voletdesign/src/entities/practitioner.dart';
import 'package:voletdesign/src/pages/maps.dart';

class SubHeadeLine extends StatelessWidget {
  final Practitioner practitioner;
  const SubHeadeLine({
    super.key,
    required this.practitioner,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  const WidgetSpan(
                    child: SvgIcon(
                      size: 16,
                      icon: SvgIconData('assets/icons/people.svg'),
                    ),
                  ),
                  const WidgetSpan(child: SizedBox(width: 6)),
                  TextSpan(
                    text: practitioner.title,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Text.rich(
              TextSpan(
                children: [
                  const WidgetSpan(
                    child: SvgIcon(
                      size: 16,
                      icon: SvgIconData('assets/icons/location.svg'),
                    ),
                  ),
                  const WidgetSpan(child: SizedBox(width: 6)),
                  TextSpan(
                    text: practitioner.location,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Text.rich(
              TextSpan(
                children: [
                  const WidgetSpan(
                    child: SvgIcon(
                      size: 16,
                      icon: SvgIconData('assets/icons/dollar.svg'),
                    ),
                  ),
                  const WidgetSpan(child: SizedBox(width: 6)),
                  TextSpan(
                    text: "Consultation Fee: ",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "from \$${practitioner.prince}",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  )
                ],
              ),
            ),
          ],
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MapsVolet(),
                ),
              );
            },
            child: const Text("Book Now"))
      ],
    );
  }
}
