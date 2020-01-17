import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _fecha = '';
  String _opcionSeleccionada = 'Volar';

  List<String> _poderes = ['Volar', 'Vision Laser', 'Super Fuerza', 'Super Aliento'];

  TextEditingController _inputFieldDate = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de Texto'),
      ),
      body : ListView(
        padding: EdgeInsets.symmetric( horizontal : 15.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha( context ),
          Divider(),
          _crearDropdwon(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration( //Decorar la caja de texto
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0)
        ),
        //counter: Text('Letras ${_nombre.length}'),
        hintText: 'Nombre Completo', //Indicar que escribir dentro de la caja de texto
        labelText: 'Nombres',
        helperText: 'Solo los nombres',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)
      ),

      onChanged: (valor){
        setState(() {
          _nombre = valor;  
        });
      },

    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration( //Decorar la caja de texto
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0)
        ),
        hintText: 'Email', //Indicar que escribir dentro de la caja de texto
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email)
      ),

      onChanged: (valor) => setState(() {
          _email = valor;  
      })
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration( //Decorar la caja de texto
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0)
        ),
        hintText: 'Password', //Indicar que escribir dentro de la caja de texto
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock_outline),
        icon: Icon(Icons.lock)
      ),

      onChanged: (valor) => setState(() {
          _email = valor;  
      })
    );
  }

  Widget _crearFecha( BuildContext context ) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDate,
      decoration: InputDecoration( //Decorar la caja de texto
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0)
        ),
        hintText: 'Fecha de nacimiento', //Indicar que escribir dentro de la caja de texto
        labelText: 'Fecha de nacimiento',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today)
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async{
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale('es', 'ES')
    );

    if(picked != null){
      setState(() {
        _fecha = picked.toString();
        _inputFieldDate.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpciones (){

    List<DropdownMenuItem<String>> lista = new List();

    _poderes.forEach((poder){
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });

    return lista;
  }

  Widget _crearDropdwon() {

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        DropdownButton(
          value: _opcionSeleccionada,
          items: getOpciones(),
          onChanged: (opt){
            setState(() {
              _opcionSeleccionada = opt;
            });
          },
        )
      ],
    );


    
  }



  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre: $_nombre'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_opcionSeleccionada),
    );
  }


}