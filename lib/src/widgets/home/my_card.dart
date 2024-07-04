import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:voletdesign/src/entities/practitioner.dart';
import 'package:voletdesign/src/pages/details.dart';

class MyCard extends StatelessWidget {
  final Practitioner practitioner;
  const MyCard({
    super.key,
    required this.practitioner,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _leading(),
            const SizedBox(width: 10),
            _title(context),
            const Spacer(),
            MediaQuery.of(context).size.width > 374
                ? _trailing(context)
                : Container(),
          ],
        ),
      ),
    );
  }

  SizedBox _leading() {
    return SizedBox(
      height: 72,
      width: 72,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset(practitioner.avatar),
          ),
          Positioned(
            bottom: -12,
            right: -16,
            child: RawMaterialButton(
              onPressed: () {},
              constraints: const BoxConstraints(maxWidth: 40, maxHeight: 40),
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
    );
  }

  Column _title(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          practitioner.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 4),
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
    );
  }

  Column _trailing(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsPage(
                  practitioner: practitioner,
                ),
              ),
            );
          },
          child: const Text("Book Now"),
        ),
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
        ),
      ],
    );
  }
}
