import 'package:flutter/material.dart';

/// Canonical interaction vocabulary used when book pages are mapped.
/// The actual questions/options are filled only after the original book
/// page is inspected; this prevents invented textbook content.
enum LessonInteractionType {
  multipleChoice,
  trueFalse,
  tapHotspot,
  order,
  classify,
  match,
  fillBlank,
  numeric,
  readAndAnswer,
  labelDiagram,
  mapDocument,
  experimentObservation,
  recitation,
  vocabulary,
  conjugation,
  grammar,
  spelling,
  writing,
}

class PageRect {
  final double left;
  final double top;
  final double width;
  final double height;

  const PageRect({
    required this.left,
    required this.top,
    required this.width,
    required this.height,
  });
}

class LessonHotspot {
  final String id;
  final PageRect rect;
  final LessonInteractionType type;
  final String title;
  final int? pdfPage;

  /// Kept nullable until the corresponding book page is available.
  final List<String>? options;
  final int? correctIndex;
  final String? explanation;

  const LessonHotspot({
    required this.id,
    required this.rect,
    required this.type,
    required this.title,
    this.pdfPage,
    this.options,
    this.correctIndex,
    this.explanation,
  });
}

class LessonPageMapping {
  final String subject;
  final int lessonNumber;
  final String lessonTitle;
  final int? pdfPage;
  final int? printedPage;
  final List<LessonHotspot> hotspots;
  final bool sourceVerified;
  final bool isSupport;
  final String? sourceLabel;

  const LessonPageMapping({
    required this.subject,
    required this.lessonNumber,
    required this.lessonTitle,
    this.pdfPage,
    this.printedPage,
    this.hotspots = const [],
    this.sourceVerified = false,
    this.isSupport = false,
    this.sourceLabel,
  });
}

/// Subject-specific interaction families. This is the interaction contract,
/// not invented lesson content. Content is populated from the uploaded books.
const subjectInteractionTypes = <String, List<LessonInteractionType>>{
  'اللغة العربية': [
    LessonInteractionType.readAndAnswer,
    LessonInteractionType.vocabulary,
    LessonInteractionType.grammar,
    LessonInteractionType.spelling,
    LessonInteractionType.writing,
  ],
  'اللغة الفرنسية': [
    LessonInteractionType.readAndAnswer,
    LessonInteractionType.vocabulary,
    LessonInteractionType.grammar,
    LessonInteractionType.conjugation,
    LessonInteractionType.spelling,
    LessonInteractionType.writing,
  ],
  'الرياضيات': [
    LessonInteractionType.numeric,
    LessonInteractionType.multipleChoice,
    LessonInteractionType.order,
    LessonInteractionType.classify,
    LessonInteractionType.tapHotspot,
  ],
  'النشاط العلمي': [
    LessonInteractionType.experimentObservation,
    LessonInteractionType.classify,
    LessonInteractionType.labelDiagram,
    LessonInteractionType.trueFalse,
    LessonInteractionType.readAndAnswer,
  ],
  'التربية الإسلامية': [
    LessonInteractionType.recitation,
    LessonInteractionType.readAndAnswer,
    LessonInteractionType.order,
    LessonInteractionType.multipleChoice,
    LessonInteractionType.trueFalse,
  ],
  'الاجتماعيات': [
    LessonInteractionType.mapDocument,
    LessonInteractionType.tapHotspot,
    LessonInteractionType.order,
    LessonInteractionType.classify,
    LessonInteractionType.readAndAnswer,
  ],
  'اللغة الأمازيغية': [
    LessonInteractionType.readAndAnswer,
    LessonInteractionType.vocabulary,
    LessonInteractionType.match,
    LessonInteractionType.fillBlank,
    LessonInteractionType.writing,
  ],
};

Color subjectAccent(String subject) {
  switch (subject) {
    case 'اللغة العربية':
      return const Color(0xFF8B5E3C);
    case 'اللغة الفرنسية':
      return const Color(0xFF2563EB);
    case 'الرياضيات':
      return const Color(0xFF0F766E);
    case 'النشاط العلمي':
      return const Color(0xFF15803D);
    case 'التربية الإسلامية':
      return const Color(0xFF7C3AED);
    case 'الاجتماعيات':
      return const Color(0xFFB45309);
    case 'اللغة الأمازيغية':
      return const Color(0xFFBE123C);
    default:
      return const Color(0xFF0F766E);
  }
}
