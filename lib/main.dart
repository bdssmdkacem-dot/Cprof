import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import 'package:url_launcher/url_launcher.dart';
import 'lesson_catalog.dart';
import 'math_lesson_map.dart';

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

  int get lessonCount => subjectCatalogs[subject.title]?.lessonCount ?? 0;

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
                        'البرنامج المتاح على TelmidTICE: $lessonCount درساً',
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
                lessonCount,
                (index) {
                  final lesson = subjectCatalogs[subject.title]!.lessons[index];
                  final lessonNumber = lesson.number;
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(child: Text(lessonNumber.toString())),
                      title: Text(lesson.title),
                      subtitle: const Text('الكتاب الأصلي • تصفح الصفحة • شرح تفاعلي • نشاط'),
                      trailing: const Icon(Icons.arrow_back_ios_new, size: 18),
                      onTap: () {
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
                  );
                },
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
  ];

  // The official TelmidTICE catalogue currently lists 35 mathematics lessons
  // for grade 4. Page mappings below are partial and apply only to lessons
  // whose pages are present in the repository PDF; lessons 1–12 remain pending.
  // Values are PDF page numbers (1-based), not printed textbook page numbers.
  static const mathLessonPdfPages = <int, int>{
    13: 6, 14: 8, 15: 10, 16: 12,
    17: 16, 18: 17, 19: 19, 20: 21,
    21: 31, 22: 33, 23: 35, 24: 37,
    25: 41, 26: 43, 27: 45, 28: 47,
    29: 51, 30: 53, 31: 55, 32: 57,
    33: 61, 34: 63, 35: 65,
  };

  static const mathLessonPrintedPages = <int, int>{
    13: 38, 14: 40, 15: 42, 16: 44,
    17: 48, 18: 50, 19: 52, 20: 54,
    21: 64, 22: 66, 23: 68, 24: 70,
    25: 74, 26: 76, 27: 78, 28: 80,
    29: 84, 30: 86, 31: 88, 32: 90,
    33: 94, 34: 96, 35: 98,
  };

  String get title {
    final catalog = subjectCatalogs[subject.title];
    if (catalog != null && lessonNumber >= 1 && lessonNumber <= catalog.lessons.length) {
      return catalog.lessons[lessonNumber - 1].title;
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
  PdfController? _controller;
  int? selectedInteraction;
  String? feedback;
  int? _currentPdfPage;

  List<LessonInteraction> get interactions {
    if (widget.subject.title != 'الرياضيات') return const [];
    final mapping = mathLessonMapping(widget.lessonNumber);
    if (!mapping.sourceVerified) return const [];
    return [
      for (final hotspot in mapping.hotspots)
        LessonInteraction(
          title: hotspot.title,
          explanation: hotspot.explanation ?? '',
          answers: hotspot.options ?? const [],
          correctIndex: hotspot.correctIndex ?? -1,
          correction: hotspot.explanation ?? '',
        ),
    ];
  }

  @override
  void initState() {
    super.initState();
    if (widget.initialPage != null) {
      _currentPdfPage = widget.initialPage;
      _controller = PdfController(
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

  Future<void> _openInteraction(int index) async {
    if (index < 0 || index >= interactions.length) return;
    final item = interactions[index];

    setState(() {
      selectedInteraction = index;
      feedback = null;
    });

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (_) {
        var selectedAnswer = -1;
        String? localFeedback;

        return StatefulBuilder(
          builder: (context, setSheetState) {
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  16,
                  8,
                  16,
                  16 + MediaQuery.of(context).viewInsets.bottom,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        item.title,
                        style: const TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        item.explanation,
                        style: const TextStyle(fontSize: 17),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'جرب بنفسك',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ...List.generate(
                        item.answers.length,
                        (answerIndex) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: OutlinedButton(
                            onPressed: () {
                              setSheetState(() {
                                selectedAnswer = answerIndex;
                                localFeedback = answerIndex == item.correctIndex
                                    ? '✓ أحسنت. ${item.correction}'
                                    : 'لنصححها معًا. ${item.correction}';
                              });
                            },
                            child: Text(item.answers[answerIndex]),
                          ),
                        ),
                      ),
                      if (selectedAnswer >= 0 && localFeedback != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          localFeedback!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _hotspot({
    required int index,
    required double left,
    required double top,
    required double width,
    required double height,
  }) {
    final selected = selectedInteraction == index;
    return Positioned(
      left: left,
      top: top,
      width: width,
      height: height,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => _openInteraction(index),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: selected
                ? Theme.of(context).colorScheme.primary.withOpacity(0.10)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: selected
                ? Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2,
                  )
                : null,
          ),
        ),
      ),
    );
  }

  Widget _buildPendingSourceState() {
    final mapping = widget.subject.title == 'الرياضيات'
        ? mathLessonMapping(widget.lessonNumber)
        : null;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.menu_book_outlined, size: 52),
            const SizedBox(height: 14),
            Text(
              'الدرس ${widget.lessonNumber}: ${widget.lessonTitle}',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              mapping?.pdfPage == null
                  ? 'صفحة الكتاب الأصلية غير مرتبطة بعد. لن نضيف سؤالًا أو hotspot بالتخمين.'
                  : 'الصفحة مرتبطة للتنقل فقط، لكنها لم تُعتمد كمصدر رسمي بعد. لن نضيف سؤالًا أو hotspot قبل التحقق.',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final items = interactions;
    final mapping = mathLessonMapping(widget.lessonNumber);

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
        body: items.isEmpty
            ? _buildPendingSourceState()
            : Column(
                children: [
                  Expanded(
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      margin: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          final w = constraints.maxWidth;
                          final h = constraints.maxHeight;
                          return Stack(
                            fit: StackFit.expand,
                            children: [
                              if (_controller != null)
                                PdfView(
                                  controller: _controller!,
                                  onPageChanged: (page) {
                                    if (mounted) {
                                      setState(() => _currentPdfPage = page);
                                    }
                                  },
                                  builders: PdfViewBuilders<DefaultBuilderOptions>(
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
                                )
                              else
                                const Center(
                                  child: Text('لا توجد صفحة كتاب مرتبطة بهذا الدرس.'),
                                ),

                              // مناطق لمس شفافة فوق الصفحة الأصلية.
                              // لا نغطي النص ولا نعيد تصميم الكتاب؛ عند الاختيار فقط
                              // يظهر إطار خفيف، ثم يفتح شرح العنصر.
                              if (_currentPdfPage == mapping.pdfPage) ...[
                                for (var i = 0; i < mapping.hotspots.length; i++)
                                  _hotspot(
                                    index: i,
                                    left: mapping.hotspots[i].rect.left * w,
                                    top: mapping.hotspots[i].rect.top * h,
                                    width: mapping.hotspots[i].rect.width * w,
                                    height: mapping.hotspots[i].rect.height * h,
                                  ),
                              ],

                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  SafeArea(
                    top: false,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 4, 10, 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: _controller == null
                                  ? null
                                  : () => _controller!.previousPage(
                                        duration: const Duration(milliseconds: 250),
                                        curve: Curves.easeOut,
                                      ),
                              icon: const Icon(Icons.chevron_right),
                              label: const Text('السابق'),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: _controller == null
                                  ? null
                                  : () => _controller!.nextPage(
                                        duration: const Duration(milliseconds: 250),
                                        curve: Curves.easeOut,
                                      ),
                              icon: const Icon(Icons.chevron_left),
                              label: const Text('التالي'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 82,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      separatorBuilder: (_, __) => const SizedBox(width: 8),
                      itemBuilder: (context, index) {
                        return ActionChip(
                          avatar: CircleAvatar(
                            child: Text('${index + 1}'),
                          ),
                          label: Text(items[index].title),
                          onPressed: () => _openInteraction(index),
                        );
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
