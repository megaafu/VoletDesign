import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:voletdesign/src/entities/practitioner.dart';

class HeadLine extends StatelessWidget {
  final Practitioner practitioner;
  const HeadLine({
    super.key,
    required this.practitioner,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          transform: Matrix4.translationValues(0, -32, 100),
          child: SizedBox(
            height: 80,
            width: 80,
            child: Stack(
              clipBehavior: Clip.none,
              fit: StackFit.expand,
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  child: Image.asset(practitioner.avatar),
                ),
                Positioned(
                  bottom: -12,
                  right: -16,
                  child: RawMaterialButton(
                    onPressed: () {},
                    constraints:
                        const BoxConstraints(maxWidth: 40, maxHeight: 40),
                    fillColor: Colors.white,
                    padding: const EdgeInsets.all(4),
                    shape: const CircleBorder(),
                    child: const SvgIcon(
                      color: Color(0xff8943A8),
                      size: 8,
                      icon: SvgIconData('assets/icons/video.svg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 16),
        Text(
          practitioner.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
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
                text: "${practitioner.rating}(${practitioner.avaliations})",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        )
      ],
    );
  }
}
