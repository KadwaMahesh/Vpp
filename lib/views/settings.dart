// import 'package:flutter/material.dart';
// import 'package:vpp/widgets/app_color.dart';
// import 'package:vpp/widgets/app_text_style.dart';

// class SettingsPage extends StatelessWidget {
//   const SettingsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.pagebackground,
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: AppColor.pagebackground,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: AppColor.buttonColor),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: Text('Settings', style: AppTextStyle.textHeading),
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           child: Column(
//             children: [
//               ListView.builder(
//                 itemBuilder: (BuildContext context, int index) {
//                   return ListTile(
//                     title: Text('Setting ${index + 1}'),
//                     trailing: Icon(Icons.arrow_forward),
//                     onTap: () {
//                       // Handle setting item tap
//                     },
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';

import '../controllers/settings_controller.dart';
import '../widgets/settings_tile.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({super.key});

  IconData _getIcon(String name) {
    switch (name) {
      case "person":
        return Icons.person_outline;

      case "settings":
        return Icons.settings_outlined;

      case "help":
        return Icons.help_outline;

      case "about":
        return Icons.menu_book_outlined;

      default:
        return Icons.circle;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: const Text("Settings", style: AppTextStyle.profileHeading),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemCount: controller.settings.length,
          itemBuilder: (context, index) {
            final item = controller.settings[index];

            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: SettingsTile(
                icon: _getIcon(item["icon"]!),
                title: item["title"]!,
                subtitle: item["subtitle"]!,
                onTap: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
