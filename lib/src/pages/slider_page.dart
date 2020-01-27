import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

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
            //_checkBox(),
            //_checkBoxLista(),
            _crearSwitch(),
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
      onChanged: (_bloquearCheck) ? null : (valor){
        setState(() {
          _valorSlider = valor;  
        });    
      },
    );
  }

  // Widget _checkBox() {
  //   return Checkbox( 
  //     activeColor: Colors.orange,
  //     value: _bloquearCheck,
  //     onChanged: (valor){
  //       setState(() {
  //         _bloquearCheck = valor;
  //       });
  //     },
  //   );
  // }

  // Widget _checkBoxLista() {
  //   return CheckboxListTile( 
  //     title: Text('Bloquear Slider'),
  //     activeColor: Colors.red,
  //     value: _bloquearCheck,
  //     onChanged: (valor){
  //       setState(() {
  //         _bloquearCheck = valor;
  //       });
  //     },
  //   );
  // }

  _crearSwitch() {
    return SwitchListTile( 
      title: Text('Bloquear Slider'),
      activeColor: Colors.blue,
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
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