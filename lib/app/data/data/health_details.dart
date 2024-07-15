import 'package:admin_dashborad/app/data/models/health_model.dart';

class HealthDetails {
  final healthData = [
    HealthModel(
      title: 'Calories Burned',
      value: '305',
      icon: "assets/icons/burn.png",
    ),
    HealthModel(
      title: 'Steps',
      value: '10,983',
      icon: "assets/icons/steps.png",
    ),
    HealthModel(
      title: 'Distance',
      value: '7km',
      icon: "assets/icons/distance.png",
    ),
    HealthModel(
      title: 'Sleep',
      value: '5h30m',
      icon: "assets/icons/sleep.png",
    ),
  ];
}
