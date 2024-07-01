import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:voletdesign/src/widgets/maps/mapcard.dart';

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
            zoomControlsEnabled: false,
            myLocationButtonEnabled: false,
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
          const Align(
            alignment: Alignment.bottomCenter,
            child: MapCard(),
          ),
        ],
      ),
    );
  }
}
