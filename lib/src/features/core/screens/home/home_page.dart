import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../controllers/widgets/navbar.dart';
import '../../models/auto_quiz_data.dart';
import '../../services/hospital_service.dart';
import '../profile/profile.dart';
import '../quizes/quiz.dart';
import '../quizes/quiz_widgets.dart';
import '../topics/all_topic.dart';
import '../topics/topic_catalog.dart';
import 'home_theme.dart';
import 'hospital_actions.dart';
import 'hospital_finder_screen.dart';
import 'hospital_map.dart';
import 'hospital_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({this.hospitalSearch, super.key});
  final HospitalSearchController? hospitalSearch;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HospitalSearchController _hospitals =
      widget.hospitalSearch ?? HospitalSearchController();
  int _completed = 0;
  String? _lastTopic;
  String? _locale;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final locale = Localizations.localeOf(context).toLanguageTag();
    if (_locale != locale) {
      _locale = locale;
      _loadProgress();
    }
  }

  Future<void> _loadProgress() async {
    final catalog = buildTopicCatalog(S.of(context));
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.reload();
      if (!mounted) return;
      final completed = catalog.where((topic) {
        final score = prefs.get(topic.scoreKey);
        return score is int && score >= 0 && score <= topic.questionCount;
      }).length;
      final last = prefs.get('topics_last_viewed_id');
      setState(() {
        _completed = completed;
        _lastTopic = last is String ? last : null;
      });
    } catch (_) {
      /* Learning and emergency actions remain available. */
    }
  }

  @override
  void dispose() {
    if (widget.hospitalSearch == null) _hospitals.dispose();
    super.dispose();
  }

  void _topics() {
    if (Get.isRegistered<NavigationController>()) {
      Get.find<NavigationController>().selectedIndex.value = 1;
    } else {
      Navigator.of(
        context,
      ).push(MaterialPageRoute<void>(builder: (_) => const AllTopicsScreen()));
    }
  }

  void _profile() {
    if (Get.isRegistered<NavigationController>()) {
      Get.find<NavigationController>().selectedIndex.value = 3;
    } else {
      Navigator.of(
        context,
      ).push(MaterialPageRoute<void>(builder: (_) => const ProfileScreen()));
    }
  }

  Future<void> _openGuide(TopicEntry topic) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('topics_last_viewed_id', topic.id);
    } catch (_) {
      /* Saving a recent topic is optional. */
    }
    if (!mounted) return;
    await Navigator.of(
      context,
    ).push(MaterialPageRoute<void>(builder: topic.builder));
    if (mounted) await _loadProgress();
  }

  void _openMap() => Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (_) => HospitalFinderScreen(search: _hospitals),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final catalog = buildTopicCatalog(s);
    final quick = [
      'cpr',
      'bleeding',
      'choking',
      'burns',
      'poisons',
    ].map((id) => catalog.firstWhere((topic) => topic.id == id)).toList();
    final practice = catalog.firstWhere(
      (topic) => topic.id == _lastTopic,
      orElse: () => catalog.first,
    );
    return Theme(
      data: homeTheme(context),
      child: Builder(
        builder: (context) => Scaffold(
          body: SafeArea(
            bottom: false,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 1020),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 18, 12, 16),
                        child: Row(
                          children: [
                            Container(
                              width: 44,
                              height: 44,
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Image.asset(
                                tHelpingPersonimg,
                                excludeFromSemantics: true,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    s.home,
                                    style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    s.homeTagline,
                                    style: const TextStyle(
                                      fontSize: 11,
                                      color: QuizColors.muted,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: _profile,
                              tooltip: s.profile,
                              icon: const Icon(
                                Icons.account_circle_outlined,
                                color: QuizColors.muted,
                                size: 27,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
                  sliver: SliverList.list(
                    children: [
                      Center(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 980),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              _emergency(context, s),
                              const SizedBox(height: 18),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.offline_pin_outlined,
                                    color: QuizColors.green,
                                    size: 19,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      s.homeOfflineBody,
                                      style: const TextStyle(
                                        fontSize: 11,
                                        color: QuizColors.muted,
                                        height: 1.5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 24),
                              Text(
                                s.homeQuickTitle,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                s.homeQuickBody,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: QuizColors.muted,
                                ),
                              ),
                              const SizedBox(height: 15),
                              _quickGrid(s, quick, catalog.length),
                              const SizedBox(height: 24),
                              AnimatedBuilder(
                                animation: _hospitals,
                                builder: (context, _) =>
                                    _hospitalPreview(context, s),
                              ),
                              const SizedBox(height: 24),
                              _practice(context, s, practice, catalog.length),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _emergency(BuildContext context, S s) => Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [QuizColors.primary, Color(0xFF8F0C14)],
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                s.homeEmergencyTitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  height: 1.4,
                ),
              ),
            ),
            const SizedBox(width: 12),
            const Icon(
              Icons.emergency_outlined,
              color: Colors.white70,
              size: 27,
            ),
          ],
        ),
        const SizedBox(height: 7),
        Text(
          s.homeEmergencyBody,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
            height: 1.6,
          ),
        ),
        const SizedBox(height: 18),
        SizedBox(
          width: double.infinity,
          child: FilledButton.icon(
            key: const ValueKey('home-emergency-call'),
            style: FilledButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: QuizColors.primary,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            onPressed: () =>
                openHospitalAction(context, Uri(scheme: 'tel', path: '112')),
            icon: const Icon(Icons.phone_in_talk_outlined, size: 24),
            label: Text(
              s.homeDial112,
              style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w800),
            ),
          ),
        ),
        const SizedBox(height: 9),
        Center(
          child: Text(
            s.homeDialHint,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.white70,
              height: 1.5,
            ),
          ),
        ),
      ],
    ),
  );

  Widget _quickGrid(S s, List<TopicEntry> topics, int count) => LayoutBuilder(
    builder: (context, constraints) {
      final columns = constraints.maxWidth >= 680 ? 3 : 2;
      final cards = <Widget>[
        for (final topic in topics)
          _quickCard(
            topic.title,
            topic.image,
            () => _openGuide(topic),
            'home-topic-${topic.id}',
          ),
        _quickCard(
          s.homeAllGuides,
          tServiceToOhersimg,
          _topics,
          'home-all-topics',
          subtitle: s.homeTopicCount(count),
          accent: true,
        ),
      ];
      return Column(
        children: [
          for (var start = 0; start < cards.length; start += columns)
            Padding(
              padding: EdgeInsets.only(
                bottom: start + columns < cards.length ? 12 : 0,
              ),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (var col = 0; col < columns; col++) ...[
                      if (col > 0) const SizedBox(width: 12),
                      Expanded(
                        child: start + col < cards.length
                            ? cards[start + col]
                            : const SizedBox(),
                      ),
                    ],
                  ],
                ),
              ),
            ),
        ],
      );
    },
  );

  Widget _quickCard(
    String title,
    String image,
    VoidCallback onTap,
    String key, {
    String? subtitle,
    bool accent = false,
  }) => QuizCard(
    padding: EdgeInsets.zero,
    child: InkWell(
      key: ValueKey(key),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        color: accent ? QuizColors.primaryLight.withValues(alpha: .35) : null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 40,
              height: 40,
              excludeFromSemantics: true,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
                height: 1.45,
              ),
            ),
            if (subtitle != null) ...[
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 11,
                  color: QuizColors.muted,
                  height: 1.5,
                ),
              ),
            ],
          ],
        ),
      ),
    ),
  );

  Widget _hospitalPreview(BuildContext context, S s) => QuizCard(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/icons/hospital_pin.png',
              width: 36,
              height: 36,
              excludeFromSemantics: true,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                s.homeNearbyTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 7),
        Text(
          s.homeNearbyBody,
          style: const TextStyle(
            fontSize: 12,
            color: QuizColors.muted,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 14),
        if (_hospitals.center != null) ...[
          ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: SizedBox(
              height: 190,
              child: HospitalMap(
                search: _hospitals,
                interactive: false,
                onHospitalTap: (hospital) =>
                    showHospitalDetails(context, _hospitals, hospital),
              ),
            ),
          ),
          const SizedBox(height: 12),
          if (_hospitals.status == HospitalStatus.ready)
            Text(
              s.hospitalCount(_hospitals.hospitals.length),
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
            ),
        ] else
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: QuizColors.surface,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Column(
              children: [
                const Icon(
                  Icons.map_outlined,
                  color: QuizColors.muted,
                  size: 34,
                ),
                const SizedBox(height: 10),
                Text(
                s.homeHospitalPrompt,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    height: 1.6,
                    color: QuizColors.muted,
                  ),
                ),
              ],
            ),
          ),
        HospitalStatusPanel(search: _hospitals),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            FilledButton.icon(
              key: const ValueKey('home-use-location'),
              onPressed: _hospitals.busy ? null : _hospitals.useMyLocation,
              icon: const Icon(Icons.my_location_rounded, size: 18),
              label: Text(s.homeUseLocation),
            ),
            OutlinedButton.icon(
              key: const ValueKey('home-open-map'),
              onPressed: _openMap,
              icon: const Icon(Icons.open_in_full_rounded, size: 17),
              label: Text(s.homeOpenMap),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          s.homeLocationPrivacy,
          style: const TextStyle(
            fontSize: 10,
            height: 1.6,
            color: QuizColors.muted,
          ),
        ),
      ],
    ),
  );

  Widget _practice(
    BuildContext context,
    S s,
    TopicEntry topic,
    int total,
  ) => QuizCard(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              tInfoimg,
              width: 30,
              height: 30,
              excludeFromSemantics: true,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                s.homePracticeTitle,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 9),
        Text(
          s.homePracticeBody,
          style: const TextStyle(
            fontSize: 12,
            height: 1.6,
            color: QuizColors.muted,
          ),
        ),
        const SizedBox(height: 16),
        LinearProgressIndicator(
          value: _completed / total,
          minHeight: 5,
          borderRadius: BorderRadius.circular(5),
          color: QuizColors.primary,
          backgroundColor: QuizColors.border,
        ),
        const SizedBox(height: 8),
        Text(
          s.homeQuizProgress(_completed, total),
          style: const TextStyle(
            fontSize: 11,
            color: QuizColors.muted,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          topic.title,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 8),
        FilledButton.icon(
          key: const ValueKey('home-start-quiz'),
          onPressed: () async {
            final questions = generateLocalizedQuizData(s).values.firstWhere(
              (questions) => questions.first.topicId == topic.id,
            );
            await Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (_) =>
                    QuizScreen(topicTitle: topic.title, questions: questions),
              ),
            );
            if (mounted) await _loadProgress();
          },
          icon: const Icon(Icons.play_arrow_rounded, size: 20),
          label: Text(s.homePracticeStart),
        ),
      ],
    ),
  );
}
