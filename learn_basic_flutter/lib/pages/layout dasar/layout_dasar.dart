import 'package:flutter/material.dart';

class LayoutsDasar extends StatelessWidget {
  const LayoutsDasar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layouts Dasar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Kolom 1'),
          const Text('Kolom 2'),
          const Text('Kolom 3'),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  height: 100,
                  color: Colors.blueAccent
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  height: 100,
                  color: Colors.redAccent
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  height: 100,
                  color: Colors.greenAccent
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                width: 100,
                height: 100,
                color: Colors.yellowAccent
              )  
            ]
          ),

          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 150,
                      color: Colors.grey
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 150,
                      color: Colors.black12
                    ),
                  )
                ],
              )
            ],
          ),

          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 150,
                      color: Colors.lightBlue,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 150,
                      color: Colors.blueGrey,
                    ),
                  )
                ],
              )
            ],
          ),

          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 150,
                      color: Colors.lightGreen,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 150,
                      color: Colors.lightGreenAccent,
                    ),
                  )
                ],
              )
            ],
          )
        ]
      ),
    );
  }
}