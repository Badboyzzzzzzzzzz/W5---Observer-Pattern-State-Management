import 'package:observe_statemanagement/EXERCISE-1/model/ride_pref/ride_pref.dart';

abstract class RidePreferencesListener {
  void onPredferenceSelected(RidePreference? selectedPreference);
}

class RidePreferenceService {
  final List<RidePreferencesListener> _listener = [];
  RidePreference? _ridePreference;
  void addListener(RidePreferencesListener listener) {
    _listener.add(listener);
  }

  void setRidePreferenceSelected(RidePreference? selectedPreferences) {
    _ridePreference = selectedPreferences;
    notifyListener();
  }

  void notifyListener() {
    for (var listener in _listener) {
      listener.onPredferenceSelected(_ridePreference);
    }
  }
}

class ConsoleLogger implements RidePreferencesListener {
  @override
  void onPredferenceSelected(RidePreference? preferenece) {
    print('On preference changed:$preferenece');
  }
}
