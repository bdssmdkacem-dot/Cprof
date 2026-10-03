import 'interactive_lesson_model.dart';
import 'lesson_catalog.dart';

/// Canonical map for the 35 grade-4 mathematics lessons.
///
/// A lesson is not source-verified until its original textbook page has been
/// inspected. Hotspots and questions therefore stay empty until verification.
final mathLessonMap = <LessonPageMapping>[
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
        : lesson.number == 14
            ? const LessonPageMapping(
                subject: 'الرياضيات',
                lessonNumber: 14,
                lessonTitle: 'قراءة بيانات بالأعمدة (2)',
                pdfPage: 8,
                printedPage: 40,
                sourceVerified: true,
                hotspots: _lesson14Hotspots,
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

final _mathEntries = List<LessonCatalogEntry>.generate(
  mathLessonTitles.length,
  (i) => LessonCatalogEntry(i + 1, mathLessonTitles[i]),
);

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
/// Verified directly against printed pages 40–41 of the uploaded official PDF.
/// Each question below is derived only from the charts and prompts visible
/// on lesson 14; page 8 is printed page 40 and page 9 is printed page 41.
const _lesson14Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l14-h1',
    pdfPage: 8,
    rect: PageRect(left: 0.04, top: 0.21, width: 0.40, height: 0.31),
    type: LessonInteractionType.readAndAnswer,
    title: 'ما الذي يمثله المحور الأفقي في البيان الأول؟',
    options: ['المستويات الدراسية', 'أيام الأسبوع', 'المدن', 'الأشهر'],
    correctIndex: 0,
    explanation: 'المحور الأفقي يمثل المستويات الدراسية، كما هو موضح في الصفحة.',
  ),
  LessonHotspot(
    id: 'l14-h2',
    pdfPage: 8,
    rect: PageRect(left: 0.04, top: 0.21, width: 0.40, height: 0.31),
    type: LessonInteractionType.numeric,
    title: 'كم عدد تلاميذ المستوى الرابع المشاركين في حصص الدعم؟',
    options: ['15', '24', '25', '12'],
    correctIndex: 2,
    explanation: 'عمود المستوى الرابع يصل إلى 25 تلميذا.',
  ),
  LessonHotspot(
    id: 'l14-h3',
    pdfPage: 8,
    rect: PageRect(left: 0.04, top: 0.21, width: 0.40, height: 0.31),
    type: LessonInteractionType.numeric,
    title: 'ما الفرق بين عدد المشاركين في المستوى الخامس والمستوى السادس؟',
    options: ['9', '10', '8', '5'],
    correctIndex: 0,
    explanation: 'المستوى السادس 24 والمستوى الخامس 15، والفرق بينهما 9.',
  ),
  LessonHotspot(
    id: 'l14-h4',
    pdfPage: 8,
    rect: PageRect(left: 0.04, top: 0.62, width: 0.40, height: 0.31),
    type: LessonInteractionType.readAndAnswer,
    title: 'ما الذي يمثله المحور الأفقي في البيان الثاني؟',
    options: ['أيام الأسبوع', 'المستويات الدراسية', 'المدن المغربية', 'درجات الحرارة'],
    correctIndex: 0,
    explanation: 'البيان يعرض مصاريف سارة خلال خمسة أيام، والمحور الأفقي يمثل أيام الأسبوع.',
  ),
  LessonHotspot(
    id: 'l14-h5',
    pdfPage: 8,
    rect: PageRect(left: 0.04, top: 0.62, width: 0.40, height: 0.31),
    type: LessonInteractionType.numeric,
    title: 'كم صرفت سارة يوم الثلاثاء؟',
    options: ['16', '21', '25', '26'],
    correctIndex: 1,
    explanation: 'عمود يوم الثلاثاء يصل إلى 21 درهما.',
  ),
  LessonHotspot(
    id: 'l14-h6',
    pdfPage: 9,
    rect: PageRect(left: 0.07, top: 0.22, width: 0.36, height: 0.28),
    type: LessonInteractionType.multipleChoice,
    title: 'ما المدينة التي عرفت أكبر درجة حرارة؟',
    options: ['فاس', 'وجدة', 'أكادير', 'مراكش'],
    correctIndex: 0,
    explanation: 'أعلى عمود في البيان هو عمود فاس، وتبلغ درجته 27 درجة.',
  ),
  LessonHotspot(
    id: 'l14-h7',
    pdfPage: 9,
    rect: PageRect(left: 0.07, top: 0.22, width: 0.36, height: 0.28),
    type: LessonInteractionType.numeric,
    title: 'ما الفرق بين درجتي حرارة مراكش والجديدة؟',
    options: ['6', '8', '10', '12'],
    correctIndex: 1,
    explanation: 'درجة مراكش 21 والجديدة 13، والفرق بينهما 8 درجات.',
  ),
  LessonHotspot(
    id: 'l14-h8',
    pdfPage: 9,
    rect: PageRect(left: 0.09, top: 0.55, width: 0.35, height: 0.31),
    type: LessonInteractionType.multipleChoice,
    title: 'ما الورشة التي شارك فيها أكبر عدد من الأطفال؟',
    options: ['G', 'F', 'D', 'A'],
    correctIndex: 2,
    explanation: 'أعلى عمود في البيان هو الورشة D وقيمتها 8 أطفال.',
  ),
  LessonHotspot(
    id: 'l14-h9',
    pdfPage: 9,
    rect: PageRect(left: 0.09, top: 0.55, width: 0.35, height: 0.31),
    type: LessonInteractionType.numeric,
    title: 'بكم يقل عدد المشاركين في الورشة G عن الورشة D؟',
    options: ['3', '4', '5', '6'],
    correctIndex: 2,
    explanation: 'الورشة G فيها 3 أطفال والورشة D فيها 8، والفرق 5 أطفال.',
  ),
];

