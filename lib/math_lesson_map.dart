import 'interactive_lesson_model.dart';
import 'lesson_catalog.dart';

/// Canonical map for the 35 grade-4 mathematics lessons.
///
/// A lesson is not source-verified until its original textbook page has been
/// inspected. Hotspots and questions therefore stay empty until verification.
final mathLessonMap = <LessonPageMapping>[
    lesson.number == 1
        ? const LessonPageMapping(
            subject: 'الرياضيات',
            lessonNumber: 1,
            lessonTitle: 'الدعم المكثف — الحصة 1: الأعداد من 0 إلى 50 والجمع',
            sourceVerified: true,
            isSupport: true,
            sourceLabel: 'الدعم المكثف TaRL — الرياضيات — المستوى الرابع — المسار 1',
            hotspots: _supportLesson1Hotspots,
          )
        :    lesson.number == 2
        ? const LessonPageMapping(
            subject: 'الرياضيات',
            lessonNumber: 2,
            lessonTitle: 'الدعم المكثف — الحصة 2: الأعداد من 0 إلى 99 والجمع باحتفاظ',
            sourceVerified: true,
            isSupport: true,
            sourceLabel: 'الدعم المكثف TaRL — الرياضيات — المستوى الرابع — المسار 1',
            hotspots: _supportLesson2Hotspots,
          )
        :    lesson.number == 3
        ? const LessonPageMapping(
            subject: 'الرياضيات',
            lessonNumber: 3,
            lessonTitle: 'الدعم المكثف — الحصة 3: الأعداد من 0 إلى 99 والجمع باحتفاظ',
            sourceVerified: true,
            isSupport: true,
            sourceLabel: 'الدعم المكثف TaRL — الرياضيات — المستوى الرابع — المسار 1',
            hotspots: _supportLesson3Hotspots,
          )
        :    lesson.number == 4
        ? const LessonPageMapping(
            subject: 'الرياضيات',
            lessonNumber: 4,
            lessonTitle: 'الدعم المكثف — الحصة 4: مراجعة وتوليف ورائز اللبنة 1',
            sourceVerified: true,
            isSupport: true,
            sourceLabel: 'الدعم المكثف TaRL — الرياضيات — المستوى الرابع — المسار 1',
            hotspots: _supportLesson4Hotspots,
          )
        :    lesson.number == 5
        ? const LessonPageMapping(
            subject: 'الرياضيات',
            lessonNumber: 5,
            lessonTitle: 'الدعم المكثف — الحصة 5: الأعداد من 0 إلى 999 والجمع باحتفاظ',
            sourceVerified: true,
            isSupport: true,
            sourceLabel: 'الدعم المكثف TaRL — الرياضيات — المستوى الرابع — المسار 1',
            hotspots: _supportLesson5Hotspots,
          )
        :    lesson.number == 6
        ? const LessonPageMapping(
            subject: 'الرياضيات',
            lessonNumber: 6,
            lessonTitle: 'الدعم المكثف — الحصة 6: الأعداد من 0 إلى 999 والجمع باحتفاظ',
            sourceVerified: true,
            isSupport: true,
            sourceLabel: 'الدعم المكثف TaRL — الرياضيات — المستوى الرابع — المسار 1',
            hotspots: _supportLesson6Hotspots,
          )
        :    lesson.number == 7
        ? const LessonPageMapping(
            subject: 'الرياضيات',
            lessonNumber: 7,
            lessonTitle: 'الدعم المكثف — الحصة 7: الأعداد من 0 إلى 999 والجمع باحتفاظ',
            sourceVerified: true,
            isSupport: true,
            sourceLabel: 'الدعم المكثف TaRL — الرياضيات — المستوى الرابع — المسار 1',
            hotspots: _supportLesson7Hotspots,
          )
        :    lesson.number == 8
        ? const LessonPageMapping(
            subject: 'الرياضيات',
            lessonNumber: 8,
            lessonTitle: 'الدعم المكثف — الحصة 8: مراجعة وتحقق اللبنة 2',
            sourceVerified: true,
            isSupport: true,
            sourceLabel: 'الدعم المكثف TaRL — الرياضيات — المستوى الرابع — المسار 1',
            hotspots: _supportLesson8Hotspots,
          )
        :    lesson.number == 9
        ? const LessonPageMapping(
            subject: 'الرياضيات',
            lessonNumber: 9,
            lessonTitle: 'الدعم المكثف — الحصة 9: الأعداد من 0 إلى 999 والطرح بالمبادلة',
            sourceVerified: true,
            isSupport: true,
            sourceLabel: 'الدعم المكثف TaRL — الرياضيات — المستوى الرابع — المسار 1',
            hotspots: _supportLesson9Hotspots,
          )
        :    lesson.number == 10
        ? const LessonPageMapping(
            subject: 'الرياضيات',
            lessonNumber: 10,
            lessonTitle: 'الدعم المكثف — الحصة 10: الأعداد من 0 إلى 999 والطرح بالمبادلة',
            sourceVerified: true,
            isSupport: true,
            sourceLabel: 'الدعم المكثف TaRL — الرياضيات — المستوى الرابع — المسار 1',
            hotspots: _supportLesson10Hotspots,
          )
        :    lesson.number == 11
        ? const LessonPageMapping(
            subject: 'الرياضيات',
            lessonNumber: 11,
            lessonTitle: 'الدعم المكثف — الحصة 11: الأعداد من 0 إلى 999 والطرح بالمبادلة',
            sourceVerified: true,
            isSupport: true,
            sourceLabel: 'الدعم المكثف TaRL — الرياضيات — المستوى الرابع — المسار 1',
            hotspots: _supportLesson11Hotspots,
          )
        :    lesson.number == 12
        ? const LessonPageMapping(
            subject: 'الرياضيات',
            lessonNumber: 12,
            lessonTitle: 'الدعم المكثف — الحصة 12: الأعداد من 0 إلى 999 والطرح بالمبادلة',
            sourceVerified: true,
            isSupport: true,
            sourceLabel: 'الدعم المكثف TaRL — الرياضيات — المستوى الرابع — المسار 1',
            hotspots: _supportLesson12Hotspots,
          )
        :
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
                                                : lesson.number == 25
                                                    ? const LessonPageMapping(
                                                        subject: 'الرياضيات',
                                                        lessonNumber: 25,
                                                        lessonTitle: 'قواسم عدد',
                                                        pdfPage: 41,
                                                        printedPage: 74,
                                                        sourceVerified: true,
                                                        hotspots: _lesson25Hotspots,
                                                      )
                                                    : lesson.number == 26
                                                        ? const LessonPageMapping(
                                                            subject: 'الرياضيات',
                                                            lessonNumber: 26,
                                                            lessonTitle: 'مضاعفات عدد',
                                                            pdfPage: 43,
                                                            printedPage: 76,
                                                            sourceVerified: true,
                                                            hotspots: _lesson26Hotspots,
                                                          )
                                                        : lesson.number == 27
                                                            ? const LessonPageMapping(
                                                                subject: 'الرياضيات',
                                                                lessonNumber: 27,
                                                                lessonTitle: 'المضاعفات والقواسم المشتركة لعددين',
                                                                pdfPage: 45,
                                                                printedPage: 78,
                                                                sourceVerified: true,
                                                                hotspots: _lesson27Hotspots,
                                                              )
                                                            : lesson.number == 28
                                                                ? const LessonPageMapping(
                                                                    subject: 'الرياضيات',
                                                                    lessonNumber: 28,
                                                                    lessonTitle: 'حل المسائل (وضعيات المقارنة) (2)',
                                                                    pdfPage: 47,
                                                                    printedPage: 80,
                                                                    sourceVerified: true,
                                                                    hotspots: _lesson28Hotspots,
                                                                  )
                                                                : lesson.number == 29
                                                                    ? const LessonPageMapping(
                                                                        subject: 'الرياضيات',
                                                                        lessonNumber: 29,
                                                                        lessonTitle: 'التناسبية (1)',
                                                                        pdfPage: 51,
                                                                        printedPage: 84,
                                                                        sourceVerified: true,
                                                                        hotspots: _lesson29Hotspots,
                                                                      )
                                                                    : lesson.number == 30
                                                                        ? const LessonPageMapping(
                                                                            subject: 'الرياضيات',
                                                                            lessonNumber: 30,
                                                                            lessonTitle: 'التناسبية (2)',
                                                                            pdfPage: 53,
                                                                            printedPage: 86,
                                                                            sourceVerified: true,
                                                                            hotspots: _lesson30Hotspots,
                                                                          )
                                                                        : lesson.number == 31
                                                                            ? const LessonPageMapping(
                                                                                subject: 'الرياضيات',
                                                                                lessonNumber: 31,
                                                                                lessonTitle: 'التناسبية (3)',
                                                                                pdfPage: 55,
                                                                                printedPage: 88,
                                                                                sourceVerified: true,
                                                                                hotspots: _lesson31Hotspots,
                                                                              )
                                                                            : lesson.number == 32
                                                                                ? const LessonPageMapping(
                                                                                    subject: 'الرياضيات',
                                                                                    lessonNumber: 32,
                                                                                    lessonTitle: 'حل المسائل (وضعيات المقارنة) (3)',
                                                                                    pdfPage: 57,
                                                                                    printedPage: 90,
                                                                                    sourceVerified: true,
                                                                                    hotspots: _lesson32Hotspots,
                                                                                  )
                                                                                : lesson.number == 33
                                                                                    ? const LessonPageMapping(
                                                                                        subject: 'الرياضيات',
                                                                                        lessonNumber: 33,
                                                                                        lessonTitle: 'حساب محيطي المربع والمستطيل',
                                                                                        pdfPage: 61,
                                                                                        printedPage: 94,
                                                                                        sourceVerified: true,
                                                                                        hotspots: _lesson33Hotspots,
                                                                                      )
                                                                                    : lesson.number == 34
                                                                                        ? const LessonPageMapping(
                                                                                            subject: 'الرياضيات',
                                                                                            lessonNumber: 34,
                                                                                            lessonTitle: 'مقارنة مساحتين',
                                                                                            pdfPage: 63,
                                                                                            printedPage: 96,
                                                                                            sourceVerified: true,
                                                                                            hotspots: _lesson34Hotspots,
                                                                                          )
                                                                                        : lesson.number == 35
                                                                                            ? const LessonPageMapping(
                                                                                                subject: 'الرياضيات',
                                                                                                lessonNumber: 35,
                                                                                                lessonTitle: 'حساب مساحتي المربع والمستطيل',
                                                                                                pdfPage: 65,
                                                                                                printedPage: 98,
                                                                                                sourceVerified: true,
                                                                                                hotspots: _lesson35Hotspots,
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




const _lesson25Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l25-p41-h1',
    pdfPage: 41,
    rect: PageRect(left: 0.06, top: 0.22, width: 0.88, height: 0.36),
    type: LessonInteractionType.multipleChoice,
    title: 'ما قاسما العدد 10 الظاهران في النشاط الأول؟',
    options: ['2 و5', '3 و7', '1 و10', '4 و6'],
    correctIndex: 0,
    explanation: 'يمثل النشاط العدد 10 على شكل 2 × 5، لذلك القاسمان هما 2 و5.',
  ),
  LessonHotspot(
    id: 'l25-p41-h2',
    pdfPage: 41,
    rect: PageRect(left: 0.06, top: 0.58, width: 0.88, height: 0.34),
    type: LessonInteractionType.multipleChoice,
    title: 'ما قواسم العدد 8؟',
    options: ['1 و2 و4 و8', '1 و3 و8', '2 و4 فقط', '1 و8 فقط'],
    correctIndex: 0,
    explanation: 'قواسم 8 هي 1 و2 و4 و8.',
  ),
];

