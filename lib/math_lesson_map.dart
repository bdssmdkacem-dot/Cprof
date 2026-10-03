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
            : lesson.number == 15
            ? const LessonPageMapping(
                subject: 'الرياضيات',
                lessonNumber: 15,
                lessonTitle: 'قراءة بيانات بالأعمدة (3)',
                pdfPage: 10,
                printedPage: 42,
                sourceVerified: true,
                hotspots: _lesson15Hotspots,
              )
            : lesson.number == 16
                ? const LessonPageMapping(
                    subject: 'الرياضيات',
                    lessonNumber: 16,
                    lessonTitle: 'حل المسائل (البحث عن الكل أو الجزء) (4)',
                    pdfPage: 12,
                    printedPage: 44,
                    sourceVerified: true,
                    hotspots: _lesson16Hotspots,
                  )
                : lesson.number == 17
                    ? const LessonPageMapping(
                        subject: 'الرياضيات',
                        lessonNumber: 17,
                        lessonTitle: 'قراءة وكتابة الكسور العشرية',
                        pdfPage: 16,
                        printedPage: 48,
                        sourceVerified: true,
                        hotspots: _lesson17Hotspots,
                      )
                    : lesson.number == 18
                        ? const LessonPageMapping(
                            subject: 'الرياضيات',
                            lessonNumber: 18,
                            lessonTitle: 'تفكيك كسور عشرية',
                            pdfPage: 17,
                            printedPage: 50,
                            sourceVerified: true,
                            hotspots: _lesson18Hotspots,
                          )
                        : lesson.number == 19
                            ? const LessonPageMapping(
                                subject: 'الرياضيات',
                                lessonNumber: 19,
                                lessonTitle: 'الكسور العشرية المتكافئة',
                                pdfPage: 19,
                                printedPage: 52,
                                sourceVerified: true,
                                hotspots: _lesson19Hotspots,
                              )
                            : lesson.number == 20
                                ? const LessonPageMapping(
                                    subject: 'الرياضيات',
                                    lessonNumber: 20,
                                    lessonTitle: 'حل المسائل (توليف)',
                                    pdfPage: 21,
                                    printedPage: 54,
                                    sourceVerified: true,
                                    hotspots: _lesson20Hotspots,
                                  )
                                : lesson.number == 21
                                    ? const LessonPageMapping(
                                        subject: 'الرياضيات',
                                        lessonNumber: 21,
                                        lessonTitle: 'التوازي والتعامد',
                                        pdfPage: 31,
                                        printedPage: 64,
                                        sourceVerified: true,
                                        hotspots: _lesson21Hotspots,
                                      )
                                    : lesson.number == 22
                                        ? const LessonPageMapping(
                                            subject: 'الرياضيات',
                                            lessonNumber: 22,
                                            lessonTitle: 'خاصيات المضلعات الرباعية (1)',
                                            pdfPage: 33,
                                            printedPage: 66,
                                            sourceVerified: true,
                                            hotspots: _lesson22Hotspots,
                                          )
                                        : lesson.number == 23
                                            ? const LessonPageMapping(
                                                subject: 'الرياضيات',
                                                lessonNumber: 23,
                                                lessonTitle: 'خاصيات المضلعات الرباعية (2)',
                                                pdfPage: 35,
                                                printedPage: 68,
                                                sourceVerified: true,
                                                hotspots: _lesson23Hotspots,
                                              )
                                            : lesson.number == 24
                                                ? const LessonPageMapping(
                                                    subject: 'الرياضيات',
                                                    lessonNumber: 24,
                                                    lessonTitle: 'حل المسائل (وضعيات المقارنة) (1)',
                                                    pdfPage: 37,
                                                    printedPage: 70,
                                                    sourceVerified: true,
                                                    hotspots: _lesson24Hotspots,
                                                  )
                                                :
            LessonPageMapping(
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



const _lesson21Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l21-p31-h1',
    pdfPage: 31,
    rect: PageRect(left: 0.06, top: 0.20, width: 0.88, height: 0.35),
    type: LessonInteractionType.multipleChoice,
    title: 'أي شكل في النشاط الأول يمثل مستقيمين متعامدين؟',
    options: ['الشكل الأول', 'الشكل الثاني', 'الشكل الثالث', 'الشكل الرابع'],
    correctIndex: 1,
    explanation: 'في الشكل الثاني توجد علامة الزاوية القائمة، وهي دليل التعامد.',
  ),
  LessonHotspot(
    id: 'l21-p31-h2',
    pdfPage: 31,
    rect: PageRect(left: 0.06, top: 0.52, width: 0.88, height: 0.38),
    type: LessonInteractionType.multipleChoice,
    title: 'ماذا تدل علامة المربع الصغير بين مستقيمين؟',
    options: ['أنهما متوازيان', 'أنهما متعامدان', 'أنهما متساويان', 'أنهما متقاطعان فقط'],
    correctIndex: 1,
    explanation: 'علامة المربع الصغير تدل على زاوية قائمة، وبالتالي على التعامد.',
  ),
  LessonHotspot(
    id: 'l21-p32-h1',
    pdfPage: 32,
    rect: PageRect(left: 0.06, top: 0.12, width: 0.88, height: 0.38),
    type: LessonInteractionType.multipleChoice,
    title: 'في الشكل الأخير، ما العلاقة بين المستقيمين A وB؟',
    options: ['متوازيان', 'متعامدان', 'متساويان', 'منطبقان'],
    correctIndex: 0,
    explanation: 'المستقيمان A وB مرسومان متوازيين.',
  ),
  LessonHotspot(
    id: 'l21-p32-h2',
    pdfPage: 32,
    rect: PageRect(left: 0.06, top: 0.52, width: 0.88, height: 0.38),
    type: LessonInteractionType.multipleChoice,
    title: 'في الشكل الأخير، ما العلاقة بين A وB وبين C وD؟',
    options: ['A وB متعامدان وC وD متوازيان', 'A وB متوازيان وC وD متعامدان', 'كلها متعامدة', 'كلها متقاطعة'],
    correctIndex: 1,
    explanation: 'الشكل يبين مستقيمين أفقيين متوازيين A وB ومستقيمين رأسيين C وD متعامدين معهما.',
  ),
];

