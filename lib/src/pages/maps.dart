// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsVolet extends StatefulWidget {
  const MapsVolet({super.key});

  @override
  State<MapsVolet> createState() => _MapsVoletState();
}

class _MapsVoletState extends State<MapsVolet> {
  static const wolftech = LatLng(-25.9597956, 32.5854064);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Doctors Nearby",
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: wolftech,
              zoom: 18,
            ),
            markers: {
              const Marker(
                markerId: MarkerId('sourceLocation'),
                icon: BitmapDescriptor.defaultMarker,
                position: wolftech,
              ),
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              height: 140,
              child: Card(
                child: Row(
                  children: [
                    Image.asset("assets/hospital.png"),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          "Hospital XY",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        SizedBox(height: 10),
                        Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(
                                child: SvgIcon(
                                  size: 16,
                                  color: Color(0xffDFB300),
                                  icon: SvgIconData('assets/icons/star.svg'),
                                ),
                              ),
                              WidgetSpan(child: SizedBox(width: 6)),
                              TextSpan(
                                text: "4.9 based on 100 ratings",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
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
          ),
        ],
      ),
    );
  }
}
