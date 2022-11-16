import 'package:dam_c2_cliente/Pages/Listar_autos_page.dart';
import 'package:dam_c2_cliente/Pages/PrincipalTabs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  TabPrincipal()
    );
  }
}

