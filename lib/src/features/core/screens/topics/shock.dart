import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Shock extends StatelessWidget {
  const Shock({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Shock',
      'image': tEpilepsyimg,
      'screen': const Shock(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shock'),
        actions: [
          Obx(
            () => IconButton(
              icon: Icon(
                topicController.isTopicSaved(currentTopic)
                    ? Icons.bookmark
                    : Icons.bookmark_border,
                color: topicController.isTopicSaved(currentTopic)
                    ? Colors.red
                    : null,
              ),
              onPressed: () {
                topicController.toggleTopicSave(currentTopic);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      topicController.isTopicSaved(currentTopic)
                          ? 'Added to saved topics'
                          : 'Removed from saved topics',
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(tEpilepsyimg, fit: BoxFit.cover),
            const SizedBox(height: 16),
            const Text(
              'Shock',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'Shock is a life-threatening condition that occurs when the body is not getting enough blood flow, leading to organ failure.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Signs of Shock:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildBullet('Pale, cold, clammy skin'),
            _buildBullet('Rapid, weak pulse'),
            _buildBullet('Shallow breathing'),
            _buildBullet('Confusion or loss of consciousness'),
            _buildBullet('Nausea or vomiting'),
            const SizedBox(height: 20),
            const Text(
              'First Aid for Shock:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildStep('1', 'Call emergency services immediately.'),
            _buildStep('2', 'Lay the person down on their back.'),
            _buildStep(
              '3',
              'Elevate the legs about 12 inches unless there is an injury that prevents this.',
            ),
            _buildStep('4', 'Keep the person warm and comfortable.'),
            _buildStep('5', 'Do not give the person anything to eat or drink.'),
            _buildStep(
              '6',
              'Monitor breathing and be prepared to perform CPR if necessary.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStep(String number, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: Colors.red,
            child: Text(
              number,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(description, style: const TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }

  Widget _buildBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 20)),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}
