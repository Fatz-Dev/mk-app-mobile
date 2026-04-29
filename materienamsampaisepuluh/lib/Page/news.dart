import 'package:flutter/material.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.archive),
              Text(
                'Berita Terbaru',
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Card(
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://cdn.pixabay.com/photo/2019/05/31/16/16/australia-4242493_1280.jpg',
                ),
                Text('Fox News'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
