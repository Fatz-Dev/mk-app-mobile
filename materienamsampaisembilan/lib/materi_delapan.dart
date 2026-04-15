import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MateriDelapan extends StatelessWidget {
  const MateriDelapan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),

        // backgroundColor: Colors.yellowAccent,
        // systemOverlayStyle: SystemUiOverlayStyle.dark,

        title: Text(
        "Materi 8"
        ),

        //  buat appbar warna menjadi gardient
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.green,
                Colors.blue,
              ],
            ),
          ),
        ),

        // title: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTybCniORbVSJJgvqcMaMwxSY4IL6OHxKftgQ&usqp=CAU'),
      ),
    );
  }
}
