import 'package:flutter/material.dart';
import 'package:kuis_124200016/list_belanja.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SafeArea(
            child: HomePage()
        )
    );
  }
}
