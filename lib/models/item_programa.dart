import 'package:app_fiestas_angel/models/acto.dart';

class ItemPrograma {
  String fecha;
  String url_background;
  List<Acto> listaActos;

  ItemPrograma({
    required this.fecha,
    required this.url_background,
    required this.listaActos
  });

  factory ItemPrograma.fromJson(Map<String, dynamic> json){

    //Mapeamos la lista de actos
    var lista_actos = json["listaActos"] as List;
    List<Acto> actos = lista_actos.map((e) => Acto.fromJson(e)).toList();

    return ItemPrograma(
        fecha: json['fecha'],
        url_background: json['url_background'],
        listaActos: actos
    );
  }
}
