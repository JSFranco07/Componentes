import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[700],
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  // List<Widget> _crearItems(){

  //   List<Widget> lista = new List<Widget>();

  //   for (String opt in opciones) {
  //     final temWidget = ListTile(
  //       title: Text(opt),
  //     );

  //     lista..add(temWidget)
  //          ..add(Divider(color: Colors.tealAccent[700]));          
  //   }

  //   return lista;
  // }

  List<Widget> _crearItemsCorta(){
    
    return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Subtítulo'),
            leading: Icon(Icons.favorite),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(color: Colors.tealAccent[700],)
        ],
      );
    }).toList();

  }

}