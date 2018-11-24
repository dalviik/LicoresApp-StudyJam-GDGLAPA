import 'package:flutter/material.dart';
import 'package:proy_licores_flutter/resultado_page.dart';


class SeleccionLicoresScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

     final boton = Container(margin: const EdgeInsets.only(top: 50.0, bottom: 35.0),
      child: RaisedButton(shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
        color: Colors.red,
        elevation: 4.0,
        splashColor: Colors.redAccent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ResultadoScreen()),
          );
        },
        child: Text('Siguiente', style: TextStyle(color: Colors.white, fontSize: 18.0), ),
      ), );


    return Scaffold(
      appBar: AppBar(
        title: Text("Elije tus licores"),
      ),
      body: new Column(
        children: < Widget > [
          Container(
            margin: const EdgeInsets.only(top: 18.0, bottom: 5.0),
              padding: const EdgeInsets.all(12.0),
                child:
                new Text(
                  'Selecciona tus licores aqui', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)
                ),
          ),
          new Text('Bebe Resposablemente', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold)),

          new ListTile(
            trailing: const Icon(Icons.local_drink, size: 36.0, ),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Licor Puro y Shots",
              ),
            ),
          ),
          new ListTile(
            trailing: const Icon(Icons.local_drink, size: 36.0, ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Vino y Champaña",
                ),
              ),
          ),
          new ListTile(
            trailing: const Icon(Icons.local_drink, size: 36.0, ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Cerveza",
                ),
              ),
          ),
          new ListTile(
            trailing: const Icon(Icons.local_drink, size: 36.0, ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Cocteles",
                ),
              ),
          ),
          new ListTile(
            trailing: const Icon(Icons.local_drink, size: 36.0, ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Tequila",
                ),
              ),
          ),
          new ListTile(
            trailing: const Icon(Icons.local_drink, size: 36.0, ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Otros (Lix)",
                ),
              ),
          ),
          const Divider(
              height: 1.0,
            ),
            /* new ListTile(
              leading: const Icon(Icons.label),
              title: const Text('Nick'),
              subtitle: const Text('None'),
            ), */
            boton

        ],
      ),

    );
  }
}