const _lesson26Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l26-p43-h1',
    pdfPage: 43,
    rect: PageRect(left: 0.06, top: 0.20, width: 0.88, height: 0.19),
    type: LessonInteractionType.numeric,
    title: 'ما ناتج 15 × 2 في النشاط الأول؟',
    options: ['25', '30', '35', '45'],
    correctIndex: 1,
    explanation: '15 × 2 = 30، و30 من مضاعفات العدد 15.',
  ),
  LessonHotspot(
    id: 'l26-p43-h2',
    pdfPage: 43,
    rect: PageRect(left: 0.06, top: 0.40, width: 0.88, height: 0.23),
    type: LessonInteractionType.multipleChoice,
    title: 'أي عدد من الآتية هو من مضاعفات العدد 9؟',
    options: ['35', '54', '58', '65'],
    correctIndex: 1,
    explanation: '54 = 9 × 6، لذلك فهو من مضاعفات العدد 9.',
  ),
  LessonHotspot(
    id: 'l26-p43-h3',
    pdfPage: 43,
    rect: PageRect(left: 0.06, top: 0.65, width: 0.88, height: 0.30),
    type: LessonInteractionType.multipleChoice,
    title: 'ما أول مضاعف للعدد 3 في السلسلة الظاهرة بعد 24؟',
    options: ['27', '28', '30', '33'],
    correctIndex: 0,
    explanation: 'مضاعفات 3 تتتابع: 24، 27، 30، ...',
  ),
];

