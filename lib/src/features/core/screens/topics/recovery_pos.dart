import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/features/core/controllers/topic_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecoveryPos extends StatelessWidget {
  const RecoveryPos({super.key});

  @override
  Widget build(BuildContext context) {
    final TopicController topicController = Get.find();
    final currentTopic = {
      'title': 'Recovery Position',
      'image': tRecoveryPosimg,
      'screen': const RecoveryPos(),
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recovery Position'),
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
            Image.asset(
              tRecoveryPosimg, fit: BoxFit.cover
            ),
            const SizedBox(height: 16),
            const Text(
              'Recovery Position',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'The recovery position helps keep the airway clear and open. It also ensures that any fluids can drain from the mouth and prevents choking.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Steps to place someone in the recovery position:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildStep('1', 'Kneel beside the person.'),
            _buildStep('2', 'Place the arm nearest to you at a right angle to their body, with the elbow bent and the palm facing upwards.'),
            _buildStep('3', 'Bring their far arm across the chest and hold the back of their hand against their cheek closest to you.'),
            _buildStep('4', 'Bend the far knee up to a right angle.'),
            _buildStep('5', 'Carefully roll the person onto their side by pulling on the bent knee.'),
            _buildStep('6', 'Adjust the top leg so that both the hip and knee are bent at right angles.'),
            _buildStep('7', 'Tilt the head back slightly to keep the airway open.'),
            _buildStep('8', 'Make sure their mouth is open to allow any fluids to drain.'),
            const SizedBox(height: 20),
            const Text(
              'Important:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildBullet('Call emergency services if the person is unconscious.'),
            _buildBullet('Stay with the person until help arrives.'),
            _buildBullet('Check breathing regularly.'),
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
            child: Text(number, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(description, style: const TextStyle(fontSize: 16))),
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
