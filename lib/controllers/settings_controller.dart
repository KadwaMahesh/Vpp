import 'package:get/get.dart';

class SettingsController extends GetxController {
  final settings = [
    {"title": "Edit profile", "subtitle": "Edit your name ", "icon": "person"},
    {
      "title": "Account settings",
      "subtitle": "Update your email or phone number",
      "icon": "settings",
    },
    {
      "title": "Contact us",
      "subtitle": "Get in touch with a query you have ",
      "icon": "help",
    },
    {"title": "About", "subtitle": "Learn more about us  ", "icon": "about"},
  ];
}
