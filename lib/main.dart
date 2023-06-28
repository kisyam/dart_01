import 'package:flutter/material.dart';
import 'package:practice/screens/loading.dart';

void main() {
  Girl girl = Girl(sex: "woman", name: "ys");
  Mother girl2 = Girl(sex: "man", name: 'yskim');
  girl.hello();
  girl.isShe();
  girl2.isShe();
  List<Mother> list = [];
  list.add(girl);
  list.add(girl2);
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
  Girl({
    required super.sex,
    required super.name,
  });

  void hello() {
    print("hello I am a $sex");
  }
}

class Mother {
  final String sex;
  final String name;

  Mother({
    required this.sex,
    required this.name,
  });
  void isShe() {
    print("I am a $sex");
  }
}
