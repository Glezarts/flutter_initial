import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('EG'),
              backgroundImage: NetworkImage(
                  'https://zeleb.publico.es/sites/default/files/styles/news_main_image/public/eva_gonzalez_cumple_35_anos_.png'),
            ),
          )
        ],
      ),
      body: Center(
          child: Container(child: Image.asset('assets/foto-parque.jpg'))),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
