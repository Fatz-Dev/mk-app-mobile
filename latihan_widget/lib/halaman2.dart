  import 'package:flutter/material.dart';

  class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key});

    @override
    State<MyHomePage> createState() => _MyHomePageState();
  }

  class _MyHomePageState extends State<MyHomePage> {
    int _jumlahBuku = 1;

    void _incrementCounter() {
      setState(() {
        _jumlahBuku++;
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('BelajarFlutter.com'),
        ),
        body: Center(
          child: Text(
            'Buku yang dibaca : $_jumlahBuku',
            style: const TextStyle(fontSize: 40),
            textAlign: TextAlign.center,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Tambah',
          child: const Icon(Icons.add),
        ),
      );
    }
  }
