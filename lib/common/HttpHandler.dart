import 'dart:collection';
import 'dart:convert';

import 'package:app_fiestas_angel/models/programa.dart';
import 'package:http/http.dart' as http;

class HttpHandler{
  final String _baseUrl = "https://www.lavaquilladelangel.es/api/";

  Uri getUrl({required String url, Map<String, String>? parametrosExtra}){

    final queryParameters = <String, String>{
      //Si tuvieramos un API Key aqui la metemos
      //'key': dotenv.get('GAMES_API_KEY') --> Hay que aprender a usar variables de entorno.
      //'key': 'e45739b262a6498e959b58c54cb011d3'
    };

    if(parametrosExtra != null){
      queryParameters.addAll(parametrosExtra);
    }

    return Uri.parse('$_baseUrl/$url').replace(
      queryParameters: queryParameters
    );

  }

  //Obtenemos el programa del ayuntamiento
  Future<void> getProgramaAyto() async{

    final response = await http.get(getUrl(url: "programas-ayto"));

    if(response.statusCode == 200){
      print(response.body);
    }else{
      throw Exception("Error no se puede descargar el programa ${response.statusCode}");
    }
  }

  //Obtenemos las peñas
  Future<void> getPenas() async{

    //Realizamos una peticion url
    final response = await http.get(getUrl(url: "penas"));

    if(response.statusCode == 200){
      var lista_penas = jsonDecode(response.body);
      print(lista_penas);
    }else{
      throw Exception("Error no se pueden obtener las peñas ${response.statusCode}");
    }
  }

  //Obtenemos el programa de una peña
  Future<void> getProgramaPena(String id) async{
    final response = await http.get(getUrl(url: "programa/penas/$id"));

    if(response.statusCode == 200){
      var programa_pena = jsonDecode(response.body);
      print(programa_pena);
    }else{
      throw Exception("No se puede obtener el programa de la peña ${response.statusCode}");
    }
  }

  //Obtenemos la imagenes de la peña
  Future<void> getImagenesPena(String id_pena) async{
    final response = await http.get(getUrl(url: "imagenes_pena/$id_pena"));
    if(response.statusCode == 200){
      var imagenes_pena = jsonDecode(response.body);
      print(imagenes_pena);
    }else{
      throw Exception("No se pueden obtener las imagenes de la peña ${response.statusCode}");
    }
  }

  //Obtenemos los videos de la peña
  Future<void> getVideoPenas(String id_pena) async{
    final response = await http.get(getUrl(url: "videos_pena/$id_pena"));
    if(response.statusCode == 200){
      var videos_pena = jsonDecode(response.body);
      print(videos_pena);
    }else{
      throw Exception("No se pueden obtener los videos de las peñas ${response.statusCode}");
    }
  }

  //Obtenemos los colaboradores
  Future<void> getColaboradores() async{
    final response = await http.get(getUrl(url: "colaboradores"));
    if(response.statusCode == 200){
      var colaboradores = jsonDecode(response.body);
      print(colaboradores);
    }else{
      throw Exception("No se pueden obtener los colaboradores ${response.statusCode}");
    }
  }

  //Obtenemos el seisado
  Future<void> getSeisado() async{
    final response = await http.get(getUrl(url: "seisado"));
    if(response.statusCode == 200){
      var seisado = jsonDecode(response.body);
      print(seisado);
    }else{
      throw Exception("No se puede obtener el seisado ${response.statusCode}");
    }
  }

  //Obtenemos las noticias
  Future<void> getNoticias() async{
    final response = await http.get(getUrl(url: "noticias"));
    if(response.statusCode == 200){
      var noticias = jsonDecode(response.body);
      print(noticias);
    }else{
      throw Exception("No se puede obtener las noticias ${response.statusCode}");
    }
  }

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