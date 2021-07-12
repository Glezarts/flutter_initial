import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 20),
          _cardTipo2(),
          SizedBox(height: 20),
          _cardTipo1(),
          SizedBox(height: 20),
          _cardTipo2(),
          SizedBox(height: 20),
          _cardTipo1(),
          SizedBox(height: 20),
          _cardTipo2(),
        ],
      ),
    );
  }
}

Widget _cardTipo1() {
  return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ListTile(
            title: Text('Título de la tarjeta'),
            subtitle: Text(
                'Esto sería la descripción de la tarjeta, información relacionada con el título'),
            leading: Icon(Icons.photo_album, color: Colors.blue),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Ok')),
            ],
          ),
        ],
      ));
}

Widget _cardTipo2() {
  final card = Container(
    child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage(
              'https://i0.wp.com/www.lenda.net/wp-content/uploads/2018/09/travel-landscape-01.jpg?ssl=1'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 250.0,
          fit: BoxFit.cover,
        ),
        // Image(
        //   image: NetworkImage(
        //       'https://i0.wp.com/www.lenda.net/wp-content/uploads/2018/09/travel-landscape-01.jpg?ssl=1'),
        // ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text('Esto es un paisaje muy bonito'),
        )
      ],
    ),
  );
  return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 15.0,
            spreadRadius: 1.0,
            offset: Offset(2, 5.0),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: card,
      ));
}
