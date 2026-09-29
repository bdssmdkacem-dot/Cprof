import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const CprofApp());

class Subject {
  final String title;
  final String subtitle;
  final IconData icon;
  const Subject(this.title, this.subtitle, this.icon);
}

const subjects = [
  Subject('اللغة العربية', 'قراءة • تعبير • قواعد • صرف', Icons.menu_book),
  Subject('اللغة الفرنسية', 'Lecture • langue • communication', Icons.translate),
  Subject('الرياضيات', 'الأعداد • العمليات • الهندسة • القياس', Icons.calculate_outlined),
  Subject('النشاط العلمي', 'الكائنات • الجسم • البيئة • المادة', Icons.science_outlined),
  Subject('التربية الإسلامية', 'القرآن • الحديث • السيرة • القيم', Icons.auto_stories_outlined),
  Subject('الاجتماعيات', 'التاريخ • الجغرافيا • التربية المدنية', Icons.public_outlined),
  Subject('اللغة الأمازيغية', 'ⵜⴰⵎⴰⵣⵉⵖⵜ • قراءة • تواصل', Icons.language_outlined),
];

class CprofApp extends StatelessWidget {
  const CprofApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cprof',
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: const Color(0xFF0F766E)),
        home: const HomePage(),
      );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) => Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(title: const Text('Cprof — الكتاب التفاعلي'), centerTitle: true),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text('المستوى الرابع ابتدائي', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text('اختر المادة، ثم اضغط على أي جزء من الكتاب لشرحِه والتفاعل معه.'),
              const SizedBox(height: 16),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.verified_outlined),
                  title: const Text('مصادر المستوى الرابع الرسمية'),
                  subtitle: const Text('دروس وموارد السنة الرابعة على TelmidTICE'),
                  trailing: const Icon(Icons.open_in_new),
                  onTap: () => _openOfficialResources(context),
                ),
              ),
              const SizedBox(height: 8),
              ...subjects.map((s) => Card(
                    child: ListTile(
                      leading: CircleAvatar(child: Icon(s.icon)),
                      title: Text(s.title, style: const TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(s.subtitle),
                      trailing: const Icon(Icons.arrow_back_ios_new, size: 18),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => BookPage(subject: s)),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      );
}

Future<void> _openOfficialResources(BuildContext context) async {
  final uri = Uri.parse('https://telmidtice.men.gov.ma/courses?category=67b5fffa7f28e1675db7d683&level=1');
  final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
  if (!ok && context.mounted) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('تعذر فتح منصة TelmidTICE')));
  }
}

class BookPage extends StatelessWidget {
  final Subject subject;
  const BookPage({required this.subject, super.key});

  static const lessonCounts = <String, int>{
    'الرياضيات': 40,
    'التربية الإسلامية': 25,
    'اللغة العربية': 71,
    'اللغة الفرنسية': 67,
    'النشاط العلمي': 27,
    'الاجتماعيات': 19,
    'اللغة الأمازيغية': 21,
  };

