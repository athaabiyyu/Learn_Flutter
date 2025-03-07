import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          'Home Page',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Welcome to Home Page',
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
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Image.network(
                      'https://images.unsplash.com/photo-1605460375648-278bcbd579a6?',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Flexible(
                    child: Image.network(
                      'https://images.unsplash.com/photo-1605460375648-278bcbd579a6?',
                      width: 200,
                      height: 200,
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
            )
          ],
        ),
      ),
    );
  }
}
