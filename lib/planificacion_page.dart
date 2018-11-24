import 'package:flutter/material.dart';
import 'package:proy_licores_flutter/seleccion_licores_page.dart';
class PlanificacionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boton = Container(margin: const EdgeInsets.only(top: 150.0, bottom: 35.0),
      child: RaisedButton(shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
        color: Colors.red,
        elevation: 4.0,
        splashColor: Colors.redAccent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SeleccionLicoresScreen()),
          );
        },
        child: Text('Siguiente', style: TextStyle(color: Colors.white, fontSize: 18.0), ),
      ), );
    return Scaffold(
      appBar: AppBar(
        title: Text("Planifica"),
      ),
      body: new Column(
        children: < Widget > [
          Container(
            margin: const EdgeInsets.only(top: 18.0, bottom: 5.0),
              padding: const EdgeInsets.all(12.0),
                child:
                new Text(
                  'Calcula el licor para tu evento', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)
                ),
          ),
          new Text('Bebe Resposablemente', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold)),

          new ListTile(
            trailing: new ImageIcon(
              new AssetImage("assets/gente.png"),
              size: 36.0,
            ),
            title: new TextField(
              keyboardType: TextInputType.number, 
              decoration: new InputDecoration(
                hintText: "Cantidad de Invitados",
              ),
            ),
          ),
          new ListTile(
            trailing: const Icon(Icons.timer, size: 36.0, ),
              title: new TextField(
                keyboardType: TextInputType.number, 
                decoration: new InputDecoration(
                  hintText: "Duracion de tu evento",
                ),
              ),
          ),
          new ListTile(
            trailing: const Icon(Icons.shopping_cart, size: 36.0, ),
              title: new TextField(
                keyboardType: TextInputType.number, 
                decoration: new InputDecoration(
                  hintText: "Presupuesto Base",
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