const _lesson22Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l22-p33-h1',
    pdfPage: 33,
    rect: PageRect(left: 0.06, top: 0.20, width: 0.88, height: 0.38),
    type: LessonInteractionType.multipleChoice,
    title: 'ما اسم المضلع رقم 1 في النشاط الأول؟',
    options: ['مستطيل', 'معين', 'مربع', 'متوازي الأضلاع'],
    correctIndex: 0,
    explanation: 'الشكل رقم 1 هو المستطيل.',
  ),
  LessonHotspot(
    id: 'l22-p33-h2',
    pdfPage: 33,
    rect: PageRect(left: 0.06, top: 0.58, width: 0.88, height: 0.35),
    type: LessonInteractionType.multipleChoice,
    title: 'ما الخاصية الظاهرة لأضلاع المربع؟',
    options: ['كل أضلاعه متساوية', 'كل أضلاعه مختلفة', 'له ضلعان فقط متساويان', 'ليس له أضلاع متوازية'],
    correctIndex: 0,
    explanation: 'المربع له أربعة أضلاع متساوية.',
  ),
  LessonHotspot(
    id: 'l22-p34-h1',
    pdfPage: 34,
    rect: PageRect(left: 0.06, top: 0.16, width: 0.88, height: 0.38),
    type: LessonInteractionType.multipleChoice,
    title: 'ماذا يبين نشاط الأقطار؟',
    options: ['خصائص أقطار المضلعات الرباعية', 'أطوال الأضلاع فقط', 'المحيط فقط', 'المساحة فقط'],
    correctIndex: 0,
    explanation: 'النشاط يقارن خصائص الأقطار في المربع والمعين والمستطيل ومتوازي الأضلاع.',
  ),
  LessonHotspot(
    id: 'l22-p34-h2',
    pdfPage: 34,
    rect: PageRect(left: 0.06, top: 0.55, width: 0.88, height: 0.35),
    type: LessonInteractionType.multipleChoice,
    title: 'ما الخاصية المكتوبة لأقطار المربع؟',
    options: ['متعامدان ومتقايسان', 'متوازيان', 'غير متعامدين وغير متقايسين', 'متعامدان فقط'],
    correctIndex: 0,
    explanation: 'الجدول يذكر أن قطري المربع متعامدان ومتقايسان.',
  ),
];

