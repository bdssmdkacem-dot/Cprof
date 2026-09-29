import 'package:flutter/material.dart';
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
  Subject('التربية الفنية', 'ملاحظة • إبداع • تعبير فني', Icons.palette_outlined),
  Subject('التربية البدنية', 'حركة • ألعاب • صحة وسلامة', Icons.sports_soccer_outlined),
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
                    subtitle: const Text('صفحات الكتاب • شرح تفاعلي • تمارين'),
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
                  title: const Text('صفحات الكتاب'),
                  subtitle: const Text('ستظهر هنا صفحات الكتاب المرتبطة بهذا الدرس'),
                  trailing: const Icon(Icons.arrow_back_ios_new),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => BookPage(subject: subject)),
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
                        'بعد ربط صفحات الكتاب، يستطيع التلميذ الضغط على النص أو الصورة أو التمرين للحصول على شرح مناسب لمستواه.',
                      ),
                      const SizedBox(height: 14),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.volume_up),
                            label: const Text('استمع'),
                          ),
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.quiz_outlined),
                            label: const Text('اختبرني'),
                          ),
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.question_answer_outlined),
                            label: const Text('اسأل'),
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

class _Hotspot extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const _Hotspot({required this.label, required this.onTap});
  @override
  Widget build(BuildContext context) => Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.primary, width: 2),
              borderRadius: BorderRadius.circular(16),
            ),
            alignment: Alignment.center,
            child: Text(label, style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold)),
          ),
        ),
      );
}

class _ExplanationPanel extends StatelessWidget {
  final String subject;
  final String title;
  const _ExplanationPanel({required this.subject, required this.title});
  @override
  Widget build(BuildContext context) => Card(
        margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('🤖 $subject — $title', style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text('سيظهر هنا شرح الذكاء الاصطناعي المعتمد على محتوى الكتاب وسياق الدرس وبمستوى مناسب للمتعلم.'),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.volume_up), label: const Text('استمع')),
                  OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.help_outline), label: const Text('اختبرني')),
                  OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.lightbulb_outline), label: const Text('مثال')),
                  OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.question_answer_outlined), label: const Text('اسأل')),
                ],
              ),
            ],
          ),
        ),
      );
}
