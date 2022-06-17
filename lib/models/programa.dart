import 'package:app_fiestas_angel/models/item_programa.dart';

class Programa{

  List<ItemPrograma> lista_programa;

  Programa({required this.lista_programa});

  factory Programa.fromJson(Map<String, dynamic> json){

    //Mapeamos la lista de programa
    var lista_programa = json["programa"] as List;
    List<ItemPrograma> programa = lista_programa.map((e) => ItemPrograma.fromJson(e)).toList();

    return Programa(
        lista_programa: programa
    );
  }

}