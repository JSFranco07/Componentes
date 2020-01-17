import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            Expanded(
              child: _crearImagen()
            )
          ],
        )
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 50,
      max: 350.0,
      onChanged: (valor){

        setState(() {
          _valorSlider = valor;  
        });
        
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://vignette.wikia.nocookie.net/dragonball/images/0/0f/Gohan_SSJ2_.png/revision/latest?cb=20120426214904&path-prefix=es'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}