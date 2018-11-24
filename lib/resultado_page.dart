import 'package:flutter/material.dart';

class ResultadoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    final logoResultado = Center(child: Image.asset('assets/resultado.png',
      height: 200.0,

    ), );
    return Scaffold(
      appBar: AppBar(
        title: Text("Planifica"),
      ),
      body: new Column(
        children: < Widget > [
          logoResultado,
          Container(
            margin: const EdgeInsets.only(top: 0.0, bottom: 5.0),
              padding: const EdgeInsets.all(0.0),
                child:
                new Text(
                  'Para 12 personas necesitas', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)
                ),
          ),
          new Text('Bebe Resposablemente', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold)),
          
          
          Container(
            padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child:
              new ListTile(
                trailing: new ImageIcon(
                  new AssetImage("assets/botellas.png"),
                  size: 36.0,
                ),
                title: Text('4 Botellas de Vino')
              ),

          ),

          Container(
            padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child:
              new ListTile(
                trailing: new ImageIcon(
                  new AssetImage("assets/botellas.png"),
                  size: 36.0,
                ),
                title: Text('24 Botellas de Cerveza')
              ),

          ),

        
          Container(
            padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child:
              new ListTile(
                trailing: new ImageIcon(
                  new AssetImage("assets/botellas.png"),
                  size: 36.0,
                ),
                title: Text('3 botellas de Cocteles')
              ),

          ),

          Container(
            padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child:
              new ListTile(
                trailing: new ImageIcon(
                  new AssetImage("assets/botellas.png"),
                  size: 36.0,
                ),
                title: Text('3 botellas de tequila')
              ),

          ),

         


        ],
      ),

    );
  }
}