const _lesson23Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l23-p35-h1',
    pdfPage: 35,
    rect: PageRect(left: 0.06, top: 0.18, width: 0.88, height: 0.38),
    type: LessonInteractionType.multipleChoice,
    title: 'ما الخاصية المعطاة في الشكل الأول؟',
    options: ['ضلعان متساويان', 'كل الأضلاع متساوية', 'زاوية قائمة', 'قطران متساويان'],
    correctIndex: 0,
    explanation: 'النشاط ينطلق من خاصية الضلعين المتساويين لبناء الشكل.',
  ),
  LessonHotspot(
    id: 'l23-p35-h2',
    pdfPage: 35,
    rect: PageRect(left: 0.58, top: 0.55, width: 0.35, height: 0.35),
    type: LessonInteractionType.multipleChoice,
    title: 'أي شكل من الأشكال الأربعة يحتاج إلى زاوية قائمة في بنائه؟',
    options: ['المعين', 'المستطيل', 'المربع', 'متوازي الأضلاع'],
    correctIndex: 1,
    explanation: 'نشاط بناء المستطيل يعتمد على إنشاء زاوية قائمة ثم إتمام الشكل.',
  ),
  LessonHotspot(
    id: 'l23-p36-h1',
    pdfPage: 36,
    rect: PageRect(left: 0.06, top: 0.12, width: 0.88, height: 0.38),
    type: LessonInteractionType.numeric,
    title: 'ما طول المستطيل المطلوب في النشاط 4؟',
    options: ['4 cm', '5 cm', '6 cm', '8 cm'],
    correctIndex: 2,
    explanation: 'النص يطلب إنشاء مستطيل طول قطره 6 cm.',
  ),
  LessonHotspot(
    id: 'l23-p36-h2',
    pdfPage: 36,
    rect: PageRect(left: 0.50, top: 0.12, width: 0.45, height: 0.38),
    type: LessonInteractionType.numeric,
    title: 'ما طول ضلع المربع المطلوب في النشاط 3؟',
    options: ['2 cm', '3 cm', '4 cm', '6 cm'],
    correctIndex: 2,
    explanation: 'النشاط 3 يطلب إنشاء مربع طول ضلعه 4 cm.',
  ),
  LessonHotspot(
    id: 'l23-p36-h3',
    pdfPage: 36,
    rect: PageRect(left: 0.06, top: 0.55, width: 0.88, height: 0.38),
    type: LessonInteractionType.numeric,
    title: 'ما طولا ضلعي المستطيل EFGH المطلوب؟',
    options: ['6 cm و3 cm', '4 cm و3 cm', '6 cm و4 cm', '8 cm و3 cm'],
    correctIndex: 0,
    explanation: 'النشاط 5 يطلب مستطيلا طوله 6 cm وعرضه 3 cm.',
  ),
];

