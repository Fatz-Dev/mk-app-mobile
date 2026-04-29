import 'package:flutter/material.dart';

class MateriSembilan extends StatelessWidget {
  const MateriSembilan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back), title: Text("Materi 9")),

      // versi column
      // body: Column(
      //   children: <Widget>[
      //     Container(
      //       width: 50,
      //       height: 50,
      //       decoration: BoxDecoration(
      //         color: Colors.redAccent,
      //         shape: BoxShape.circle,
      //       ),
      //     ),
      //     Container(
      //       width: 50,
      //       height: 50,
      //       decoration: BoxDecoration(
      //         color: Colors.pinkAccent,
      //         shape: BoxShape.circle,
      //       ),
      //     ),
      //     Container(
      //       width: 50,
      //       height: 50,
      //       decoration: BoxDecoration(
      //         color: Colors.blueAccent,
      //         shape: BoxShape.circle,
      //       ),
      //     ),
      //   ],
      // ),

      // versi row
      // body: Row(
      //   children: <Widget>[
      //     Container(
      //       width: 50,
      //       height: 50,
      //       decoration: BoxDecoration(
      //         color: Colors.redAccent,
      //         shape: BoxShape.circle,
      //       ),
      //     ),
      //     Container(
      //       width: 50,
      //       height: 50,
      //       decoration: BoxDecoration(
      //         color: Colors.pinkAccent,
      //         shape: BoxShape.circle,
      //       ),
      //     ),
      //     Container(
      //       width: 50,
      //       height: 50,
      //       decoration: BoxDecoration(
      //         color: Colors.blueAccent,
      //         shape: BoxShape.circle,
      //       ),
      //     ),
      //   ],
      // ),

      // versi 1 colum dan row
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              shape: BoxShape.circle,
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ],
      ),

      // versi 2 column dan row
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //     Container(
      //       width: 50,
      //       height: 50,
      //       decoration: BoxDecoration(
      //         color: Colors.redAccent,
      //         shape: BoxShape.circle,
      //       ),
      //     ),
      //     Container(
      //       width: 50,
      //       height: 50,
      //       decoration: BoxDecoration(
      //         color: Colors.pinkAccent,
      //         shape: BoxShape.circle,
      //       ),
      //     ),
      //     Row(
      //       //TAMBAHKAN CODE INI
      //       mainAxisAlignment: MainAxisAlignment.end, //TAMBAHKAN CODE INI
      //       children: <Widget>[
      //         Container(
      //           width: 50,
      //           height: 50,
      //           decoration: BoxDecoration(
      //             color: Colors.blueAccent,
      //             shape: BoxShape.circle,
      //           ),
      //         ),
      //         Container(
      //           width: 50,
      //           height: 50,
      //           decoration: BoxDecoration(
      //             color: Colors.redAccent,
      //             shape: BoxShape.circle,
      //           ),
      //         ),
      //         Container(
      //           width: 50,
      //           height: 50,
      //           decoration: BoxDecoration(
      //             color: Colors.pinkAccent,
      //             shape: BoxShape.circle,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
