
import 'dart:convert';
import 'package:http/http.dart' as http;

class AutoProvider {
  final apiURL = 'http://10.0.2.2:8000/api/autos';

  Future<List<dynamic>> getAllAutos() async {
    var url = Uri.parse(apiURL);
    var respuesta = await http.get(url);
    if (respuesta.statusCode == 200) {
      print(respuesta.body);
      return json.decode(respuesta.body);
    } else{
      return [];
    }
      
  }

    Future<bool> borrar(int numero) async {
    var respuesta =
        await http.delete(Uri.parse(apiURL));
    return respuesta.statusCode == 200;
  }

}