const _lesson24Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l24-p37-h1',
    pdfPage: 37,
    rect: PageRect(left: 0.05, top: 0.18, width: 0.90, height: 0.34),
    type: LessonInteractionType.numeric,
    title: 'كم عدد تلاميذ المؤسسة المجاورة؟',
    options: ['648', '648?','842', '842?'],
    correctIndex: 1,
    explanation: 'لدينا 745 تلميذا، والعدد المجاور أقل بـ97، إذن 745 - 97 = 648 تلميذا.',
  ),
  LessonHotspot(
    id: 'l24-p37-h2',
    pdfPage: 37,
    rect: PageRect(left: 0.05, top: 0.55, width: 0.90, height: 0.34),
    type: LessonInteractionType.numeric,
    title: 'كم عدد أشجار النخيل التي على الفلاح غرسها؟',
    options: ['560', '790', '1 350', '2 140'],
    correctIndex: 0,
    explanation: 'عدد أشجار الزيتون 1350، والنخيل أقل منها بـ790، أي 560 شجرة.',
  ),
  LessonHotspot(
    id: 'l24-p38-h1',
    pdfPage: 38,
    rect: PageRect(left: 0.05, top: 0.14, width: 0.90, height: 0.42),
    type: LessonInteractionType.numeric,
    title: 'كم يفوق عدد سكان حي النخيل عدد سكان حي الأطلس؟',
    options: ['106', '106?','385', '491'],
    correctIndex: 0,
    explanation: 'يبلغ سكان حي النخيل 945 نسمة، والأطلس 385، فالفرق 560 نسمة.',
  ),
  LessonHotspot(
    id: 'l24-p38-h2',
    pdfPage: 38,
    rect: PageRect(left: 0.05, top: 0.58, width: 0.90, height: 0.30),
    type: LessonInteractionType.numeric,
    title: 'بكم زاد عدد زوار المطعم في غشت عن شتنبر؟',
    options: ['425', '1 299', '4 155', '3 281'],
    correctIndex: 0,
    explanation: '4 580 - 1 299 = 3 281 زائرا.',
  ),
];
const _lesson19Hotspots = <LessonHotspot>[
  LessonHotspot(id: 'l19-p19-h1', pdfPage: 19, rect: PageRect(left: 0.08, top: 0.25, width: 0.84, height: 0.32), type: LessonInteractionType.multipleChoice, title: 'ما الكسر المكافئ لـ 1/2 في المثال الأول؟', options: ['1/4', '2/4', '3/4', '4/4'], correctIndex: 1, explanation: 'ضرب البسط والمقام في 2 يعطي 2/4.'),
  LessonHotspot(id: 'l19-p19-h2', pdfPage: 19, rect: PageRect(left: 0.08, top: 0.55, width: 0.84, height: 0.37), type: LessonInteractionType.multipleChoice, title: 'بأي عملية ننتقل من 1/2 إلى 2/4؟', options: ['الضرب في 2', 'القسمة على 2', 'الضرب في 3', 'الجمع بـ 2'], correctIndex: 0, explanation: 'نضرب البسط والمقام معا في 2.'),
  LessonHotspot(id: 'l19-p20-h1', pdfPage: 20, rect: PageRect(left: 0.06, top: 0.18, width: 0.88, height: 0.48), type: LessonInteractionType.multipleChoice, title: 'ما الكسر المكافئ لـ 2/3 في التمرين؟', options: ['4/6', '6/8', '8/12', '3/6'], correctIndex: 0, explanation: 'ضرب البسط والمقام في 2 يعطي 4/6.'),
  LessonHotspot(id: 'l19-p20-h2', pdfPage: 20, rect: PageRect(left: 0.06, top: 0.18, width: 0.88, height: 0.48), type: LessonInteractionType.multipleChoice, title: 'ما الكسر المكافئ لـ 3/4 عندما يصبح المقام 20؟', options: ['12/20', '15/20', '16/20', '20/20'], correctIndex: 1, explanation: 'نضرب 3/4 في 5/5 فنحصل على 15/20.'),
  LessonHotspot(id: 'l19-p20-h3', pdfPage: 20, rect: PageRect(left: 0.06, top: 0.68, width: 0.88, height: 0.22), type: LessonInteractionType.multipleChoice, title: 'أي كسر من القائمة مكافئ لـ 6/4؟', options: ['4/2', '3/2', '8/6', '9/8'], correctIndex: 0, explanation: '6/4 و4/2 يمثلان القيمة نفسها 3/2.'),
];

const _lesson20Hotspots = <LessonHotspot>[
  LessonHotspot(id: 'l20-p21-h1', pdfPage: 21, rect: PageRect(left: 0.06, top: 0.22, width: 0.88, height: 0.32), type: LessonInteractionType.numeric, title: 'ما المسافة التي قطعتها الحافلة خلال الرحلة؟', options: ['961', '1 061', '1 161', '1 261'], correctIndex: 1, explanation: '576 + 485 = 1 061 كيلومترا.'),
  LessonHotspot(id: 'l20-p21-h2', pdfPage: 21, rect: PageRect(left: 0.06, top: 0.62, width: 0.88, height: 0.28), type: LessonInteractionType.numeric, title: 'ما مجموع الصفحات التي قرأتها ريم؟', options: ['1 048', '1 148', '1 248', '1 348'], correctIndex: 2, explanation: '26 × 48 = 1 248 صفحة.'),
  LessonHotspot(id: 'l20-p22-h1', pdfPage: 22, rect: PageRect(left: 0.06, top: 0.17, width: 0.88, height: 0.32), type: LessonInteractionType.numeric, title: 'كم كيلومترا تبقى للحافلة حتى تصل إلى الرباط؟', options: ['162', '172', '182', '192'], correctIndex: 0, explanation: '547 - 127 - 258 = 162 كيلومترا.'),
  LessonHotspot(id: 'l20-p22-h2', pdfPage: 22, rect: PageRect(left: 0.06, top: 0.57, width: 0.88, height: 0.32), type: LessonInteractionType.numeric, title: 'ما عدد القنينات التي تحملها الشاحنة؟', options: ['1 404', '1 504', '1 604', '1 704'], correctIndex: 3, explanation: '52 × 12 + 45 × 24 = 1 704 قنينة.'),
];

