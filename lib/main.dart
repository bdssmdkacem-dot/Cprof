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

class BookPage extends StatefulWidget {
  final Subject subject;
  const BookPage({required this.subject, super.key});
  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  String? selected;

  @override
  Widget build(BuildContext context) => Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(title: Text(widget.subject.title)),
          body: Column(
            children: [
              Expanded(
                child: InteractiveViewer(
                  minScale: .7,
                  maxScale: 3,
                  child: Center(
                    child: AspectRatio(
                      aspectRatio: .707,
                      child: Card(
                        margin: const EdgeInsets.all(16),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(28),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(widget.subject.title, style: const TextStyle(fontSize: 27, fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 24),
                                  const Text('صفحة تفاعلية تجريبية', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 14),
                                  const Text('ستُستبدل هذه الصفحة بصفحة الكتاب المرخصة. كل نص أو صورة أو تمرين يمكن أن يصبح منطقة قابلة للضغط.', style: TextStyle(fontSize: 17)),
                                  const SizedBox(height: 30),
                                  Text(widget.subject.title == 'الرياضيات' ? '24 ÷ 6 = 4' : 'اضغط هنا للتجربة', textAlign: TextAlign.center, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 120, right: 20, left: 20, height: 88,
                              child: _Hotspot(label: 'الشرح / النشاط', onTap: () => setState(() => selected = 'الشرح / النشاط')),
                            ),
                            Positioned(
                              top: 270, right: 25, left: 25, height: 90,
                              child: _Hotspot(
                                label: widget.subject.title == 'الرياضيات' ? '24 ÷ 6 = 4' : 'عنصر من الصفحة',
                                onTap: () => setState(() => selected = widget.subject.title == 'الرياضيات' ? '24 ÷ 6 = 4' : 'عنصر من الصفحة'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              if (selected != null) _ExplanationPanel(subject: widget.subject.title, title: selected!),
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
