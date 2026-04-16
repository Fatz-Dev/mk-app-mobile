import 'package:flutter/material.dart';
import './Page/home.dart';
import './Page/popular.dart';
import './Page/news.dart';
// import 'package:materienamsampaisembilan/materi_sembilan.dart';
// import 'package:materienamsampaisembilan/materi_delapan.dart';
// import 'package:materienamsampaisembilan/materi_tujuh.dart';
// import 'package:materienamsampaisembilan/materi_enam.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('DW Tabs'),
          backgroundColor: Colors.grey, //CODE BARU
          bottom: TabBar(
            controller: controller,
            tabs: <Tab>[
              Tab(icon: Icon(Icons.home), text: 'Beranda'),
              Tab(icon: Icon(Icons.note), text: 'Popular'),
              Tab(icon: Icon(Icons.poll), text: 'News'),
            ],
          ),
          //END CODE
        ), //CODE BARU
        body: TabBarView(
          controller: controller,
          children: <Widget>[Home(), Popular(), News()],
        ), //END CODE
      ),
    );
  }
}
