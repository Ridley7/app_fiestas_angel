import 'dart:collection';
import 'dart:convert';

import 'package:app_fiestas_angel/models/programa.dart';
import 'package:http/http.dart' as http;

class HttpHandler{
  final String _baseUrl = "alguna de starglob";
  
  Future<Programa> getPrograma() async{
    
    //Realizamos una peticion URL
    final response = await http.get(Uri.parse("https://api.json-generator.com/templates/L0RseCj-eDJl/data?access_token=nl57atkoag3ahdtkby124me02zg6bpicqm6f1c34"));

    if(response.statusCode == 200){

      var programa_json = jsonDecode(response.body);
      return Programa.fromJson(programa_json);

    }else{
      throw Exception("Error al obtener el programa de fiestas ${response.statusCode}");
    }
    
  }

}