import 'package:flutter/material.dart';

class MateriEnam extends StatelessWidget {
  const MateriEnam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
        "Materi 6"
        ),
      ),
      body: Center(
        // child: Text(
        //   "Hello World",
        //   style: TextStyle(
        //     fontSize: 40,
        //     fontFamily: 'DancingScript',
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        child: Stack(
          children: <Widget>[
            Text(
              'Belajar Flutter :)',
              style: TextStyle(
                fontSize: 40,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 6
                  ..color = Colors.red[700]!,
              ),
            ),
            // Solid text as fill.
            Text(
              'Belajar Flutter :)',
              style: TextStyle(
                fontSize: 40,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