const _lesson27Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l27-p45-h1',
    pdfPage: 45,
    rect: PageRect(left: 0.06, top: 0.20, width: 0.88, height: 0.36),
    type: LessonInteractionType.multipleChoice,
    title: 'ما القواسم المشتركة للعددين 20 و12؟',
    options: ['1 و2 و4', '1 و3 و6', '2 و5 و10', '4 و6 و12'],
    correctIndex: 0,
    explanation: 'القواسم المشتركة للعددين 20 و12 هي 1 و2 و4.',
  ),
  LessonHotspot(
    id: 'l27-p45-h2',
    pdfPage: 45,
    rect: PageRect(left: 0.06, top: 0.57, width: 0.88, height: 0.36),
    type: LessonInteractionType.multipleChoice,
    title: 'ما أصغر مضاعف مشترك للعددين 4 و6 في النشاط؟',
    options: ['8', '10', '12', '24'],
    correctIndex: 2,
    explanation: 'المضاعفات المشتركة المعروضة تبدأ بـ12 ثم 24 ثم 36، لذلك الأصغر هو 12.',
  ),
];

const _lesson28Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l28-p47-h1',
    pdfPage: 47,
    rect: PageRect(left: 0.05, top: 0.22, width: 0.90, height: 0.34),
    type: LessonInteractionType.numeric,
    title: 'بكم يفوق مبلغ عماد مبلغ ريم في المسألة الأولى؟',
    options: ['70 درهما', '105 دراهم', '140 درهما', '175 درهما'],
    correctIndex: 1,
    explanation: 'لدى ريم 35 درهما، ولدى عماد 4 مرات ذلك أي 140 درهما، والفرق 140 − 35 = 105 دراهم.',
  ),
  LessonHotspot(
    id: 'l28-p47-h2',
    pdfPage: 47,
    rect: PageRect(left: 0.05, top: 0.60, width: 0.90, height: 0.32),
    type: LessonInteractionType.numeric,
    title: 'بكم يزيد ما جمعه الفتيان عن 258 قارورة؟',
    options: ['258', '516', '774', '1 032'],
    correctIndex: 1,
    explanation: 'جمع الفتيان 3 مرات 258، أي 774 قارورة، والفرق عن 258 هو 516 قارورة.',
  ),
];

