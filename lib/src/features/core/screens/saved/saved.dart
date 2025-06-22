import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:first_aid_app/src/features/core/controllers/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final NavigationController navigationController = Get.find();
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: tPrimaryColor),
          onPressed: () => navigationController.selectedIndex.value = 0,
        ),
        title: Image.asset(tLogo, height: height * 0.05),
        centerTitle: true,
        elevation: 0,
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: tPrimaryColor),
            onSelected: (value) async {
              if (value == 'clear_all') {
                final confirmed = await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(S.of(context).tconfirm),
                    content: Text(S.of(context).tclearAllTopics),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, false),
                        child: Text(S.of(context).tcancel),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, true),
                        child: Text(
                          S.of(context).tclear,
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                );
                if (confirmed == true) {
                  await topicController.clearAllTopics();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(S.of(context).tallTopicsCleared)),
                  );
                }
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(value: 'clear_all', child: Text(S.of(context).tclearAll)),
            ],
          ),
        ],
      ),
      body: Obx(() {
        if (topicController.savedTopics.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(tNoSavedTopicsImg, height: 150),
                const SizedBox(height: 20),
                Text(
                  S.of(context).tnoSavedTopicYet,
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    navigationController.selectedIndex.value = 1;
                  },
                  child: Text(
                    S.of(context).tbrowseTopics,
                    style: TextStyle(color: tPrimaryColor, fontSize: 16),
                  ),
                ),
              ],
            ),
          );
        }

        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                '${topicController.savedTopics.length} ${S.of(context).tsavedTopics}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: topicController.savedTopics.length,
                itemBuilder: (context, index) {
                  final topic = topicController.savedTopics[index];
                  return Dismissible(
                    key: Key(topic['title']),
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 20),
                      child: const Icon(Icons.delete, color: Colors.white),
                    ),
                    confirmDismiss: (direction) async {
                      return await showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(S.of(context).tconfirm),
                          content: Text(S.of(context).tremoveThisTopic),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, false),
                              child: Text(S.of(context).tcancel),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, true),
                              child: Text(
                                S.of(context).tremove,
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    onDismissed: (direction) async {
                      await topicController.removeTopic(topic);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${topic['title']} removed'),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () async {
                              await topicController.addTopic(topic);
                            },
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 2,
                      margin: const EdgeInsets.only(bottom: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: Image(
                            image: AssetImage(
                              topic['image'] ?? tDefaultTopicImg,
                            ),
                            width: 30,
                          ),
                        ),
                        title: Text(
                          topic['title'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.bookmark, color: Colors.red),
                          onPressed: () async {
                            await topicController.removeTopic(topic);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('${topic['title']} removed'),
                                action: SnackBarAction(
                                  label: 'Undo',
                                  onPressed: () async {
                                    await topicController.addTopic(topic);
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                        onTap: () {
                          Get.to(
                            () => topicController.getScreenForTopic(topic),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}