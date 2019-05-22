

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar( 
          title: Text('Cards')
        ),
        body: ListView(  
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _cardTipo1(),
            SizedBox( height: 30.0,),
            _carTipo2(),
          ],
        ),
    );

  }

  Widget _cardTipo1() {

    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular( 20.0 ) ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue ),
            title: Text( 'Soy el título de esta tarjeta'),
            subtitle: Text( 'lorem y tal y cual que esto es un jaleo tremendo y se mezclan varios lenguajes' ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),

    );

  }

  Widget _carTipo2() {

    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://cdn.fstoppers.com/styles/large-16-9/s3/lead/2018/06/ultra-wide-mistakes-lead-image.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover
          ),
          // Image(
          //   image: NetworkImage('https://cdn.fstoppers.com/styles/large-16-9/s3/lead/2018/06/ultra-wide-mistakes-lead-image.jpg')
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text( 'Un texto cualquiera ')
            )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset( 2.0, 10.0)
            )
          ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular( 30.0 ),
        child: card,
      ),
    );

  }

}

//https://cdn.fstoppers.com/styles/large-16-9/s3/lead/2018/06/ultra-wide-mistakes-lead-image.jpg