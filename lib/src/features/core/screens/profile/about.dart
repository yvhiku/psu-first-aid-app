import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:flutter/material.dart';
import '../quizes/quiz_widgets.dart';
import '../topics/topic_catalog.dart';
import 'profile_widgets.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final catalog = buildTopicCatalog(s);
    final number = MaterialLocalizations.of(context).formatDecimal;
    return ProfilePage(
      title: s.tAboutUs,
      children: [
        ProfileCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                tLogo,
                width: 64,
                height: 64,
                excludeFromSemantics: true,
              ),
              const SizedBox(height: 16),
              Text(
                s.appDisplayName,
                style: const TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                s.psuUniversity,
                style: const TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color: QuizColors.muted,
                ),
              ),
              const SizedBox(height: 14),
              Text(
                s.aboutTagline,
                style: const TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  color: QuizColors.primary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                s.taboutHeader,
                style: const TextStyle(
                  fontSize: 14,
                  height: 1.75,
                  color: QuizColors.muted,
                ),
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _CountLabel(s.aboutGuidesCount(number(catalog.length))),
                  _CountLabel(
                    s.aboutQuizCount(
                      number(
                        catalog.fold<int>(
                          0,
                          (count, topic) => count + topic.questionCount,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        InformationSection(
          icon: Icons.menu_book_outlined,
          title: s.aboutLearnTitle,
          body: s.aboutLearnBody,
        ),
        InformationSection(
          icon: Icons.quiz_outlined,
          title: s.aboutPracticeTitle,
          body: s.aboutPracticeBody,
        ),
        InformationSection(
          icon: Icons.bookmark_border_rounded,
          title: s.aboutSaveTitle,
          body: s.aboutSaveBody,
        ),
        InformationSection(
          icon: Icons.local_hospital_outlined,
          title: s.aboutMapTitle,
          body: s.aboutMapBody,
        ),
        InformationSection(
          icon: Icons.offline_pin_outlined,
          title: s.aboutOfflineTitle,
          body: s.aboutOfflineBody,
        ),
        InformationSection(
          icon: Icons.school_outlined,
          title: s.aboutProjectTitle,
          body: s.taboutParagraph2,
        ),
        InformationSection(
          icon: Icons.warning_amber_rounded,
          title: s.aboutSafetyTitle,
          body: s.taboutParagraph3,
          warning: true,
        ),
        const InformationContactCard(),
      ],
    );
  }
}

class _CountLabel extends StatelessWidget {
  const _CountLabel(this.text);
  final String text;
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    decoration: BoxDecoration(
      color: QuizColors.surface,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 12,
        color: QuizColors.muted,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
