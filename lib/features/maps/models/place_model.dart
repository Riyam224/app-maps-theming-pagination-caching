import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlaceModel {
  final int id;
  final String name;
  final LatLng latlang;

  PlaceModel({required this.id, required this.name, required this.latlang});
}

List<PlaceModel> places = [
  PlaceModel(id: 1, name: 'Home', latlang: const LatLng(51.5072, -0.12762)),
  PlaceModel(id: 2, name: 'Work', latlang: const LatLng(51.5073, -0.12766)),
];
