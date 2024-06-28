import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:voletdesign/src/entities/practitioner.dart';

final services = [
  "Primary Care",
  "Chronic Disease Management",
  "Family Medicine",
  "Preventive Medicine",
  "Minor Procedures",
  "Womens Health",
  "Pediatric Care",
  "Nutritional Counseling",
  "Mental Health Support",
];

final images = [
  "assets/image1.png",
  "assets/image2.png",
  "assets/image3.png",
  "assets/image4.png",
];

class OverView extends StatelessWidget {
  final Practitioner practitioner;
  const OverView({
    super.key,
    required this.practitioner,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text(
          "About",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 22),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset("assets/about.png"),
        ),
        const SizedBox(height: 16),
        const Text(
            "Dr. Desiree Castañeda is a highly esteemed General Practitioner based in Miguel Hidalgo, Mexico, known for her exceptional medical expertise, dedication to patient care, and impressive educational background. With a passion for improving the health and well-being of her community, Dr. Castañeda has become a trusted healthcare provider and a beacon of hope for those seeking medical assistance in the region."),
        const SizedBox(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Services",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "See All",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: services
              .map(
                (service) => ChoiceChip(
                  labelStyle: const TextStyle(color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  label: Text(service),
                  selected: false,
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Reviews',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
            )
          ],
        ),
        const SizedBox(height: 20),
        // ignore: prefer_const_constructors
        Text(
          "Kristin Watson",
          style: const TextStyle(color: Colors.black),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              'Verified Buyer',
              style: TextStyle(color: Colors.green),
            ),
            Wrap(
              spacing: 4,
              children: List.generate(
                5,
                (_) => const SvgIcon(
                  size: 16,
                  color: Color(0xffDFB300),
                  icon: SvgIconData('assets/icons/star.svg'),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Text(
            "Dr. Castañeda is a true gem in the medical field. She took the time to thoroughly explain my diagnosis and treatment options, ensuring that I felt comfortable and informed every step of the way. Her dedication to her patients is evident, and her warm and empathetic approach put me at ease during a challenging time. I highly recommend her as a trusted healthcare provider."),
        const SizedBox(height: 16),
        Wrap(
          spacing: 6,
          runSpacing: 6,
          children: images
              .map(
                (image) => Image.asset(image),
              )
              .toList(),
        ),
        const SizedBox(height: 16),
        const Row(
          children: [
            Text(
              "Helpful ?",
            ),
            SizedBox(width: 8),
            Text(
              'Yes(2) | No(0)',
              style: TextStyle(wordSpacing: 6),
            ),
            Spacer(),
            Text("Nov 09, 2022"),
          ],
        ),
        const SizedBox(height: 22),
        const Row(
          children: [
            Text(
              "Color: Cinnamon | Size: 6",
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(
                      child: Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 16,
                  )),
                  WidgetSpan(child: SizedBox(width: 6)),
                  TextSpan(
                    text: "Recommended",
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 22),
      ],
    );
  }
}
