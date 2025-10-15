import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String name = "Yudha Islami Sulistya";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // body: Container(
      //   width: double.infinity,
      //   padding: const EdgeInsets.symmetric(vertical: 20.0),
      //   margin: const EdgeInsets.all(20.0),
      //   color: Colors.green[500],
      //   child: const Text(
      //     "Selamat datang di kelas Flutter, Selamat datang di kelas Flutter",
      //     textAlign: TextAlign.justify,
      //   ),
      // ),
      body: Container(
        color: Colors.purple,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(color: Colors.red),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(color: Colors.green),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
