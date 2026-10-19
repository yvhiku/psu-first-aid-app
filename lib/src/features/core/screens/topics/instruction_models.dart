enum GuideBlockKind { heading, paragraph, step, substep, bullet }

class GuideBlock {
  const GuideBlock.heading(this.body)
    : kind = GuideBlockKind.heading,
      title = null,
      number = null;
  const GuideBlock.paragraph(this.body)
    : kind = GuideBlockKind.paragraph,
      title = null,
      number = null;
  const GuideBlock.bullet(this.body)
    : kind = GuideBlockKind.bullet,
      title = null,
      number = null;
  const GuideBlock.step({required this.number, required this.body, this.title})
    : kind = GuideBlockKind.step;
  const GuideBlock.substep({required this.number, required this.body})
    : kind = GuideBlockKind.substep,
      title = null;
  final GuideBlockKind kind;
  final String body;
  final String? title;
  final String? number;
}

class InstructionGuide {
  const InstructionGuide({
    required this.id,
    required this.title,
    required this.image,
    required this.heading,
    required this.intro,
    required this.quizKey,
    required this.blocks,
  });
  final String id;
  final String title;
  final String image;
  final String heading;
  final String? intro;
  final String quizKey;
  final List<GuideBlock> blocks;
  int get stepCount =>
      blocks.where((block) => block.kind == GuideBlockKind.step).length;
}
