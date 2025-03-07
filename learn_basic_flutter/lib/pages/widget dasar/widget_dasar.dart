import 'package:flutter/material.dart';

class WidgetDasar extends StatefulWidget {
  const WidgetDasar({super.key});

  @override
  State<WidgetDasar> createState() => _WidgetDasarState();
}

class _WidgetDasarState extends State<WidgetDasar> {
  String massage = '';

  void _showMassage() {
    setState(() {
      massage = 'Button Pressed';
    });
  }

  void _deleteMassage() {
    setState(() {
      massage = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Widget Page',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Welcome to Widget Page',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Container(
              width: 150,
              height: 150,
              color: Colors.greenAccent,
              child: const Center(
                child: Text(
                  'Kotak Hijau',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Image.network(
                      'https://images.unsplash.com/photo-1605460375648-278bcbd579a6?',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Flexible(
                    child: Image.network(
                      'https://images.unsplash.com/photo-1605460375648-278bcbd579a6?',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _showMassage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Show Message'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _deleteMassage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Delete Message'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              massage,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