const _lesson29Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l29-p51-h1',
    pdfPage: 51,
    rect: PageRect(left: 0.66, top: 0.27, width: 0.28, height: 0.27),
    type: LessonInteractionType.numeric,
    title: 'كم بيضة تلزم لإعداد 3 كعكات إذا كانت كل كعكة تحتاج 3 بيضات؟',
    options: ['6', '9', '12', '15'],
    correctIndex: 1,
    explanation: '3 كعكات × 3 بيضات = 9 بيضات.',
  ),
  LessonHotspot(
    id: 'l29-p51-h2',
    pdfPage: 51,
    rect: PageRect(left: 0.36, top: 0.27, width: 0.28, height: 0.27),
    type: LessonInteractionType.numeric,
    title: 'ما ثمن 5 قصص إذا كان ثمن القصة الواحدة 7 دراهم؟',
    options: ['28', '30', '35', '42'],
    correctIndex: 2,
    explanation: '5 × 7 = 35 درهما.',
  ),
  LessonHotspot(
    id: 'l29-p51-h3',
    pdfPage: 51,
    rect: PageRect(left: 0.07, top: 0.27, width: 0.28, height: 0.27),
    type: LessonInteractionType.numeric,
    title: 'كم لترا تستهلك السيارة في 100 كيلومتر وفق المعطى في الصفحة؟',
    options: ['5 لترات', '10 لترات', '15 لترا', '20 لترا'],
    correctIndex: 1,
    explanation: 'تستهلك السيارة لترا واحدا لكل 10 كيلومترات، لذلك في 100 كيلومتر تستهلك 10 لترات.',
  ),
];

const _lesson30Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l30-p53-h1',
    pdfPage: 53,
    rect: PageRect(left: 0.66, top: 0.27, width: 0.28, height: 0.24),
    type: LessonInteractionType.numeric,
    title: 'ما ثمن 6 بيضات إذا كان ثمن البيضة درهمين؟',
    options: ['8', '10', '12', '14'],
    correctIndex: 2,
    explanation: '6 × 2 = 12 درهما.',
  ),
  LessonHotspot(
    id: 'l30-p53-h2',
    pdfPage: 53,
    rect: PageRect(left: 0.36, top: 0.27, width: 0.28, height: 0.24),
    type: LessonInteractionType.numeric,
    title: 'كم كيلوغراما من البرتقال تستهلك الأسرة خلال 7 أيام إذا استهلكت 2 كغ يوميا؟',
    options: ['7 كغ', '9 كغ', '12 كغ', '14 كغ'],
    correctIndex: 3,
    explanation: '2 × 7 = 14 كغ.',
  ),
  LessonHotspot(
    id: 'l30-p53-h3',
    pdfPage: 53,
    rect: PageRect(left: 0.06, top: 0.28, width: 0.28, height: 0.24),
    type: LessonInteractionType.numeric,
    title: 'ما ثمن 4 أقلام إذا كان ثمن القلم الواحد 6 دراهم؟',
    options: ['18', '20', '24', '30'],
    correctIndex: 2,
    explanation: '4 × 6 = 24 درهما.',
  ),
];

