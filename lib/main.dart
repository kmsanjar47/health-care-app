import 'package:flutter/material.dart';
import 'package:health_care_system/constants/constants.dart';
import 'package:health_care_system/pages/dashboard_page.dart';


void main() {
  runApp(const HealthApp());
}

class HealthApp extends StatelessWidget {
  const HealthApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Constants.primaryColor,
      debugShowCheckedModeBanner: false,
      home: DashboardPage()
    );
  }
}
