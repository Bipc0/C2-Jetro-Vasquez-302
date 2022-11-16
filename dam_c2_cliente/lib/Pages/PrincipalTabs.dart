
import 'package:dam_c2_cliente/Pages/AgregarTab.dart';
import 'package:dam_c2_cliente/Pages/BorrarTab.dart';
import 'package:dam_c2_cliente/Pages/Listar_autos_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TabPrincipal extends StatelessWidget {
  // const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('C2 Dam020-Cliente'),
          leading: Icon(MdiIcons.car),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Lista Auto'),
               Tab(text: 'Borrar Auto'),
                Tab(text: 'Agregar Auto'),

            ],
          ),
        ),
        body: TabBarView(children: [
          TabsAutosPage(),
          TabBorrar(),
          TabAgregar()

        ]),
      ),
    );
  }
}