const _lesson31Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l31-p55-h1',
    pdfPage: 55,
    rect: PageRect(left: 0.06, top: 0.20, width: 0.88, height: 0.30),
    type: LessonInteractionType.numeric,
    title: 'ما ثمن 4 مقلمات إذا كان ثمن الواحدة 12 درهما؟',
    options: ['36', '48', '50', '60'],
    correctIndex: 1,
    explanation: '4 × 12 = 48 درهما.',
  ),
  LessonHotspot(
    id: 'l31-p55-h2',
    pdfPage: 55,
    rect: PageRect(left: 0.05, top: 0.55, width: 0.90, height: 0.36),
    type: LessonInteractionType.numeric,
    title: 'كم يوما تحتاج ريم لتوفير 45 درهما إذا وفرت 9 دراهم يوميا؟',
    options: ['4 أيام', '5 أيام', '6 أيام', '9 أيام'],
    correctIndex: 1,
    explanation: '45 ÷ 9 = 5 أيام.',
  ),
];

const _lesson32Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l32-p57-h1',
    pdfPage: 57,
    rect: PageRect(left: 0.05, top: 0.22, width: 0.90, height: 0.34),
    type: LessonInteractionType.numeric,
    title: 'بكم يزيد عمر أمجد عن عمر سارة في المسألة الأولى؟',
    options: ['5 سنوات', '7 سنوات', '9 سنوات', '12 سنة'],
    correctIndex: 2,
    explanation: 'عمر ياسين 7 سنوات، وهو أكبر من سارة بـ4 سنوات، إذن سارة 3 سنوات. وهو أصغر من أمجد بـ5 سنوات، إذن أمجد 12 سنة. الفرق بين أمجد وسارة 9 سنوات.',
  ),
  LessonHotspot(
    id: 'l32-p57-h2',
    pdfPage: 57,
    rect: PageRect(left: 0.08, top: 0.62, width: 0.35, height: 0.28),
    type: LessonInteractionType.tapHotspot,
    title: 'اضغط على منطقة تمثيل المسألة الثانية على نموذج الأشرطة.',
    options: ['نموذج الأشرطة', 'نص المسألة', 'منطقة الإجابة', 'عنوان الدرس'],
    correctIndex: 0,
    explanation: 'المسألة الثانية تطلب تمثيل المعطيات على نموذج الأشرطة قبل كتابة المساواة والحل.',
  ),
];

const _lesson33Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l33-p61-h1',
    pdfPage: 61,
    rect: PageRect(left: 0.05, top: 0.20, width: 0.90, height: 0.24),
    type: LessonInteractionType.numeric,
    title: 'ما محيط ملعب طوله 38 م وعرضه 20 م؟',
    options: ['96 م', '116 م', '120 م', '140 م'],
    correctIndex: 1,
    explanation: '38 + 20 + 38 + 20 = 116 م.',
  ),
  LessonHotspot(
    id: 'l33-p61-h2',
    pdfPage: 61,
    rect: PageRect(left: 0.05, top: 0.45, width: 0.90, height: 0.18),
    type: LessonInteractionType.numeric,
    title: 'ما محيط الحديقة التي طولها 120 م وعرضها 80 م؟',
    options: ['200 م', '320 م', '400 م', '480 م'],
    correctIndex: 2,
    explanation: '120 + 80 + 120 + 80 = 400 م.',
  ),
  LessonHotspot(
    id: 'l33-p61-h3',
    pdfPage: 61,
    rect: PageRect(left: 0.54, top: 0.65, width: 0.40, height: 0.28),
    type: LessonInteractionType.numeric,
    title: 'ما محيط المربع الذي طول ضلعه 5 سم؟',
    options: ['10 سم', '15 سم', '20 سم', '25 سم'],
    correctIndex: 2,
    explanation: '4 × 5 = 20 سم.',
  ),
];

const _lesson34Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l34-p63-h1',
    pdfPage: 63,
    rect: PageRect(left: 0.05, top: 0.20, width: 0.90, height: 0.30),
    type: LessonInteractionType.numeric,
    title: 'ما مساحة الشكل A باستعمال الوحدة u؟',
    options: ['12 u', '14 u', '16 u', '18 u'],
    correctIndex: 1,
    explanation: 'الصفحة تعطي مساحة الشكل A وهي 14 وحدة مربعة u.',
  ),
  LessonHotspot(
    id: 'l34-p63-h2',
    pdfPage: 63,
    rect: PageRect(left: 0.52, top: 0.20, width: 0.42, height: 0.30),
    type: LessonInteractionType.numeric,
    title: 'ما مساحة الشكل B باستعمال الوحدة u؟',
    options: ['14 u', '16 u', '17 u', '18 u'],
    correctIndex: 2,
    explanation: 'بعد عد الوحدات المربعة الملوّنة في الشكل B نجد 17 وحدة مربعة.',
  ),
  LessonHotspot(
    id: 'l34-p63-h3',
    pdfPage: 63,
    rect: PageRect(left: 0.06, top: 0.58, width: 0.88, height: 0.34),
    type: LessonInteractionType.multipleChoice,
    title: 'أي مساحة أكبر في النشاط الثالث؟',
    options: ['A', 'B', 'C', 'D'],
    correctIndex: 1,
    explanation: 'في النشاط الثالث تُقاس المساحات بالوحدة u، والشكل B هو الأكبر بين الأشكال المعروضة.',
  ),
];

