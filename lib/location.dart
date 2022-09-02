import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    try {
      print("hello try");
      // Geolocator geolocator = Geolocator()..forceAndroidLocationManager = true;
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
        forceAndroidLocationManager: true,
      );
      latitude = position.latitude;
      longitude = position.longitude;
      print(latitude);
      print(longitude);
      print("hello");
    } catch (e) {
      print("hello_catch");
      print(e);
    }
  }
}
