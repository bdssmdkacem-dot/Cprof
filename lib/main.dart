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
    'الرياضيات': 35,
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
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => LessonPage(subject: subject, lessonNumber: index + 1),
                      ),
                    ),
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
    'الجمع والطرح والضرب (0 إلى 9 999)',
    'الرباعيات الاعتيادية',
    'الأعداد الصحيحة من 0 إلى 999 999',
    'تنظيم ومعالجة البيانات (1)',
    'التقنية الاعتيادية للجمع والطرح من 0 إلى 999 999',
    'قياس المساحات: المتر المربع',
    'الأعداد الكسرية (1)',
    'تنظيم ومعالجة البيانات (2)',
  ];

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
                  subtitle: const Text('من كتاب الجيد في الرياضيات • افتح صفحة الكتاب الأصلية'),
                  trailing: const Icon(Icons.menu_book),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BookReaderPage(subject: subject, lessonTitle: title),
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
                      const Text(
                        'عند توفر نسخة PDF مرخصة للكتاب، سنضع الصفحة الأصلية هنا ونحدد عليها مناطق النصوص والصور والتمارين.',
                      ),
                      const SizedBox(height: 14),
                      FilledButton.icon(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => InteractivePage(subject: subject, lessonTitle: title),
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
  const BookReaderPage({required this.subject, required this.lessonTitle, super.key});

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
          appBar: AppBar(title: Text(widget.lessonTitle), centerTitle: true),
          body: Column(
            children: [
              Expanded(
                child: PdfViewPinch(
                  controller: _controller,
                  builders: PdfViewPinchBuilders(
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
                  padding: const EdgeInsets.all(10),
                  child: FilledButton.icon(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => InteractivePage(
                          subject: widget.subject,
                          lessonTitle: widget.lessonTitle,
                        ),
                      ),
                    ),
                    icon: const Icon(Icons.touch_app),
                    label: const Text('تفاعل مع هذا الدرس'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

class InteractivePage extends StatefulWidget {
  final Subject subject;
  final String lessonTitle;
  const InteractivePage({required this.subject, required this.lessonTitle, super.key});

  @override
  State<InteractivePage> createState() => _InteractivePageState();
}

class _InteractivePageState extends State<InteractivePage> {
  int? selectedDigit;
  String? feedback;
  int quizIndex = 0;
  bool? quizCorrect;
  bool showAskAnswer = false;

  static const quizQuestions = [
    'ما قيمة الرقم 7 في العدد 523 741؟',
    'في أي منزلة يوجد الرقم 2 في العدد 523 741؟',
    'ما قيمة الرقم 5 في العدد 523 741؟',
    'أي رقم يوجد في منزلة الآلاف؟',
  ];

  static const digits = [5, 2, 3, 7, 4, 1];
  static const places = ['مئات الألوف', 'عشرات الألوف', 'آلاف', 'مئات', 'عشرات', 'آحاد'];
  static const values = [500000, 20000, 3000, 700, 40, 1];

  void selectDigit(int index) {
    setState(() {
      selectedDigit = index;
      feedback =
          'الرقم ${digits[index]} في منزلة ${places[index]}، وقيمته ${values[index]}.';
      showAskAnswer = false;
    });
  }

  Widget _answerButton(String label, bool correct) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: OutlinedButton(
          onPressed: () => answerQuiz(correct),
          child: Text(label),
        ),
      );

  void answerQuiz(bool correct) {
    setState(() {
      quizCorrect = correct;
      feedback = correct
          ? 'أحسنت! إجابتك صحيحة. حاول الآن تفسير السبب باستعمال جدول القيمة المكانية.'
          : 'لنراجع معًا: اختر الإجابة المرتبطة بالمنزلة أو القيمة، ثم أعد المحاولة.';
    });
  }

  void nextQuiz() {
    setState(() {
      quizIndex = (quizIndex + 1) % quizQuestions.length;
      quizCorrect = null;
      feedback = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isMath = widget.subject.title == 'الرياضيات';
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('صفحة تعليمية تفاعلية')),
        body: ListView(
          padding: const EdgeInsets.all(14),
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(widget.lessonTitle,
                        style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 6),
                    const Text('تعلم بالضغط: اختر أي عنصر لتحصل على شرح أو تدريب.'),
                  ],
                ),
              ),
            ),
            if (isMath) ...[
              const SizedBox(height: 10),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const Text('الأعداد من 0 إلى 999999',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      const Text('اضغط على أي رقم لمعرفة منزلته وقيمته.'),
                      const SizedBox(height: 14),
                      Wrap(
                        alignment: WrapAlignment.center,
                        children: List.generate(
                          digits.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(3),
                            child: ChoiceChip(
                              selected: selectedDigit == index,
                              label: Text('${digits[index]}',
                                  style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                              onSelected: (_) => selectDigit(index),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      if (feedback != null)
                        Text(feedback!, textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('جدول القيمة المكانية',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      Table(
                        border: TableBorder.all(color: Theme.of(context).colorScheme.outlineVariant),
                        children: [
                          TableRow(
                            children: List.generate(
                              places.length,
                              (i) => Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text(places[i], textAlign: TextAlign.center,
                                    style: const TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                          TableRow(
                            children: List.generate(
                              digits.length,
                              (i) => InkWell(
                                onTap: () => selectDigit(i),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Text('${digits[i]}', textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 22)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                child: selectedDigit == null
                    ? const Card(
                        key: ValueKey('no-selection'),
                        child: Padding(
                          padding: EdgeInsets.all(18),
                          child: Column(
                            children: [
                              Icon(Icons.touch_app, size: 38),
                              SizedBox(height: 8),
                              Text('اختر رقمًا لنُظهر منزلته وقيمته بصريًا خطوة بخطوة.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      )
                    : Card(
                        key: const ValueKey('selected-place'),
                        color: Theme.of(context).colorScheme.primaryContainer,
                        child: Padding(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            children: [
                              Text('الرقم ${digits[selectedDigit!]}',
                                  style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 4),
                              Text('منزلة ${places[selectedDigit!]}',
                                  style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 12),
                              Text(
                                '${digits[selectedDigit!]} × ${values[selectedDigit!] ~/ digits[selectedDigit!]} = ${values[selectedDigit!]}',
                                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'إذن قيمة الرقم ${digits[selectedDigit!]} هي ${values[selectedDigit!]}.',
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 18),
                              ),
                              const SizedBox(height: 12),
                              LinearProgressIndicator(
                                value: (selectedDigit! + 1) / digits.length,
                                minHeight: 10,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              const SizedBox(height: 6),
                              Text('المنزلة ${selectedDigit! + 1} من ${digits.length}'),
                            ],
                          ),
                        ),
                      ),
              ),
              const SizedBox(height: 10),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('تحدٍ سريع',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 6),
                      Text(quizQuestions[quizIndex],
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      if (quizIndex == 0) ...[
                        _answerButton('700', true),
                        _answerButton('70', false),
                        _answerButton('7', false),
                      ] else if (quizIndex == 1) ...[
                        _answerButton('عشرات الألوف', true),
                        _answerButton('آلاف', false),
                        _answerButton('مئات الألوف', false),
                      ] else if (quizIndex == 2) ...[
                        _answerButton('500 000', true),
                        _answerButton('50 000', false),
                        _answerButton('5 000', false),
                      ] else ...[
                        _answerButton('3', true),
                        _answerButton('7', false),
                        _answerButton('4', false),
                      ],
                      if (quizCorrect != null)
                        Text(
                          quizCorrect! ? '✓ ممتاز! فهمت العلاقة بين الرقم والمنزلة.' : 'جرّب مرة أخرى.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: quizCorrect!
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.error,
                          ),
                        ),
                      const SizedBox(height: 8),
                      OutlinedButton.icon(
                        onPressed: nextQuiz,
                        icon: const Icon(Icons.refresh),
                        label: const Text('سؤال آخر'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.lightbulb_outline),
                  title: const Text('مثال محلول'),
                  subtitle: const Text('523 741 = 500 000 + 20 000 + 3 000 + 700 + 40 + 1'),
                  onTap: () => setState(() => feedback =
                      'نفكك العدد حسب المنازل: 500000 + 20000 + 3000 + 700 + 40 + 1.'),
                ),
              ),
              const SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.quiz_outlined),
                  title: const Text('اختبر نفسك'),
                  subtitle: const Text('ما قيمة الرقم 7 في العدد 523 741؟'),
                  trailing: FilledButton(
                    onPressed: () => setState(() => feedback = 'الإجابة الصحيحة: 700، لأن 7 في منزلة المئات.'),
                    child: const Text('تحقق'),
                  ),
                ),
              ),
            ] else
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Text('هذه صفحة تفاعلية أولية. ستستخدم البنية نفسها لبقية المواد عند إدخال المحتوى المرخص.'),
                ),
              ),
            if (feedback != null)
              Card(
                margin: const EdgeInsets.only(top: 10, bottom: 20),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('🤖 شرح Cprof',
                          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Text(feedback!),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          OutlinedButton.icon(
                            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('الصوت سيُربط بمحرك النطق في المرحلة التالية.')),
                            ),
                            icon: const Icon(Icons.volume_up),
                            label: const Text('استمع'),
                          ),
                          OutlinedButton.icon(
                            onPressed: () => setState(() => showAskAnswer = !showAskAnswer),
                            icon: const Icon(Icons.question_answer_outlined),
                            label: const Text('اسأل Cprof'),
                          ),
                          if (showAskAnswer)
                            const Padding(
                              padding: EdgeInsets.only(top: 12),
                              child: Text(
                                'سؤال مقترح: لماذا أصبحت قيمة الرقم 7 هي 700؟ لأن الرقم 7 يوجد في منزلة المئات، وقيمة كل رقم تتغير حسب منزلته.',
                              ),
                            ),
                        ],
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
}
