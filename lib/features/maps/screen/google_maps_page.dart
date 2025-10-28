// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:app_maps/features/maps/models/place_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsPage extends StatefulWidget {
  const GoogleMapsPage({super.key});

  @override
  State<GoogleMapsPage> createState() => _GoogleMapsPageState();
}

class _GoogleMapsPageState extends State<GoogleMapsPage> {
  late GoogleMapController googleMapController;

  final CameraPosition _initialCameraPosition = const CameraPosition(
    target: LatLng(51.5072, -0.1276), // London
    zoom: 14,
  );

  Set<Marker> markers = {};
  BitmapDescriptor? customIcon;

  @override
  void initState() {
    super.initState();
    _loadCustomMarker();
  }

  @override
  void dispose() {
    googleMapController.dispose();
    super.dispose();
  }

  /// ✅ Load custom marker icon and set all markers
  Future<void> _loadCustomMarker() async {
    final icon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(48, 48)),
      'assets/icons/marker.png',
    );

    setState(() {
      customIcon = icon;
      _setMarkers();
    });
  }

  /// ✅ Create markers based on your places model
  void _setMarkers() {
    final newMarkers = places.map((place) {
      return Marker(
        icon: customIcon ?? BitmapDescriptor.defaultMarker,
        markerId: MarkerId(place.id.toString()),
        position: place.latlang,
        infoWindow: InfoWindow(title: place.name),
      );
    }).toSet();

    setState(() {
      markers = newMarkers;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _initialCameraPosition,
            onMapCreated: (ctrl) => googleMapController = ctrl,
            markers: markers,
            myLocationButtonEnabled: true,
            zoomControlsEnabled: true,
          ),
          Positioned(
            bottom: 16,
            right: 80,
            left: 80,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  googleMapController.animateCamera(
                    CameraUpdate.newCameraPosition(
                      const CameraPosition(
                        target: LatLng(51.5054, -0.0235), // Canary Wharf
                        zoom: 12,
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Update Camera Position',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
