import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/features/core/screens/home/home_page.dart';
import 'package:first_aid_app/src/features/core/screens/profile/profile.dart';
import 'package:first_aid_app/src/features/core/screens/saved/saved.dart';
import 'package:first_aid_app/src/features/core/screens/topics/all_topic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBarTheme(
          data: NavigationBarThemeData(
            labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((
              Set<WidgetState> states,
            ) {
              if (states.contains(WidgetState.selected)) {
                return const TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                );
              }
              return const TextStyle(color: Colors.grey, fontSize: 12);
            }),
          ),
          child: NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: [
              NavigationDestination(
                icon: Icon(Iconsax.home, color: tPrimaryColor),
                label: s.home,
              ),
              NavigationDestination(
                icon: Icon(Iconsax.task_copy, color: tPrimaryColor),
                label: s.topics,
              ),
              NavigationDestination(
                icon: Icon(Iconsax.book_saved, color: tPrimaryColor),
                label: s.saved,
              ),
              NavigationDestination(
                icon: Icon(Iconsax.profile_circle, color: tPrimaryColor),
                label: s.profile,
              ),
            ],
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    AllTopicsScreen(),
    const SavedScreen(),
    const ProfileScreen(),
  ];
}
