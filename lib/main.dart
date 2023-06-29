import 'package:flutter/material.dart';
import 'package:practice/screens/loading.dart';

void main() {
  Mother girl = Girl();
  girl.fn();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather app',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const Loading(),
    );
  }
}

class Girl extends Mother {
  Girl() {
    print("i am a girl");
  }

  @override
  void fn() {
    print("I am a 14yrs old.");
  }
}

class Mother {
  Mother() {
    print("i am a mother");
  }

  void fn() {
    print("hi");
  }
}