const _lesson35Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'l35-p65-h1',
    pdfPage: 65,
    rect: PageRect(left: 0.05, top: 0.20, width: 0.90, height: 0.30),
    type: LessonInteractionType.numeric,
    title: 'ما مساحة المستطيل B في النشاط الأول؟',
    options: ['4 cm²', '6 cm²', '8 cm²', '9 cm²'],
    correctIndex: 1,
    explanation: 'المستطيل B أبعاده 3 سم و2 سم، لذلك مساحته 3 × 2 = 6 cm².',
  ),
  LessonHotspot(
    id: 'l35-p65-h2',
    pdfPage: 65,
    rect: PageRect(left: 0.05, top: 0.50, width: 0.90, height: 0.22),
    type: LessonInteractionType.numeric,
    title: 'ما مساحة المربع B في النشاط الثاني؟',
    options: ['2 cm²', '4 cm²', '6 cm²', '8 cm²'],
    correctIndex: 1,
    explanation: 'ضلع المربع B يساوي 2 سم، لذلك 2 × 2 = 4 cm².',
  ),
  LessonHotspot(
    id: 'l35-p65-h3',
    pdfPage: 65,
    rect: PageRect(left: 0.05, top: 0.73, width: 0.90, height: 0.23),
    type: LessonInteractionType.numeric,
    title: 'ما مساحة المستطيل B في النشاط الثالث؟',
    options: ['8 cm²', '10 cm²', '12 cm²', '15 cm²'],
    correctIndex: 1,
    explanation: 'من شبكة الصفحة: عرض المستطيل 2 سم وارتفاعه 5 سم، لذلك مساحته 10 cm².',
  ),
];

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
    options: ['648', '842', '745', '97'],
    correctIndex: 0,
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
    options: ['560', '385', '945', '1 330'],
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
    correctIndex: 3,
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


