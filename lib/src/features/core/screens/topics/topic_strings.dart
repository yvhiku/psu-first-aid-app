import 'package:flutter/widgets.dart';
import 'topic_catalog.dart';

class TopicStrings {
  TopicStrings(BuildContext context)
    : language = Localizations.localeOf(context).languageCode;
  final String language;
  String text(String key) => _labels[language]?[key] ?? _labels['en']![key]!;
  String category(TopicCategory category) => text(category.name);
  String count(int value) => switch (language) {
    'ar' => '$value دليلًا',
    'ru' => 'Руководств: $value',
    _ => '$value ${value == 1 ? 'guide' : 'guides'}',
  };
  String questions(int value) => switch (language) {
    'ar' => '$value أسئلة',
    'ru' => 'Вопросов: $value',
    _ => '$value ${value == 1 ? 'question' : 'questions'}',
  };
  String progress(int completed, int total) => switch (language) {
    'ar' => 'أكملت $completed من $total اختبارًا',
    'ru' => 'Пройдено тестов: $completed из $total',
    _ => '$completed of $total quizzes completed',
  };
  static const _labels = {
    'en': {
      'tagline': 'First aid, one topic at a time.',
      'search': 'Search first aid topics',
      'clearSearch': 'Clear search',
      'all': 'All topics',
      'emergencies': 'Emergency topics',
      'injuries': 'Injuries',
      'medical': 'Medical conditions',
      'environmental': 'Bites & poisons',
      'basics': 'The basics',
      'continue': 'Continue learning',
      'start': 'Start with the basics',
      'open': 'Open guide',
      'lastScore': 'Last quiz',
      'guide': 'Step-by-step guide',
      'browse': 'Browse the guides',
      'available': 'All guides are available to explore.',
      'noResults': 'No topics found',
      'tryAgain': 'Try a different search or category.',
      'reset': 'Show all topics',
      'offline': 'Guides included in the app',
      'offlineBody':
          'Read the first aid guides without downloading extra content.',
      'emergenciesBody': 'Quick access to essential emergency guides.',
      'injuriesBody': 'Browse guides for wounds, burns and other injuries.',
      'medicalBody': 'Explore first aid for common medical conditions.',
      'environmentalBody': 'Find guides for bites, poisoning and overdose.',
      'basicsBody': 'Build your first aid knowledge from the beginning.',
    },
    'ar': {
      'tagline': 'تعلّم الإسعافات الأولية، موضوعًا تلو الآخر.',
      'search': 'ابحث في مواضيع الإسعافات الأولية',
      'clearSearch': 'مسح البحث',
      'all': 'كل المواضيع',
      'emergencies': 'مواضيع الطوارئ',
      'injuries': 'الإصابات',
      'medical': 'الحالات الطبية',
      'environmental': 'العضات والتسمم',
      'basics': 'الأساسيات',
      'continue': 'واصل التعلم',
      'start': 'ابدأ بالأساسيات',
      'open': 'فتح الدليل',
      'lastScore': 'آخر اختبار',
      'guide': 'دليل خطوة بخطوة',
      'browse': 'تصفح الأدلة',
      'available': 'كل الأدلة متاحة للاستكشاف.',
      'noResults': 'لم يتم العثور على مواضيع',
      'tryAgain': 'جرّب بحثًا أو فئة مختلفة.',
      'reset': 'عرض كل المواضيع',
      'offline': 'الأدلة مضمنة في التطبيق',
      'offlineBody': 'اقرأ أدلة الإسعافات الأولية دون تنزيل محتوى إضافي.',
      'emergenciesBody': 'وصول سريع إلى أدلة الطوارئ الأساسية.',
      'injuriesBody': 'تصفح أدلة الجروح والحروق والإصابات الأخرى.',
      'medicalBody': 'استكشف الإسعافات الأولية للحالات الطبية الشائعة.',
      'environmentalBody': 'ابحث عن أدلة العضات والتسمم والجرعات الزائدة.',
      'basicsBody': 'ابنِ معرفتك بالإسعافات الأولية من البداية.',
    },
    'ru': {
      'tagline': 'Первая помощь — тема за темой.',
      'search': 'Поиск тем первой помощи',
      'clearSearch': 'Очистить поиск',
      'all': 'Все темы',
      'emergencies': 'Экстренная помощь',
      'injuries': 'Травмы',
      'medical': 'Заболевания',
      'environmental': 'Укусы и отравления',
      'basics': 'Основы',
      'continue': 'Продолжить обучение',
      'start': 'Начните с основ',
      'open': 'Открыть руководство',
      'lastScore': 'Последний тест',
      'guide': 'Пошаговое руководство',
      'browse': 'Изучайте руководства',
      'available': 'Все руководства доступны для изучения.',
      'noResults': 'Темы не найдены',
      'tryAgain': 'Измените запрос или выберите другую категорию.',
      'reset': 'Показать все темы',
      'offline': 'Руководства включены в приложение',
      'offlineBody':
          'Читайте руководства без загрузки дополнительных материалов.',
      'emergenciesBody': 'Быстрый доступ к основным экстренным руководствам.',
      'injuriesBody': 'Руководства по ранам, ожогам и другим травмам.',
      'medicalBody': 'Первая помощь при распространённых заболеваниях.',
      'environmentalBody':
          'Руководства по укусам, отравлениям и передозировке.',
      'basicsBody': 'Начните изучение первой помощи с основ.',
    },
  };
}