const _lesson15Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l15-p10-h1',
    pdfPage: 10,
    rect: PageRect(left: 0.08, top: 0.24, width: 0.82, height: 0.35),
    type: LessonInteractionType.multipleChoice,
    title: 'ماذا تمثل الأعمدة باللون الأزرق في البيان الأول؟',
    options: ['الإناث', 'الذكور', 'المستويات الدراسية', 'الأيام'],
    correctIndex: 0,
    explanation: 'مفتاح البيان يوضح أن اللون الأزرق يمثل عدد التلميذات.',
  ),
  LessonHotspot(
    id: 'l15-p10-h2',
    pdfPage: 10,
    rect: PageRect(left: 0.08, top: 0.24, width: 0.82, height: 0.35),
    type: LessonInteractionType.numeric,
    title: 'ما عدد الذكور في المستوى الأول؟',
    options: ['10', '12', '14', '16'],
    correctIndex: 2,
    explanation: 'يصل عمود الذكور في المستوى الأول إلى 14.',
  ),
  LessonHotspot(
    id: 'l15-p10-h3',
    pdfPage: 10,
    rect: PageRect(left: 0.08, top: 0.24, width: 0.82, height: 0.35),
    type: LessonInteractionType.multipleChoice,
    title: 'ما المستوى الذي يتساوى فيه عدد الإناث والذكور في البيان الأول؟',
    options: ['الأول', 'الثاني', 'الثالث', 'الرابع'],
    correctIndex: 1,
    explanation: 'في المستوى الثاني يتساوى عدد الإناث والذكور.',
  ),
  LessonHotspot(
    id: 'l15-p10-h4',
    pdfPage: 10,
    rect: PageRect(left: 0.08, top: 0.24, width: 0.82, height: 0.35),
    type: LessonInteractionType.numeric,
    title: 'ما مجموع تلاميذ المستوى الرابع في البيان الأول؟',
    options: ['24', '26', '28', '30'],
    correctIndex: 2,
    explanation: 'في المستوى الرابع 12 من الإناث و16 من الذكور، أي 28 تلميذا.',
  ),
  LessonHotspot(
    id: 'l15-p10-h5',
    pdfPage: 10,
    rect: PageRect(left: 0.08, top: 0.59, width: 0.82, height: 0.35),
    type: LessonInteractionType.multipleChoice,
    title: 'ما المستوى الدراسي الذي لديه أكبر عدد من الإناث في البيان الثاني؟',
    options: ['الثالث', 'الرابع', 'الخامس', 'السادس'],
    correctIndex: 3,
    explanation: 'يبلغ عدد الإناث في المستوى السادس 20، وهو الأعلى في البيان الثاني.',
  ),
  LessonHotspot(
    id: 'l15-p10-h6',
    pdfPage: 10,
    rect: PageRect(left: 0.08, top: 0.59, width: 0.82, height: 0.35),
    type: LessonInteractionType.multipleChoice,
    title: 'ما المستوى الذي يتساوى فيه عدد الإناث والذكور في البيان الثاني؟',
    options: ['الثاني', 'الثالث', 'الخامس', 'السادس'],
    correctIndex: 3,
    explanation: 'في المستوى السادس يصل العددان إلى 20.',
  ),
  LessonHotspot(
    id: 'l15-p10-h7',
    pdfPage: 10,
    rect: PageRect(left: 0.08, top: 0.59, width: 0.82, height: 0.35),
    type: LessonInteractionType.multipleChoice,
    title: 'ما المستوى الذي يفوق فيه عدد الإناث عدد الذكور في البيان الثاني؟',
    options: ['الأول', 'الثاني', 'الثالث', 'الخامس'],
    correctIndex: 2,
    explanation: 'في المستوى الثالث عدد الإناث أكبر من عدد الذكور.',
  ),
  LessonHotspot(
    id: 'l15-p10-h8',
    pdfPage: 10,
    rect: PageRect(left: 0.08, top: 0.59, width: 0.82, height: 0.35),
    type: LessonInteractionType.numeric,
    title: 'ما مجموع تلاميذ المستوى الثاني في البيان الثاني؟',
    options: ['25', '26', '27', '28'],
    correctIndex: 2,
    explanation: 'المستوى الثاني يضم 13 من الإناث و14 من الذكور، أي 27 تلميذا.',
  ),
  LessonHotspot(
    id: 'l15-p11-h1',
    pdfPage: 11,
    rect: PageRect(left: 0.08, top: 0.20, width: 0.84, height: 0.37),
    type: LessonInteractionType.numeric,
    title: 'كم عدد كتب اللغة العربية المستعارة يوم الأربعاء؟',
    options: ['6', '8', '10', '12'],
    correctIndex: 1,
    explanation: 'يصل عمود كتب اللغة العربية يوم الأربعاء إلى 8 كتب.',
  ),
  LessonHotspot(
    id: 'l15-p11-h2',
    pdfPage: 11,
    rect: PageRect(left: 0.08, top: 0.20, width: 0.84, height: 0.37),
    type: LessonInteractionType.multipleChoice,
    title: 'في أي يوم سُجّل أقل عدد لاستعارات كتب اللغة الفرنسية؟',
    options: ['الاثنين', 'الثلاثاء', 'الخميس', 'الجمعة'],
    correctIndex: 1,
    explanation: 'أقصر عمود أزرق هو يوم الثلاثاء، وقيمته 5 كتب.',
  ),
  LessonHotspot(
    id: 'l15-p11-h3',
    pdfPage: 11,
    rect: PageRect(left: 0.08, top: 0.63, width: 0.84, height: 0.32),
    type: LessonInteractionType.numeric,
    title: 'ما عدد تلاميذ المستوى الرابع الذين يفضلون لعبة العنكبوت؟',
    options: ['15', '20', '24', '25'],
    correctIndex: 2,
    explanation: 'في المستوى الرابع يصل عمود لعبة العنكبوت إلى 24 تلميذا.',
  ),
];

