import "package:flutter/material.dart";
import "package:health_care_system/pages/dashboard_page.dart";
import "package:health_care_system/pages/registration_page.dart";
import "package:health_care_system/pages/sign_in_page.dart";

class Routes {

  static MaterialPageRoute registrationPage =
      MaterialPageRoute(builder: (context) => const RegistrationPage());
  static MaterialPageRoute signInPage =
      MaterialPageRoute(builder: (context) => const SignInPage());
  static MaterialPageRoute dashboardPage =
      MaterialPageRoute(builder: (context) => const DashboardPage());
}
