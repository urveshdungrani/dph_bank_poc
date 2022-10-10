import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  String coachSelect = '';
  String timeSelect = '';
  // register
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  // Students
  TextEditingController studentNameController = TextEditingController();
  TextEditingController schoolController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneOneController = TextEditingController();
  TextEditingController phoneTwoController = TextEditingController();

  //events
  TextEditingController eventNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  // select dashboards field
  TextEditingController selectStudentController = TextEditingController();
  TextEditingController eventPlayedController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController timeDifferenceController = TextEditingController();
  TextEditingController previousEvent = TextEditingController();

  void setCoachSelect(String value) {
    coachSelect = value;
    // notifyListeners();
  }

  void setTimeSelect(String value) {
    timeSelect = value;
  }
}
