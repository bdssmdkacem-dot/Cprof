import 'interactive_lesson_model.dart';
import 'lesson_catalog.dart';

/// Canonical map for the 35 grade-4 mathematics lessons.
///
/// A lesson is not source-verified until its original textbook page has been
/// inspected. Hotspots and questions therefore stay empty until verification.
const mathLessonMap = <LessonPageMapping>[
  for (final lesson in _mathEntries)
    lesson.number == 13
        ? const LessonPageMapping(
            subject: 'الرياضيات',
            lessonNumber: 13,
            lessonTitle: 'قراءة بيانات بالأعمدة (1)',
            pdfPage: 6,
            printedPage: 38,
            sourceVerified: true,
            hotspots: _lesson13Hotspots,
          )
        : LessonPageMapping(
            subject: 'الرياضيات',
            lessonNumber: lesson.number,
            lessonTitle: lesson.title,
            pdfPage: _pdfPages[lesson.number],
            printedPage: _printedPages[lesson.number],
            sourceVerified: false,
          ),
];

const _mathEntries = <LessonCatalogEntry>[
  for (var i = 0; i < mathLessonTitles.length; i++)
    LessonCatalogEntry(i + 1, mathLessonTitles[i]),
];

/// Repository-PDF navigation metadata only. It is not official-source
/// verification and must not be used to invent lesson interactions.
const _pdfPages = <int, int>{
  13: 6, 14: 8, 15: 10, 16: 12,
  17: 16, 18: 17, 19: 19, 20: 21,
  21: 31, 22: 33, 23: 35, 24: 37,
  25: 41, 26: 43, 27: 45, 28: 47,
  29: 51, 30: 53, 31: 55, 32: 57,
  33: 61, 34: 63, 35: 65,
};

const _printedPages = <int, int>{
  13: 38, 14: 40, 15: 42, 16: 44,
  17: 48, 18: 50, 19: 52, 20: 54,
  21: 64, 22: 66, 23: 68, 24: 70,
  25: 74, 26: 76, 27: 78, 28: 80,
  29: 84, 30: 86, 31: 88, 32: 90,
  33: 94, 34: 96, 35: 98,
};

LessonPageMapping mathLessonMapping(int lessonNumber) =>
    mathLessonMap[lessonNumber - 1];


/// Verified directly against printed page 38 of the uploaded official PDF.
///
/// The questions/options below are taken from the visible exercise on that
/// page; no values are inferred from the lesson title or catalog.
const _lesson13Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l13-h1',
    rect: PageRect(left: 0.20, top: 0.35, width: 0.58, height: 0.38),
    type: LessonInteractionType.tapHotspot,
    title: 'ماذا تمثل الأعمدة الملونة؟',
    options: [
      'عدد التلاميذ حسب هواياتهم المفضلة',
      'أسماء التلاميذ',
      'أعمار التلاميذ',
      'عدد أيام الأسبوع',
    ],
    correctIndex: 0,
    explanation: 'البيان يمثل توزيع عدد التلاميذ حسب هواياتهم المفضلة.',
  ),
  LessonHotspot(
    id: 'l13-h2',
    rect: PageRect(left: 0.20, top: 0.35, width: 0.58, height: 0.38),
    type: LessonInteractionType.numeric,
    title: 'ما الهواية التي يفضلها أكبر عدد من التلاميذ؟',
    options: [
      'القراءة',
      'الرسم',
      'الطبخ',
      'تربية القطط',
    ],
    correctIndex: 1,
    explanation: 'أعلى عمود في البيان هو عمود الرسم، وقيمته 12 تلميذا.',
  ),
  LessonHotspot(
    id: 'l13-h3',
    rect: PageRect(left: 0.20, top: 0.35, width: 0.58, height: 0.38),
    type: LessonInteractionType.numeric,
    title: 'ما الهواية التي يفضلها أقل عدد من التلاميذ؟',
    options: [
      'القراءة',
      'الرسم',
      'الطبخ',
      'تربية القطط',
    ],
    correctIndex: 2,
    explanation: 'أقصر عمود في البيان هو عمود الطبخ، وقيمته 5 تلاميذ.',
  ),
  LessonHotspot(
    id: 'l13-h4',
    rect: PageRect(left: 0.20, top: 0.35, width: 0.58, height: 0.38),
    type: LessonInteractionType.multipleChoice,
    title: 'ما الهواية التي يمثلها العمود ذو القيمة 8؟',
    options: [
      'القراءة',
      'الرسم',
      'الطبخ',
      'تربية القطط',
    ],
    correctIndex: 3,
    explanation: 'العمود الذي يبلغ 8 تلاميذ يمثل هواية تربية القطط.',
  ),
];
