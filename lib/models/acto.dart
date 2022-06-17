class Acto{
  String icono;
  String titulo;
  String hora;
  String descripcion;
  String lugar;
  String precio;
  String url_imagen_cabecera;
  bool visible;
  DateTime? fechaAparicion;

  //Lista de videos
  List<String>? listaVideos;

  //Lista de imagenes
  List<String>? listaImagenes;

  Acto({
    required this.icono,
    required this.titulo,
    required this.hora,
    required this.descripcion,
    required this.lugar,
    required this.precio,
    required this.url_imagen_cabecera,
    required this.visible,
    this.fechaAparicion,
    this.listaVideos,
    this.listaImagenes
  });

  factory Acto.fromJson(Map<String, dynamic> json){
    return Acto(
        icono: json['icono'],
        titulo: json['titulo'],
        hora: json['hora'],
        descripcion: json['descripcion'],
        lugar: json['lugar'],
        precio: json['precio'],
        url_imagen_cabecera: json['url_imagen_cabecera'],
        visible: json['visible'],
        fechaAparicion: json['fechaAparicion'],
        listaVideos: json['listaVideos'],
        listaImagenes: json['listaImagenes']
    );
  }

}