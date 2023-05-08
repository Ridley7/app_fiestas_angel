class Pena{

  final String avatar;
  final String logo;
  final String title;
  final String color;
  final String ubicacion;
  final String socios;
  final String fundacion;
  final double latitud;
  final double longitud;
  List<String>? listaCarteles;

  Pena({
    required this.avatar,
    required this.logo,
    required this.title,
    required this.color,
    required this.ubicacion,
    required this.socios,
    required this.fundacion,
    required this.latitud,
    required this.longitud,
    this.listaCarteles
  });

  factory Pena.fromJson(Map<String, dynamic> json){
    return Pena(
        avatar: json['avatar'],
        logo: json['logo'],
        title: json['title'],
        color: json['title'],
        ubicacion: json['ubicacion'],
        socios: json['socios'],
        fundacion: json['fundacion'],
        latitud: json['latitud'],
        longitud: json['longitud']
    );
  }

}