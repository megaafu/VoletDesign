import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

class MapCard extends StatelessWidget {
  const MapCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFDDE1E6),
      child: IntrinsicHeight(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/hospital.png"),
              const SizedBox(width: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hospital XY",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text.rich(
                    TextSpan(
                      children: [
                        const WidgetSpan(
                          child: SvgIcon(
                            size: 16,
                            color: Color(0xffDFB300),
                            icon: SvgIconData('assets/icons/star.svg'),
                          ),
                        ),
                        const WidgetSpan(child: SizedBox(width: 6)),
                        TextSpan(
                          text: "4.9 based on 100 ratings",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Av. Alof Palm 293, Maputo, Moz",
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
