import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> placeNames = [
    "New York City",
    "London",
    "Paris",
    "Tokyo",
    "Sydney",
    "Rome",
    "Mumbai",
    "Rio de Janeiro",
    "Istanbul",
    "Cairo",
  ];

  final int repetitionCount = 3;

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> finalList = List.generate(repetitionCount, (_) => placeNames)
        .expand((element) => element)
        .toList();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Place Names'),
        ),
        body: ListView.builder(
          itemCount: finalList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Card(
                elevation: 2.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        finalList[index],
                        style: const TextStyle(fontSize: 18.0),
                      ),
                      const SizedBox(height: 8.0),
                      Container(
                        height: 1.0,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
