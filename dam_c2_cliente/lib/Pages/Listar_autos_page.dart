import 'package:dam_c2_cliente/Provider/auto_provider.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class TabsAutosPage extends StatefulWidget {


  @override
  State<TabsAutosPage> createState() => _TabsAutosPageState();
}

class _TabsAutosPageState extends State<TabsAutosPage> {
  AutoProvider autos =  AutoProvider();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            child: Text(
              'Listado de autos',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(

            child: FutureBuilder<dynamic>(
              future: autos.getAllAutos(),

              builder: (context, snapshot) {

                if (!snapshot.hasData) {

                  return Center(
                      child: Container(
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Cargando datos....'),
                              CircularProgressIndicator(),
                            ],
                          )));
                } else {

                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                          leading: Icon(MdiIcons.chemicalWeapon),
                          title: Text(snapshot.data[index]['vin']),
                          subtitle: Container(
                            child: Column(
                              children: [
                                Text('Modelo: ' +snapshot.data[index]['marca'],),
                                Text('Marca: ' +snapshot.data[index]['modelo']),
                                Text('Año: ${snapshot.data[index]['año']}'),
                                Text('Precio: ${snapshot.data[index]['precio']}'),
                              ],
                            ),
                          ),);
                    },
                  );
                }
              },
            ),
          )
        ],
      ),
    )
    );
  }
}