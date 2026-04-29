import 'package:flutter/material.dart';
import 'package:quran/Page/home.dart';
import 'package:quran/page/profil.dart';
import 'package:quran/page/surah.dart';

void main() {
  runApp(DWTabs());
}

class DWTabs extends StatefulWidget {
  @override
  DwTabState createState() => DwTabState();
}

class DwTabState extends State<DWTabs> with SingleTickerProviderStateMixin {
  //CODE BARU
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(
      vsync: this,
      length: 3,
    ); //LENGTH = TOTAL TAB YANGAKANDIBUAT
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  //AKHIR CODE BARU
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Belajar Navigator + api'), backgroundColor: Colors.grey),
        body: TabBarView(
          controller: controller,
          children: <Widget>[Home(), Surah(), Profil()],
        ),
        bottomNavigationBar: TabBar(
          controller: controller,
          tabs: <Tab>[
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.book), text: 'Surah'),
            Tab(icon: Icon(Icons.person), text: 'Profil'),
          ],
        ),
      ),
    );
  }
}