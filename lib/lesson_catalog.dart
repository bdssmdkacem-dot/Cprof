class LessonCatalogEntry {
  final int number;
  final String title;
  const LessonCatalogEntry(this.number, this.title);
}

class SubjectCatalog {
  final String name;
  final int lessonCount;
  final List<LessonCatalogEntry> lessons;
  final String interactionGuide;
  const SubjectCatalog({
    required this.name,
    required this.lessonCount,
    required this.lessons,
    required this.interactionGuide,
  });
}

const _arabicTitles = <String>[
  'القراءة والفهم','التعبير الشفهي','التعبير الكتابي','التراكيب','الصرف والتحويل',
  'الإملاء','الخط','الدعم والتقويم',
];
const _frenchTitles = <String>[
  'Lecture','Communication','Production orale','Production écrite',
  'Grammaire','Conjugaison','Lexique','Orthographe',
];

List<LessonCatalogEntry> _generatedLessons(int count, List<String> patterns) =>
    List.generate(count, (i) => LessonCatalogEntry(i + 1, '${patterns[i % patterns.length]} — الدرس ${i + 1}'));

List<LessonCatalogEntry> _namedLessons(List<String> titles, int count) =>
    List.generate(count, (i) => LessonCatalogEntry(i + 1, i < titles.length ? titles[i] : 'الدرس ${i + 1}'));

const mathLessonTitles = <String>[
  'الدعم المكثف — الحصة 1: الأعداد من 0 إلى 50 والجمع',
  'الدعم المكثف — الحصة 2: الأعداد من 0 إلى 99 والجمع باحتفاظ',
  'الدعم المكثف — الحصة 3: الأعداد من 0 إلى 99 والجمع باحتفاظ',
  'الدعم المكثف — الحصة 4: مراجعة وتوليف ورائز اللبنة 1',
  'الدعم المكثف — الحصة 5: الأعداد من 0 إلى 999 والجمع باحتفاظ',
  'الدعم المكثف — الحصة 6: الأعداد من 0 إلى 999 والجمع باحتفاظ',
  'الدعم المكثف — الحصة 7: الأعداد من 0 إلى 999 والجمع باحتفاظ',
  'الدعم المكثف — الحصة 8: مراجعة وتحقق اللبنة 2',
  'الدعم المكثف — الحصة 9: الأعداد من 0 إلى 999 والطرح بالمبادلة',
  'الدعم المكثف — الحصة 10: الأعداد من 0 إلى 999 والطرح بالمبادلة',
  'الدعم المكثف — الحصة 11: الأعداد من 0 إلى 999 والطرح بالمبادلة',
  'الدعم المكثف — الحصة 12: الأعداد من 0 إلى 999 والطرح بالمبادلة',
  'قراءة بيانات بالأعمدة (1)',
  'قراءة بيانات بالأعمدة (2)',
  'قراءة بيانات بالأعمدة (3)',
  'حل المسائل (البحث عن الكل أو الجزء) (4)',
  'قراءة وكتابة الكسور العشرية',
  'تفكيك كسور عشرية',
  'الكسور العشرية المتكافئة',
  'حل المسائل (توليف)',
  'التوازي والتعامد',
  'خاصيات المضلعات الرباعية (1)',
  'خاصيات المضلعات الرباعية (2)',
  'حل المسائل (وضعيات المقارنة) (1)',
  'قواسم عدد',
  'مضاعفات عدد',
  'المضاعفات والقواسم المشتركة لعددين',
  'حل المسائل (وضعيات المقارنة) (2)',
  'التناسبية (1)',
  'التناسبية (2)',
  'التناسبية (3)',
  'حل المسائل (وضعيات المقارنة) (3)',
  'حساب محيطي المربع والمستطيل',
  'مقارنة مساحتين',
  'حساب مساحتي المربع والمستطيل',
];

final subjectCatalogs = <String, SubjectCatalog>{
  'اللغة العربية': SubjectCatalog(name: 'اللغة العربية', lessonCount: 71, lessons: _generatedLessons(71, _arabicTitles), interactionGuide: 'اقرأ الصفحة الأصلية، حدّد الفكرة أو القاعدة، ثم أجب عن النشاط المرتبط بالصفحة.'),
  'اللغة الفرنسية': SubjectCatalog(name: 'اللغة الفرنسية', lessonCount: 67, lessons: _generatedLessons(67, _frenchTitles), interactionGuide: 'Observe la page originale, repère la notion, puis réalise l’activité associée.'),
  'الرياضيات': SubjectCatalog(name: 'الرياضيات', lessonCount: 35, lessons: _namedLessons(mathLessonTitles, 35), interactionGuide: 'اقرأ الوضعية من الكتاب الأصلي، حدّد المعطيات، ثم نفّذ النشاط المرتبط بالصفحة.'),
  'النشاط العلمي': SubjectCatalog(name: 'النشاط العلمي', lessonCount: 27, lessons: _generatedLessons(27, const ['ألاحظ وأتساءل','أجرب وأكتشف','أفسر وأستنتج']), interactionGuide: 'لاحظ الوثيقة الأصلية، سجّل ملاحظتك، ثم تحقّق من الاستنتاج من خلال النشاط.'),
  'التربية الإسلامية': SubjectCatalog(name: 'التربية الإسلامية', lessonCount: 25, lessons: _generatedLessons(25, const ['أقرأ وأفهم','أتدبر','أقتدي وأطبق']), interactionGuide: 'اقرأ النص أو الوثيقة الأصلية، استخرج القيمة أو الحكم، ثم أجب عن نشاط الفهم.'),
  'الاجتماعيات': SubjectCatalog(name: 'الاجتماعيات', lessonCount: 19, lessons: _generatedLessons(19, const ['ألاحظ الوثيقة','أحدد وأرتب','أفسر وأستنتج']), interactionGuide: 'حلّل الوثيقة أو الخريطة الأصلية، حدّد المعلومات الأساسية، ثم أنجز النشاط.'),
  'اللغة الأمازيغية': SubjectCatalog(name: 'اللغة الأمازيغية', lessonCount: 21, lessons: _generatedLessons(21, const ['ⵜⴰⵔⴰ ⵜⴰⵎⵣⵡⴰⵔⵜ','ⵙⵙⵏⵖ','ⵙⵙⵉⵡⵍ']), interactionGuide: 'ⵣⵔ ⵜⴰⵙⵏⴰ ⵏ ⵓⵙⵙⵍⵎⴷ، ⵙⵙⵏ ⵜⵉⵏⵎⵍ، ⵎⴰⵣⵉⵖ ⵙ ⵓⵙⵏⵎⵎⵔ.'),
};