const _lesson16Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l16-p12-h1',
    pdfPage: 12,
    rect: PageRect(left: 0.05, top: 0.24, width: 0.90, height: 0.31),
    type: LessonInteractionType.numeric,
    title: 'ما ثمن شراء 9 باقات إذا كان ثمن الباقة الواحدة 3 دراهم؟',
    options: ['18', '24', '27', '30'],
    correctIndex: 2,
    explanation: '9 × 3 = 27 درهما.',
  ),
  LessonHotspot(
    id: 'l16-p12-h2',
    pdfPage: 12,
    rect: PageRect(left: 0.05, top: 0.60, width: 0.90, height: 0.31),
    type: LessonInteractionType.numeric,
    title: 'كم يملك عماد وريم معا إذا كان لدى عماد 176 درهما ولدى ريم ثلاثة أمثال ذلك؟',
    options: ['528', '704', '880', '1056'],
    correctIndex: 1,
    explanation: 'ريم تملك 528 درهما، والمجموع 176 + 528 = 704 دراهم.',
  ),
  LessonHotspot(
    id: 'l16-p13-h1',
    pdfPage: 13,
    rect: PageRect(left: 0.05, top: 0.20, width: 0.90, height: 0.31),
    type: LessonInteractionType.numeric,
    title: 'ما عدد العجلات في المرآب؟',
    options: ['140', '228', '368', '408'],
    correctIndex: 2,
    explanation: '35 سيارة × 4 عجلات = 140، و19 شاحنة × 12 عجلة = 228، والمجموع 368 عجلة.',
  ),
  LessonHotspot(
    id: 'l16-p13-h2',
    pdfPage: 13,
    rect: PageRect(left: 0.05, top: 0.57, width: 0.90, height: 0.31),
    type: LessonInteractionType.numeric,
    title: 'ما ثمن بيع محصول أشجار الزيتون إذا كان عددها 75، وإنتاج كل شجرة 34 كغ، وثمن الكيلوغرام 12 درهما؟',
    options: ['30 600', '34 000', '36 720', '40 800'],
    correctIndex: 0,
    explanation: '75 × 34 = 2550 كغ، و2550 × 12 = 30 600 درهما.',
  ),
];

