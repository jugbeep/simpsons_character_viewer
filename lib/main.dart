import 'package:flutter/material.dart';
import 'package:simpsons_character_viewer/core/injection/inject.dart';
import 'package:simpsons_character_viewer/presentation/ui/pages/characters_page/characters_page.dart';

void main() {
  Inject.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simpsons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CharactersPage(),
    );
  }
}
