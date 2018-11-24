import 'package:flutter/material.dart';
import 'package:proy_licores_flutter/planificacion_page.dart';

class HomePage extends StatefulWidget {
  @override State < StatefulWidget > createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State < HomePage > {
  //Primera forma: usando un controller
  TextEditingController _controller = TextEditingController();

  // Segunda forma: metodo y variable, necesarios para el widget TextField
  String valueOnChange = '';

  _onChanged(String value) {
    setState(() {
        // valueOnChange = value;
      }

    );
  }

  @override Widget build(BuildContext context) {

    final titulo = Container(margin: const EdgeInsets.only(top: 70.0, bottom: 35.0),
        child: Text('Licores App', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold), ),


    );

    final logo = Center(child: Image.asset('assets/copa.jpg',
      height: 200.0,

    ), );

    final user = Container(margin: const EdgeInsets.only(top: 150.0),
      padding: EdgeInsets.only(right: 32.0, left: 32.0, bottom: 16.0),
      child: TextField(controller: _controller,
        //llamar al metodo onChanged
        onChanged: _onChanged,
        // otra forma de captar datos
        // onSubmitted:,
      ), );

    var mostrar = Container( // mostrar con TextEditingController
      //child: Text(_controller.text),
      // mostrar con ValueChanged
      // child: Text(valueOnChange),
    );

    final boton = Container(margin: const EdgeInsets.only(top: 70.0, bottom: 35.0),
      child: RaisedButton(shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
        color: Colors.red,
        elevation: 4.0,
        splashColor: Colors.redAccent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PlanificacionScreen()),
          );
        },
        child: Text('Calcula tu fiesta ya!', style: TextStyle(color: Colors.white, fontSize: 18.0), ),
      ), );
    return Scaffold(appBar: AppBar(title: Text('Inicio'), ),
      body: Column(children: < Widget > [titulo,
        logo,
        // user,
        boton,
        // mostrar,
      ], ),
    );
  }
}