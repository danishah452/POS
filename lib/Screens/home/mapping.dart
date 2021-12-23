import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

@Deprecated('')
class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({Key key}) : super(key: key);

  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = LatLng(41.521563, -102.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: const CameraPosition(
        target: _center,
        zoom: 11.0,
      ),
      compassEnabled: true,
      myLocationEnabled: true,
      mapType: MapType.normal,
      zoomControlsEnabled: false,
    );
  }
}
