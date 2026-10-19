import 'package:first_aid_app/src/constants/image_strings.dart';
import '../topics/topic_catalog.dart';

class SavedTopicItem {
  SavedTopicItem(this.raw, List<TopicEntry> catalog) {
    final type = normalize(raw['type']?.toString() ?? '');
    final title = normalize(raw['title']?.toString() ?? '');
    const aliases = {
      'bleed': 'bleeding',
      'burn': 'burns',
      'poison': 'poisons',
      'bite': 'bites',
      'diabetic': 'diabetics',
      'seizure': 'seizures',
      'assessinginjuredperson': 'assessing',
      'recoveryposition': 'recoverypos',
      'allergicreaction': 'allergicreactions',
      'sprain': 'sprainsstrains',
      'strain': 'sprainsstrains',
      'sprainstrains': 'sprainsstrains',
    };
    final id = aliases[type] ?? type;
    for (final topic in catalog) {
      if (normalize(topic.id) == id ||
          normalize(topic.id) == (aliases[title] ?? title) ||
          normalize(topic.title) == title) {
        entry = topic;
        break;
      }
    }
  }
  final Map<String, dynamic> raw;
  TopicEntry? entry;
  String get key => '${raw['type'] ?? ''}:${raw['title'] ?? ''}';
  String? get title =>
      entry?.title ?? (raw['title'] is String ? raw['title'] as String : null);
  String get image =>
      entry?.image ??
      (raw['image'] is String ? raw['image'] as String : tDefaultTopicImg);
  TopicCategory? get category => entry?.category;

  static String normalize(String value) => value
      .toLowerCase()
      .replaceAll(RegExp(r'[\s_&-]'), '')
      .replaceAll('ё', 'е')
      .replaceAll(RegExp(r'[\u064B-\u065F\u0670]'), '')
      .replaceAll(RegExp('[أإآ]'), 'ا')
      .replaceAll('ى', 'ي');
}