/// Interactive adaptations of the official TaRL support sequence for grade 4.
/// The skills and session sequence come from the daily-activity guide; the
/// questions below are app-native practice items aligned to those stated skills.
const _supportLesson1Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'support-1-1',
    rect: PageRect(left: 0.06, top: 0.28, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما العدد الذي تمثله 3 عشرات و4 وحدات؟',
    options: ['34', '43', '30', '7'],
    correctIndex: 0,
    explanation: '3 عشرات = 30، ومع 4 وحدات يصبح العدد 34.',
  ),
  LessonHotspot(
    id: 'support-1-2',
    rect: PageRect(left: 0.06, top: 0.50, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'أكمل عائلة العدد 10: 6 + ؟ = 10',
    options: ['2', '3', '4', '5'],
    correctIndex: 2,
    explanation: 'العدد الذي يكمل 6 إلى 10 هو 4.',
  ),
  LessonHotspot(
    id: 'support-1-3',
    rect: PageRect(left: 0.06, top: 0.72, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما ناتج 12 + 5؟',
    options: ['15', '16', '17', '18'],
    correctIndex: 2,
    explanation: '12 + 5 = 17.',
  ),
];

const _supportLesson2Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'support-2-1',
    rect: PageRect(left: 0.06, top: 0.28, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما ناتج 27 + 8؟',
    options: ['33', '34', '35', '36'],
    correctIndex: 2,
    explanation: '27 + 8 = 35، مع احتفاظ بالعشرة.',
  ),
  LessonHotspot(
    id: 'support-2-2',
    rect: PageRect(left: 0.06, top: 0.50, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'فكك العدد 42.',
    options: ['40 + 2', '4 + 2', '40 + 20', '4 عشرات + 20'],
    correctIndex: 0,
    explanation: '42 = 40 + 2.',
  ),
  LessonHotspot(
    id: 'support-2-3',
    rect: PageRect(left: 0.06, top: 0.72, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'أكمل عائلة العدد 11: 7 + ؟ = 11',
    options: ['2', '3', '4', '5'],
    correctIndex: 2,
    explanation: '7 + 4 = 11.',
  ),
];

const _supportLesson3Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'support-3-1',
    rect: PageRect(left: 0.06, top: 0.28, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما العدد السابق للعدد 39؟',
    options: ['37', '38', '40', '41'],
    correctIndex: 1,
    explanation: 'السابق مباشرة لـ39 هو 38.',
  ),
  LessonHotspot(
    id: 'support-3-2',
    rect: PageRect(left: 0.06, top: 0.50, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما العدد اللاحق للعدد 27؟',
    options: ['26', '28', '29', '30'],
    correctIndex: 1,
    explanation: 'اللاحق مباشرة لـ27 هو 28.',
  ),
  LessonHotspot(
    id: 'support-3-3',
    rect: PageRect(left: 0.06, top: 0.72, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما ناتج 48 + 27؟',
    options: ['65', '75', '85', '95'],
    correctIndex: 1,
    explanation: '48 + 27 = 75.',
  ),
];

const _supportLesson4Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'support-4-1',
    rect: PageRect(left: 0.06, top: 0.28, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما ناتج 36 + 27؟',
    options: ['53', '63', '73', '83'],
    correctIndex: 1,
    explanation: '36 + 27 = 63.',
  ),
  LessonHotspot(
    id: 'support-4-2',
    rect: PageRect(left: 0.06, top: 0.50, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'أي كتابة تمثل العدد 58؟',
    options: ['50 + 8', '5 + 8', '50 + 80', '5 عشرات + 8 عشرات'],
    correctIndex: 0,
    explanation: '58 = 50 + 8.',
  ),
  LessonHotspot(
    id: 'support-4-3',
    rect: PageRect(left: 0.06, top: 0.72, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'لدى طفل 24 كرة وأضاف 15 كرة. كم أصبح لديه؟',
    options: ['29', '39', '49', '59'],
    correctIndex: 1,
    explanation: '24 + 15 = 39.',
  ),
];

const _supportLesson5Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'support-5-1',
    rect: PageRect(left: 0.06, top: 0.28, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'أي العددين أكبر؟',
    options: ['407', '470', '407 متساويان', 'لا يمكن المقارنة'],
    correctIndex: 1,
    explanation: '470 أكبر من 407.',
  ),
  LessonHotspot(
    id: 'support-5-2',
    rect: PageRect(left: 0.06, top: 0.50, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما ناتج 238 + 157؟',
    options: ['385', '395', '405', '415'],
    correctIndex: 1,
    explanation: '238 + 157 = 395.',
  ),
  LessonHotspot(
    id: 'support-5-3',
    rect: PageRect(left: 0.06, top: 0.72, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'اكتب 604 مفككًا.',
    options: ['600 + 4', '60 + 4', '600 + 40', '6 + 4'],
    correctIndex: 0,
    explanation: '604 = 600 + 4.',
  ),
];

const _supportLesson6Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'support-6-1',
    rect: PageRect(left: 0.06, top: 0.28, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما ناتج 326 + 189؟',
    options: ['505', '515', '525', '535'],
    correctIndex: 1,
    explanation: '326 + 189 = 515.',
  ),
  LessonHotspot(
    id: 'support-6-2',
    rect: PageRect(left: 0.06, top: 0.50, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'أي عدد هو الأكبر؟',
    options: ['405', '450', '405 متساويان', '400'],
    correctIndex: 1,
    explanation: '450 هو الأكبر.',
  ),
  LessonHotspot(
    id: 'support-6-3',
    rect: PageRect(left: 0.06, top: 0.72, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما ناتج 475 + 126؟',
    options: ['591', '601', '611', '621'],
    correctIndex: 1,
    explanation: '475 + 126 = 601.',
  ),
];

const _supportLesson7Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'support-7-1',
    rect: PageRect(left: 0.06, top: 0.28, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما ناتج 278 + 145؟',
    options: ['413', '423', '433', '443'],
    correctIndex: 1,
    explanation: '278 + 145 = 423.',
  ),
  LessonHotspot(
    id: 'support-7-2',
    rect: PageRect(left: 0.06, top: 0.50, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'رتب تصاعديًا: 305، 350، 305؟',
    options: ['305 ثم 305 ثم 350', '350 ثم 305 ثم 305', '305 ثم 350 ثم 305', 'لا يمكن'],
    correctIndex: 0,
    explanation: 'الأعداد المتساوية أولًا، ثم 350.',
  ),
  LessonHotspot(
    id: 'support-7-3',
    rect: PageRect(left: 0.06, top: 0.72, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'لدى القسم 245 قلمًا وأضاف 178. كم أصبح لديه؟',
    options: ['413', '423', '433', '443'],
    correctIndex: 1,
    explanation: '245 + 178 = 423.',
  ),
];

const _supportLesson8Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'support-8-1',
    rect: PageRect(left: 0.06, top: 0.28, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'اكتب 507 بالحروف.',
    options: ['خمسة وسبعون', 'خمسمائة وسبعة', 'خمسة آلاف وسبعة', 'خمسمائة وسبعون'],
    correctIndex: 1,
    explanation: '507 = خمسمائة وسبعة.',
  ),
  LessonHotspot(
    id: 'support-8-2',
    rect: PageRect(left: 0.06, top: 0.50, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما ناتج 506 + 287؟',
    options: ['783', '793', '803', '813'],
    correctIndex: 1,
    explanation: '506 + 287 = 793.',
  ),
  LessonHotspot(
    id: 'support-8-3',
    rect: PageRect(left: 0.06, top: 0.72, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'أي عملية جمع صحيحة؟',
    options: ['248 + 125 = 363', '248 + 125 = 373', '248 + 125 = 383', '248 + 125 = 393'],
    correctIndex: 1,
    explanation: '248 + 125 = 373.',
  ),
];

const _supportLesson9Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'support-9-1',
    rect: PageRect(left: 0.06, top: 0.28, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما ناتج 532 − 178؟',
    options: ['344', '354', '364', '374'],
    correctIndex: 1,
    explanation: '532 − 178 = 354.',
  ),
  LessonHotspot(
    id: 'support-9-2',
    rect: PageRect(left: 0.06, top: 0.50, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'أي عملية تتطلب مبادلة؟',
    options: ['45 − 12', '63 − 21', '72 − 38', '90 − 10'],
    correctIndex: 2,
    explanation: '72 − 38 يتطلب المبادلة لأن 2 لا تكفي لطرح 8.',
  ),
  LessonHotspot(
    id: 'support-9-3',
    rect: PageRect(left: 0.06, top: 0.72, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'لدى سارة 500 درهم وأنفقت 125. كم بقي؟',
    options: ['365', '375', '385', '395'],
    correctIndex: 1,
    explanation: '500 − 125 = 375.',
  ),
];

const _supportLesson10Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'support-10-1',
    rect: PageRect(left: 0.06, top: 0.28, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما ناتج 604 − 278؟',
    options: ['316', '326', '336', '346'],
    correctIndex: 1,
    explanation: '604 − 278 = 326.',
  ),
  LessonHotspot(
    id: 'support-10-2',
    rect: PageRect(left: 0.06, top: 0.50, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما ناتج 721 − 356؟',
    options: ['355', '365', '375', '385'],
    correctIndex: 1,
    explanation: '721 − 356 = 365.',
  ),
  LessonHotspot(
    id: 'support-10-3',
    rect: PageRect(left: 0.06, top: 0.72, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'لدى متجر 800 قلم وباع 245. كم بقي؟',
    options: ['545', '555', '565', '575'],
    correctIndex: 1,
    explanation: '800 − 245 = 555.',
  ),
];

const _supportLesson11Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'support-11-1',
    rect: PageRect(left: 0.06, top: 0.28, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما ناتج 900 − 467؟',
    options: ['423', '433', '443', '453'],
    correctIndex: 1,
    explanation: '900 − 467 = 433.',
  ),
  LessonHotspot(
    id: 'support-11-2',
    rect: PageRect(left: 0.06, top: 0.50, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما ناتج 603 − 289؟',
    options: ['304', '314', '324', '334'],
    correctIndex: 1,
    explanation: '603 − 289 = 314.',
  ),
  LessonHotspot(
    id: 'support-11-3',
    rect: PageRect(left: 0.06, top: 0.72, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'لدى القسم 725 بطاقة واستعمل 368. كم بقي؟',
    options: ['347', '357', '367', '377'],
    correctIndex: 1,
    explanation: '725 − 368 = 357.',
  ),
];

const _supportLesson12Hotspots = <LessonHotspot>[
  LessonHotspot(
    id: 'support-12-1',
    rect: PageRect(left: 0.06, top: 0.28, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'ما ناتج 814 − 276؟',
    options: ['528', '538', '548', '558'],
    correctIndex: 1,
    explanation: '814 − 276 = 538.',
  ),
  LessonHotspot(
    id: 'support-12-2',
    rect: PageRect(left: 0.06, top: 0.50, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'أي عدد أصغر؟',
    options: ['392', '329', '923', '932'],
    correctIndex: 1,
    explanation: '329 هو الأصغر.',
  ),
  LessonHotspot(
    id: 'support-12-3',
    rect: PageRect(left: 0.06, top: 0.72, width: 0.88, height: 0.18),
    type: LessonInteractionType.multipleChoice,
    title: 'كان لدى تاجر 650 درهمًا ودفع 285. كم بقي؟',
    options: ['355', '365', '375', '385'],
    correctIndex: 1,
    explanation: '650 − 285 = 365.',
  ),
];

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

