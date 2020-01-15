import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 15.0),
          _cardTipo2(),
          SizedBox(height: 15.0),
          _cardTipo1(),
          SizedBox(height: 15.0),
          _cardTipo2(),
          SizedBox(height: 15.0),
          _cardTipo1(),
          SizedBox(height: 15.0),
          _cardTipo2(),
          SizedBox(height: 15.0),
          _cardTipo1(),
          SizedBox(height: 15.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 5.0, //sombras
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0) ), //bordes
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Título de la tarjeta'),
            subtitle: Text('Esta es la descripción de la primera tarjeta de la aplicación creada en flutter para aprender'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias, //acomodar la imagen al formato de la tarjeta
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0) ), //bordes
      elevation: 5.0,
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://cnet4.cbsistatic.com/img/pI-Oq4fGqthDVMMMuyL2ZMnaC5I=/2019/11/01/1e902743-2ee4-4c22-9b66-0b396596b13e/20190701-154228.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),

          // Image(
          //   image: NetworkImage('https://cnet4.cbsistatic.com/img/pI-Oq4fGqthDVMMMuyL2ZMnaC5I=/2019/11/01/1e902743-2ee4-4c22-9b66-0b396596b13e/20190701-154228.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Paisaje')
          )
        ],
      ),
    );
  }
}