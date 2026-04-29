import 'package:flutter/material.dart';
import 'package:quran/api_service.dart';
import 'package:quran/page/detil.dart';
import 'package:quran/surat.dart';

class Surah extends StatelessWidget {
  const Surah({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Surat>> futureSurat;

  @override
  void initState() {
    super.initState();
    futureSurat = ApiService().fetchSurat();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: FutureBuilder<List<Surat>>(
        future: futureSurat,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          List<Surat> suratList = snapshot.data!;
          return ListView.builder(
            itemCount: suratList.length,
            itemBuilder: (context, index) {
              Surat surat = suratList[index];
              return ListTile(
                title: Text(surat.nama),
                subtitle: Text(surat.latin),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('${surat.jumlahAyat} Ayat'),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(surat: surat),
                          ),
                        );
                      },
                      child: Text('Detail', style: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}