  @override
  Widget build(BuildContext context) => Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(title: Text(subject.title), centerTitle: true),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(subject.icon, size: 48),
                      const SizedBox(height: 10),
                      Text(subject.title, textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 6),
                      Text(subject.subtitle, textAlign: TextAlign.center),
                      const SizedBox(height: 10),
                      Text(
                        'البرنامج المتاح على TelmidTICE: ${lessonCounts[subject.title] ?? 0} درساً',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text('الدروس', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ...List.generate(
                lessonCounts[subject.title] ?? 0,
                (index) => Card(
                  child: ListTile(
                    leading: CircleAvatar(child: Text('${index + 1}')),
                    title: Text('الدرس ${index + 1}'),
                    subtitle: const Text('الكتاب الأصلي • تصفح الصفحات • شرح تفاعلي • تمارين'),
                    trailing: const Icon(Icons.arrow_back_ios_new, size: 18),
                    onTap: () {
                      final lessonNumber = index + 1;
                      if (subject.title == 'الرياضيات' &&
                          LessonPage.mathLessonPdfPages.containsKey(lessonNumber)) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => BookReaderPage(
                              subject: subject,
                              lessonTitle: LessonPage.mathLessons[lessonNumber - 1],
                              initialPage: LessonPage.mathLessonPdfPages[lessonNumber],
                              printedPage: LessonPage.mathLessonPrintedPages[lessonNumber],
                            ),
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => LessonPage(
                              subject: subject,
                              lessonNumber: lessonNumber,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

class LessonPage extends StatelessWidget {
  final Subject subject;
  final int lessonNumber;
  const LessonPage({required this.subject, required this.lessonNumber, super.key});

  static const mathLessons = [
    'الأعداد من 0 إلى 999 999 - قراءة وكتابة',
    'الأعداد من 0 إلى 999 999 - تفكيك وتركيب',
    'تقريب الأعداد إلى العشرة، إلى المئة',
    'حل المسائل (البحث عن الكل أو الجزء) (1)',
    'جمع الأعداد من 0 إلى 9 999',
    'طرح الأعداد من 0 إلى 9 999',
    'جمع وطرح الأعداد من 0 إلى 9 999',
    'حل المسائل (البحث عن الكل أو الجزء) (2)',
    'ضرب عددين من رقمين في عدد من رقمين',
    'ضرب عدد من ثلاثة أرقام في عدد من رقمين',
    'وضع وإنجاز عمليات ضرب',
    'حل المسائل (البحث عن الكل أو الجزء) (3)',
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
    'حل المسائل (القياس)',
    'قراءة وكتابة الكسور العشرية',
    'تمثيل وموضعة كسور عشرية',
    'تفكيك الأعداد الكسرية العشرية',
    'حل المسائل (توليف)',
  ];

  // Verified against the table of contents and the scanned pages in the PDF.
  // Values are PDF page numbers (1-based), not printed textbook page numbers.
  // The attached file does not contain printed pages 8–36, so lessons 1–12
  // intentionally have no direct page mapping yet.
  static const mathLessonPdfPages = <int, int>{
    13: 6, 14: 8, 15: 10, 16: 12,
    17: 16, 18: 17, 19: 19, 20: 21,
    21: 31, 22: 33, 23: 35, 24: 37,
    25: 41, 26: 43, 27: 45, 28: 47,
    29: 51, 30: 53, 31: 55, 32: 57,
    33: 61, 34: 63, 35: 65, 36: 67,
    37: 71, 38: 73, 39: 75, 40: 77,
  };

  static const mathLessonPrintedPages = <int, int>{
    13: 38, 14: 40, 15: 42, 16: 44,
    17: 48, 18: 50, 19: 52, 20: 54,
    21: 64, 22: 66, 23: 68, 24: 70,
    25: 74, 26: 76, 27: 78, 28: 80,
    29: 84, 30: 86, 31: 88, 32: 90,
    33: 94, 34: 96, 35: 98, 36: 100,
    37: 104, 38: 106, 39: 108, 40: 110,
  };

  String get title {
    if (subject.title == 'الرياضيات' && lessonNumber <= mathLessons.length) {
      return mathLessons[lessonNumber - 1];
    }
    return 'الدرس $lessonNumber';
  }

  @override
  Widget build(BuildContext context) => Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(title: Text('الدرس $lessonNumber — ${subject.title}')),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Card(
                child: ListTile(
                  leading: const Icon(Icons.menu_book_outlined),
                  title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    subject.title == 'الرياضيات' && mathLessonPdfPages.containsKey(lessonNumber)
                        ? 'كتاب الجيد • الصفحة المطبوعة ${mathLessonPrintedPages[lessonNumber]} • فتح مباشر'
                        : 'كتاب الجيد • هذه الصفحة غير موجودة في نسخة PDF المرفقة',
                  ),
                  trailing: const Icon(Icons.menu_book),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BookReaderPage(
                        subject: subject,
                        lessonTitle: title,
                        initialPage: subject.title == 'الرياضيات'
                            ? mathLessonPdfPages[lessonNumber]
                            : null,
                        printedPage: subject.title == 'الرياضيات'
                            ? mathLessonPrintedPages[lessonNumber]
                            : null,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('🤖 التعلم التفاعلي',
                          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Text(
                        subject.title == 'الرياضيات' && mathLessonPdfPages.containsKey(lessonNumber)
                            ? 'تم العثور على صفحة هذا الدرس في النسخة المرفقة، ويمكن فتحها مباشرة من بطاقة الكتاب.'
                            : 'النسخة المرفقة لا تحتوي على صفحات هذا الدرس بعد. يمكن فتح الكتاب يدويًا، أو إضافة النسخة الكاملة لاحقًا لإكمال الربط.',
                      ),
                      const SizedBox(height: 14),
                      FilledButton.icon(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => InteractivePage(
                              subject: subject,
                              lessonNumber: lessonNumber,
                              lessonTitle: title,
                              initialPage: subject.title == 'الرياضيات' ? mathLessonPdfPages[lessonNumber] : null,
                              printedPage: subject.title == 'الرياضيات' ? mathLessonPrintedPages[lessonNumber] : null,
                            ),
                          ),
                        ),
                        icon: const Icon(Icons.touch_app),
                        label: const Text('فتح النموذج التفاعلي'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

class BookReaderPage extends StatefulWidget {
  final Subject subject;
  final String lessonTitle;
  final int? initialPage;
  final int? printedPage;

  const BookReaderPage({
    required this.subject,
    required this.lessonTitle,
    this.initialPage,
    this.printedPage,
    super.key,
  });

  @override
  State<BookReaderPage> createState() => _BookReaderPageState();
}

class _BookReaderPageState extends State<BookReaderPage> {
  late final PdfControllerPinch _controller;

  @override
  void initState() {
    super.initState();
    _controller = PdfControllerPinch(
      document: PdfDocument.openAsset('assets/books/math/jayd_math_grade4.pdf'),
      initialPage: widget.initialPage ?? 1,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.lessonTitle),
            centerTitle: true,
            bottom: widget.printedPage == null
                ? null
                : PreferredSize(
                    preferredSize: const Size.fromHeight(28),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text('صفحة الكتاب المطبوعة ${widget.printedPage}'),
                    ),
                  ),
          ),
          body: Column(
            children: [
              Expanded(
                child: PdfViewPinch(
                  controller: _controller,
                  builders: PdfViewPinchBuilders<DefaultBuilderOptions>(
                    options: const DefaultBuilderOptions(),
                    documentLoaderBuilder: (_) => const Center(child: CircularProgressIndicator()),
                    pageLoaderBuilder: (_) => const Center(child: CircularProgressIndicator()),
                    errorBuilder: (_, error) => Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'تعذر فتح كتاب الرياضيات. تأكد من وجود ملف PDF داخل assets/books/math/.\n$error',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 6, 10, 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () => _controller.previousPage(
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeOut,
                          ),
                          icon: const Icon(Icons.chevron_right),
                          label: const Text('الصفحة السابقة'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () => _controller.nextPage(
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeOut,
                          ),
                          icon: const Icon(Icons.chevron_left),
                          label: const Text('الصفحة التالية'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

class LessonInteraction {
  final String title;
  final String explanation;
  final List<String> answers;
  final int correctIndex;
  final String correction;

  const LessonInteraction({
    required this.title,
    required this.explanation,
    required this.answers,
    required this.correctIndex,
    required this.correction,
  });
}

class InteractivePage extends StatefulWidget {
  final Subject subject;
  final int lessonNumber;
  final String lessonTitle;
  final int? initialPage;
  final int? printedPage;

  const InteractivePage({
    required this.subject,
    required this.lessonNumber,
    required this.lessonTitle,
    this.initialPage,
    this.printedPage,
    super.key,
  });

  @override
  State<InteractivePage> createState() => _InteractivePageState();
}

class _InteractivePageState extends State<InteractivePage> {
  PdfControllerPinch? _controller;
  int? selectedInteraction;
  String? feedback;

  List<LessonInteraction> get interactions {
    if (widget.subject.title != 'الرياضيات') return const [];
    switch (widget.lessonNumber) {
      case 13:
        return const [
          LessonInteraction(
            title: 'عنوان المبيان',
            explanation:
                'العنوان المكتوب في الصفحة هو: «توزيع التلاميذ حسب هواياتهم». وهو يبين موضوع المبيان قبل قراءة الأعمدة.',
            answers: [
              'توزيع التلاميذ حسب هواياتهم',
              'عدد التلاميذ حسب أعمارهم',
              'توزيع التلاميذ حسب نقطهم',
            ],
            correctIndex: 0,
            correction:
                'العنوان الصحيح هو «توزيع التلاميذ حسب هواياتهم». نبدأ بقراءة العنوان حتى نعرف ماذا يمثل المبيان.',
          ),
          LessonInteraction(
            title: 'المحور العمودي',
            explanation:
                'في الصفحة يظهر المحور العمودي بعنوان «عدد التلاميذ». هذا المحور يخبرنا أن ارتفاع كل عمود يرتبط بعدد التلاميذ.',
            answers: [
              'عدد التلاميذ',
              'الهواية',
              'عنوان المبيان',
            ],
            correctIndex: 0,
            correction:
                'المحور العمودي يمثل «عدد التلاميذ»، أما الهوايات فتظهر على المحور الأفقي.',
          ),
          LessonInteraction(
            title: 'المحور الأفقي',
            explanation:
                'في الصفحة يظهر المحور الأفقي بعنوان «الهواية». وعلى هذا المحور توجد الهوايات التي يمثلها المبيان.',
            answers: [
              'الهواية',
              'عدد التلاميذ',
              'عدد الأعمدة فقط',
            ],
            correctIndex: 0,
            correction:
                'المحور الأفقي يمثل «الهواية». نقرأ عليه أسماء الهوايات ثم نرجع إلى ارتفاع العمود لمعرفة العدد.',
          ),
          LessonInteraction(
            title: 'ماذا تمثل الأعمدة الملونة؟',
            explanation:
                'السؤال الموجود في الصفحة يطلب تحديد معنى الأعمدة الملونة. وهي تمثل عدد التلاميذ حسب الهواية المفضلة.',
            answers: [
              'عدد التلاميذ حسب الهواية المفضلة',
              'أسماء الهوايات فقط',
              'المحور الأفقي',
            ],
            correctIndex: 0,
            correction:
                'الأعمدة الملونة تمثل عدد التلاميذ حسب الهواية المفضلة.',
          ),
          LessonInteraction(
            title: 'الهوايات الموجودة في المبيان',
            explanation:
                'الأسماء الظاهرة على المحور الأفقي في الصفحة هي: تربية القطط، الطبخ، الرسم، والقراءة.',
            answers: [
              'تربية القطط، الطبخ، الرسم، القراءة',
              'الرياضة، الموسيقى، السفر، الرسم',
              'الطبخ، الكتابة، السباحة، كرة القدم',
            ],
            correctIndex: 0,
            correction:
                'الهوايات التي تظهر في المبيان هي: تربية القطط، الطبخ، الرسم، والقراءة.',
          ),
        ];
      default:
        return const [];
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.initialPage != null) {
      _controller = PdfControllerPinch(
        document: PdfDocument.openAsset('assets/books/math/jayd_math_grade4.pdf'),
        initialPage: widget.initialPage!,
      );
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void chooseAnswer(int index) {
    final item = interactions[selectedInteraction!];
    setState(() {
      feedback = index == item.correctIndex
          ? '✓ أحسنت. ${item.correction}'
          : 'لنصححها معًا. ${item.correction}';
    });
  }

  Widget _buildHotspot(
    BuildContext context, {
    required Alignment alignment,
    required int index,
    required String label,
  }) {
    return Align(
      alignment: alignment,
      child: GestureDetector(
        onTap: () => setState(() {
          selectedInteraction = index;
          feedback = null;
        }),
        child: Container(
          width: 118,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.92),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Theme.of(context).colorScheme.primary,
              width: 2,
            ),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final hasPage = _controller != null;
    final items = interactions;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('التعلم على صفحة الكتاب'),
          centerTitle: true,
          bottom: widget.printedPage == null
              ? null
              : PreferredSize(
                  preferredSize: const Size.fromHeight(28),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text('صفحة الكتاب المطبوعة ${widget.printedPage}'),
                  ),
                ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(widget.lessonTitle,
                        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 6),
                    const Text(
                      'الصفحة الأصلية تبقى هي المرجع. اختر عنصرًا تعليميًا مرتبطًا بهذا الدرس لبدء الشرح والتدريب.',
                    ),
                  ],
                ),
              ),
            ),
            if (hasPage)
              Card(
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: 520,
                  child: Stack(
                    children: [
                      PdfViewPinch(
                        controller: _controller!,
                        builders: PdfViewPinchBuilders<DefaultBuilderOptions>(
                          options: const DefaultBuilderOptions(),
                          documentLoaderBuilder: (_) =>
                              const Center(child: CircularProgressIndicator()),
                          pageLoaderBuilder: (_) =>
                              const Center(child: CircularProgressIndicator()),
                          errorBuilder: (_, error) => Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                'تعذر فتح الصفحة الأصلية. $error',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (widget.lessonNumber == 13)
                        Positioned.fill(
                          child: IgnorePointer(
                            ignoring: selectedInteraction == null,
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                return Stack(
                                  children: [
                                    _buildHotspot(
                                      context,
                                      alignment: const Alignment(0.45, -0.35),
                                      index: 0,
                                      label: 'العنوان',
                                    ),
                                    _buildHotspot(
                                      context,
                                      alignment: const Alignment(-0.55, 0.15),
                                      index: 1,
                                      label: 'المحور العمودي',
                                    ),
                                    _buildHotspot(
                                      context,
                                      alignment: const Alignment(0.35, 0.65),
                                      index: 2,
                                      label: 'المحور الأفقي',
                                    ),
                                    _buildHotspot(
                                      context,
                                      alignment: const Alignment(0.05, 0.20),
                                      index: 3,
                                      label: 'الأعمدة',
                                    ),
                                    _buildHotspot(
                                      context,
                                      alignment: const Alignment(0.60, 0.55),
                                      index: 4,
                                      label: 'الهوايات',
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            const SizedBox(height: 8),
            if (items.isEmpty)
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    children: [
                      Icon(Icons.pending_actions, size: 42),
                      SizedBox(height: 8),
                      Text(
                        'التفاعل الدقيق لهذا الدرس يحتاج تحديد عناصر الصفحة الأصلية أولًا.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'لن نضع أسئلة أو أمثلة عامة مكان محتوى الكتاب.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )
            else ...[
              const Text('عناصر الدرس',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ...List.generate(items.length, (index) {
                final item = items[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(child: Text('${index + 1}')),
                    title: Text(item.title,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: const Text('شرح مبسط ثم سؤال قصير'),
                    trailing: const Icon(Icons.touch_app),
                    onTap: () => setState(() {
                      selectedInteraction = index;
                      feedback = null;
                    }),
                  ),
                );
              }),
              if (selectedInteraction != null) ...[
                const SizedBox(height: 8),
                Card(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(items[selectedInteraction!].title,
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        Text(items[selectedInteraction!].explanation,
                            style: const TextStyle(fontSize: 17)),
                        const SizedBox(height: 14),
                        const Text('جرب بنفسك',
                            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        ...List.generate(
                          items[selectedInteraction!].answers.length,
                          (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: OutlinedButton(
                              onPressed: () => chooseAnswer(index),
                              child: Text(items[selectedInteraction!].answers[index]),
                            ),
                          ),
                        ),
                        if (feedback != null) ...[
                          const SizedBox(height: 8),
                          Text(feedback!,
                              style: const TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ],
        ),
      ),
    );
  }
}
