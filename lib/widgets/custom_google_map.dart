// // ignore_for_file: avoid_types_as_parameter_names

// import 'dart:typed_data';
// import 'dart:ui' as ui;
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:app_maps/models/place_model.dart';

// class CustomGoogleMap extends StatefulWidget {
//   const CustomGoogleMap({super.key});

//   @override
//   State<CustomGoogleMap> createState() => _CustomGoogleMapState();
// }

// class _CustomGoogleMapState extends State<CustomGoogleMap> {
//   late GoogleMapController googleMapController;
//   final Set<Marker> markers = {};

//   final CameraPosition initialCameraPosition = const CameraPosition(
//     target: LatLng(37.7749, -122.4194), // San Francisco
//     zoom: 15,
//   );

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       initMarkers(); // load markers after build
//     });
//   }

//   @override
//   void dispose() {
//     googleMapController.dispose();
//     super.dispose();
//   }

//   /// ✅ Load and apply map style
//   Future<void> setMapStyle() async {
//     final style = await rootBundle.loadString(
//       'assets/map_styles/night_map_style.json',
//     );
//     googleMapController.setMapStyle(style);
//   }

//   /// ✅ Resize image and return as bytes (controls marker size)
//   Future<Uint8List> getBytesFromRawData(String imagePath, double width) async {
//     final ByteData data = await rootBundle.load(imagePath);
//     final ui.Codec codec = await ui.instantiateImageCodec(
//       data.buffer.asUint8List(),
//       targetWidth: width.toInt(),
//     );
//     final ui.FrameInfo frameInfo = await codec.getNextFrame();
//     final ByteData? bytes = await frameInfo.image.toByteData(
//       format: ui.ImageByteFormat.png,
//     );
//     return bytes!.buffer.asUint8List();
//   }

//   /// ✅ Initialize custom markers using the data from your PlaceModel list
//   Future<void> initMarkers() async {
//     // Change this number to adjust marker icon size 👇
//     final Uint8List markerIcon = await getBytesFromRawData(
//       'assets/images/master_icon.png',
//       120, // Example: 80 = small, 120 = medium, 200 = large
//     );

//     final BitmapDescriptor customIcon = BitmapDescriptor.fromBytes(markerIcon);

//     final Set<Marker> myMarkers = places.map((place) {
//       return Marker(
//         icon: customIcon,
//         markerId: MarkerId('marker_${place.id}'),
//         position: place.location, // ✅ Fixed field name
//         infoWindow: InfoWindow(title: place.name),
//       );
//     }).toSet();

//     setState(() {
//       markers.addAll(myMarkers);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         GoogleMap(
//           markers: markers,
//           initialCameraPosition: initialCameraPosition,
//           onMapCreated: (controller) async {
//             googleMapController = controller;
//             await setMapStyle();
//           },
//         ),
//         Positioned(
//           bottom: 20,
//           left: 0,
//           right: 0,
//           child: Center(
//             child: ElevatedButton(
//               onPressed: () {
//                 googleMapController.animateCamera(
//                   CameraUpdate.newCameraPosition(
//                     const CameraPosition(
//                       target: LatLng(37.7849, -122.4050),
//                       zoom: 15,
//                     ),
//                   ),
//                 );
//               },
//               child: const Text('Update Camera Position'),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
