import 'package:flutter/material.dart';
import 'package:materienamsampaisembilan/materi_sembilan.dart';
// import 'package:materienamsampaisembilan/materi_delapan.dart';
// import 'package:materienamsampaisembilan/materi_tujuh.dart';
// import 'package:materienamsampaisembilan/materi_enam.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Materi Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          scrolledUnderElevation: 0,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
      ),
      home: MateriSembilan(),
    );
  }
}

