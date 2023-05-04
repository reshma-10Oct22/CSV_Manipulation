import 'package:flutter/material.dart';
import 'page/list_view_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Manipulating CSV file'),
        ),
        body: const ListViewPage(),
      ),
    );
  }
}