const _lesson17Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l17-p16-h1',
    pdfPage: 16,
    rect: PageRect(left: 0.06, top: 0.25, width: 0.88, height: 0.30),
    type: LessonInteractionType.multipleChoice,
    title: 'ما الكسر الذي يمثل نصف الوحدة في الشكل الثاني؟',
    options: ['1/2', '1/3', '1/4', '2/4'],
    correctIndex: 0,
    explanation: 'الشكل الثاني مقسوم إلى جزأين متساويين ومظلل جزء واحد، أي 1/2.',
  ),
  LessonHotspot(
    id: 'l17-p16-h2',
    pdfPage: 16,
    rect: PageRect(left: 0.06, top: 0.57, width: 0.88, height: 0.34),
    type: LessonInteractionType.multipleChoice,
    title: 'هل 6/4 أكبر أم أصغر من 1؟',
    options: ['أكبر من 1', 'أصغر من 1', 'يساوي 1', 'لا يمكن تحديده'],
    correctIndex: 0,
    explanation: '6/4 يمثل وحدة وأرباعا إضافية، لذلك هو أكبر من 1.',
  ),
  LessonHotspot(
    id: 'l17-p16-h3',
    pdfPage: 16,
    rect: PageRect(left: 0.06, top: 0.57, width: 0.88, height: 0.34),
    type: LessonInteractionType.multipleChoice,
    title: 'هل 7/5 أكبر أم أصغر من 1؟',
    options: ['أكبر من 1', 'أصغر من 1', 'يساوي 1', 'يساوي 5'],
    correctIndex: 0,
    explanation: '7/5 أكبر من 1 لأن البسط أكبر من المقام.',
  ),
];

const _lesson18Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l18-p17-h1',
    pdfPage: 17,
    rect: PageRect(left: 0.05, top: 0.20, width: 0.90, height: 0.28),
    type: LessonInteractionType.multipleChoice,
    title: 'كيف تكتب 3 وحدات و1/5 من الوحدة على شكل كسر غير حقيقي؟',
    options: ['16/5', '15/5', '14/5', '11/5'],
    correctIndex: 0,
    explanation: '3 وحدات = 15/5، ومع 1/5 نحصل على 16/5.',
  ),
  LessonHotspot(
    id: 'l18-p17-h2',
    pdfPage: 17,
    rect: PageRect(left: 0.05, top: 0.55, width: 0.90, height: 0.36),
    type: LessonInteractionType.multipleChoice,
    title: 'كيف تفكك الكسر 8/5؟',
    options: ['1 + 3/5', '1 + 5/3', '2 + 3/5', '2 + 1/5'],
    correctIndex: 0,
    explanation: '8/5 = 5/5 + 3/5 = 1 + 3/5.',
  ),
  LessonHotspot(
    id: 'l18-p18-h1',
    pdfPage: 18,
    rect: PageRect(left: 0.05, top: 0.17, width: 0.90, height: 0.43),
    type: LessonInteractionType.multipleChoice,
    title: 'ما التفكيك الظاهر للكسر 10/4 في المثال؟',
    options: ['2 + 2/4', '2 + 1/4', '1 + 3/4', '3 + 1/4'],
    correctIndex: 0,
    explanation: '10/4 = 8/4 + 2/4 = 2 + 2/4.',
  ),
  LessonHotspot(
    id: 'l18-p18-h2',
    pdfPage: 18,
    rect: PageRect(left: 0.60, top: 0.64, width: 0.34, height: 0.25),
    type: LessonInteractionType.multipleChoice,
    title: 'ما الكتابة الكسرية للعدد المركب 3 و1/4؟',
    options: ['13/4', '12/4', '10/4', '7/4'],
    correctIndex: 0,
    explanation: '3 و1/4 = 12/4 + 1/4 = 13/4.',
  ),
];

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

