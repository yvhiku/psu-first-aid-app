import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:first_aid_app/src/features/core/controllers/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../topics/all_topic.dart';
import 'saved_topics_view.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TopicController>();
    return Obx(
      () => SavedTopicsView(
        topics: controller.savedTopics.toList(),
        loading: controller.isLoadingSavedTopics.value,
        onRemove: controller.removeTopic,
        onRestore: controller.addTopic,
        onClear: controller.clearAllTopics,
        onBrowse: () {
          if (Get.isRegistered<NavigationController>()) {
            Get.find<NavigationController>().selectedIndex.value = 1;
          } else {
            Navigator.of(context).push(
              MaterialPageRoute<void>(builder: (_) => const AllTopicsScreen()),
            );
          }
        },
        onOpen: (item) => Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder:
                item.entry?.builder ??
                (_) => controller.getScreenForTopic(item.raw),
          ),
        ),
      ),
    );
  }
}
