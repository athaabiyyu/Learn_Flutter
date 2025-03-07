import 'package:flutter/material.dart';
import 'package:learn_basic_flutter/pages/widget dasar/widget_dasar.dart';
import 'package:learn_basic_flutter/pages/layout dasar/layout_dasar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Wrap(
          spacing: 20,
          runSpacing: 10, 
          alignment: WrapAlignment.start,    
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WidgetDasar(),)
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white),
              child: const Text('Widget Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const LayoutsDasar())
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white),
              child: const Text('Layouts Page'),
            ),
            ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white),
              child: const Text(' Page'),
            ),
          ],
        ),
      ),
    );
  }
}
