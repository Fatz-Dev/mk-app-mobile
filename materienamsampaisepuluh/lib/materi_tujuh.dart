import 'package:flutter/material.dart';

class MateriTujuh extends StatelessWidget {
  const MateriTujuh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
        "Materi 7"
        ),
      ),
      body: Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.all(20), height: 200, width: 200,
        padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        // color: Colors.grey,
        
        decoration: BoxDecoration(
          color: const Color(0xFF7c94b6),
          border: Border.all(
            color: Colors.black,
            width: 6,
          ),
          image: const DecorationImage(
            image: NetworkImage('https://i.pinimg.com/originals/91/86/6b/91866b918c9cca0747f483a46943e926.jpg'),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        // ubah menjadi miring dengan ubah rotateX, atau rotateY, atau rotateZ
        // transform: Matrix4.identity()
        //   ..rotateX(0.5)
        //   ..rotateY(0.5)
        //   ..rotateZ(0.5),

        // Text dalam container
        // child: Text(
        //   "Hello World",
        //   style: TextStyle(
        //     fontSize: 40,
        //     fontFamily: 'DancingScript',
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
       
      ),
    );
  }
}
