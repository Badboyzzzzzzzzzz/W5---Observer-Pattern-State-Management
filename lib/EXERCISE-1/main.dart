import 'package:observe_statemanagement/EXERCISE-1/model/ride/locations.dart';
import 'package:observe_statemanagement/EXERCISE-1/model/ride_pref/ride_pref.dart';
import 'package:observe_statemanagement/EXERCISE-1/provider/ride_pref_provider.dart';

void main() {
  RidePreferenceService rideService = RidePreferenceService();
  ConsoleLogger consoleLog = ConsoleLogger();

  rideService.addListener(consoleLog);
  rideService.setRidePreferenceSelected(
    RidePreference(
      departure: Location(name: 'battambang', country: Country.cambodia),
      departureDate: DateTime(2025),
      arrival: Location(name: 'Takeo', country: Country.cambodia),
      requestedSeats: 1,
    ),
  );
}
