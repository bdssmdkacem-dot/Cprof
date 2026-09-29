import 'package:flutter/material.dart';

void main() => runApp(const CprofApp());

class CprofApp extends StatelessWidget {
  const CprofApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cprof',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: const Color(0xFF0F766E)),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('Cprof — الكتاب التفاعلي')),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text('مرحباً 👋', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('تعلم من الكتاب، واضغط على أي جزء لشرحِه بطريقة مبسطة.'),
            const SizedBox(height: 24),
            Card(
              child: ListTile(
                leading: const CircleAvatar(child: Icon(Icons.calculate_outlined)),
                title: const Text('الرياضيات — المستوى الرابع'),
                subtitle: const Text('كتاب تفاعلي • الإصدار التجريبي'),
                trailing: const Icon(Icons.arrow_back_ios_new),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const BookPage())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookPage extends StatefulWidget {
  const BookPage({super.key});
  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  String? selected;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('الرياضيات — المستوى الرابع')),
        body: Column(
          children: [
            Expanded(
              child: InteractiveViewer(
                minScale: 0.7,
                maxScale: 3,
                child: Center(
                  child: AspectRatio(
                    aspectRatio: 0.707,
                    child: Card(
                      margin: const EdgeInsets.all(16),
                      child: Stack(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(28),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text('الرياضيات', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                                SizedBox(height: 24),
                                Text('نشاط رياضي', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                SizedBox(height: 16),
                                Text('اضغط على أحد العناصر في الصفحة لتجربة الشرح التفاعلي.', style: TextStyle(fontSize: 18)),
                                SizedBox(height: 28),
                                Text('24 ÷ 6 = 4', textAlign: TextAlign.center, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Positioned(top: 125, right: 20, left: 20, height: 80, child: _Hotspot(label: 'النشاط', onTap: () => setState(() => selected = 'النشاط'))),
                          Positioned(top: 270, right: 25, left: 25, height: 90, child: _Hotspot(label: '24 ÷ 6 = 4', onTap: () => setState(() => selected = '24 ÷ 6 = 4'))),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            if (selected != null) _ExplanationPanel(title: selected!),
          ],
        ),
      ),
    );
  }
}

class _Hotspot extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const _Hotspot({required this.label, required this.onTap});
  @override
  Widget build(BuildContext context) => Material(color: Colors.transparent, child: InkWell(onTap: onTap, borderRadius: BorderRadius.circular(16), child: Container(decoration: BoxDecoration(border: Border.all(color: Theme.of(context).colorScheme.primary, width: 2), borderRadius: BorderRadius.circular(16)), alignment: Alignment.center, child: Text(label, style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold))));
}

class _ExplanationPanel extends StatelessWidget {
  final String title;
  const _ExplanationPanel({required this.title});
  @override
  Widget build(BuildContext context) => Card(margin: const EdgeInsets.fromLTRB(12, 0, 12, 12), child: Padding(padding: const EdgeInsets.all(16), child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [Text('🤖 شرح: $title', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), const SizedBox(height: 8), const Text('هذه نسخة تجريبية. هنا سيظهر لاحقًا شرح الذكاء الاصطناعي المعتمد على محتوى الكتاب وسياق الدرس.'), const SizedBox(height: 12), Wrap(spacing: 8, children: [OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.volume_up), label: const Text('استمع')), OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.help_outline), label: const Text('اختبرني')), OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.lightbulb_outline), label: const Text('مثال'))])])));
}
