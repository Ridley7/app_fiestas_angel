import 'package:app_fiestas_angel/models/acto.dart';
import 'package:app_fiestas_angel/models/item_programa.dart';

bool activarActos = false;

List<ItemPrograma> ProgramaActos = [
  //2 de Julio
  ItemPrograma(
    fecha: "2 de Julio",
    url_background:
    "https://cdn.pixabay.com/photo/2022/05/12/12/55/sunset-7191546_960_720.jpg",
    listaActos: [
      Acto(
        icono: "icono_musica.png",
        titulo: "Concierto de Santa Emerenciana",
        hora: "20:00",
        descripcion: "Concierto a la patrona de la ciudad \"Santa Emerenciana\" en la Catedral de Teruel",
        lugar: "Santa Iglesia Catedral de Teruel",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/0201_concierto_santa_emerenciana.JPG",
        visible: true,
      )
    ],
  ),
  //3 de Julio
  ItemPrograma(
    fecha: "3 de Julio",
    url_background:
    "https://cdn.pixabay.com/photo/2022/06/02/11/13/cathedral-7237718_960_720.jpg",
    listaActos: [
      Acto(
        icono: "icono_traca.png",
        titulo: "Tradicional Traca",
        hora: "22:30",
        descripcion:
        "Tradicional traca con la que dará comienzo a las Fiestas del Ángel 2019. Recorrido: Plaza San Juan > C/ San Juan > Plaza del Torico > C/ El Tozal > Plaza Domingo Gascón",
        lugar: "Plaza San Juan",
        precio: "",
        url_imagen_cabecera: "http://www.starglob.com/AppVaquilla/0301_tradicional_traca.JPG",
        visible: true,
      )
    ],
  ),
  //5 de Julio
  ItemPrograma(
    fecha: "5 de Julio",
    url_background:
    "https://cdn.pixabay.com/photo/2022/05/31/14/17/sea-7233669_960_720.jpg",
    listaActos: [
      Acto(
        icono: "icono_angel.png",
        titulo: "Seisado de Santa Emerenciana",
        hora: "11:30",
        descripcion:
        "La función de esta Institución consistía -y para ello fue creada- en que si por cualquier desgracia, peste, cólera, inundación o terremotos desaparecería el Concejo y los Jueces, esta Institución del \"Seisado\" gobernaría el pueblo, hasta que por Ley se nombrara otro Concejo y Jueces",
        lugar: "Santa Iglesia Catedral de Teruel",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/0501_seisado.jpg",
        visible: true,
      ),
      Acto(
        icono: "icono_misa.png",
        titulo: "Misa a Santa Emerenciana",
        hora: "12:00",
        descripcion:
        "Solemne misa en honor a Santa Emerenciana, patrona de la Ciudad de Teruel. A continuación procesión de Santa Emerenciana.",
        lugar: "Santa Iglesia Catedral de Teruel",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/0502_concierto_santa_emerenciana.jpg",
        visible: true,
      ),
    ],
  ),
  //6 de Julio
  ItemPrograma(
    fecha: "6 de Julio",
    url_background:
    "https://cdn.pixabay.com/photo/2022/06/04/19/57/river-7242735_960_720.jpg",
    listaActos: [
      Acto(
        icono: "icono_toro.png",
        titulo: "Visita al Museo y Plaza de Toros",
        hora: "19:00",
        descripcion: "Visita al Museo de la Vaquilla y la plaza de toros, en la que se podrá conocer la historia y la tradición de la fiesta, así como los secretos de la plaza.",
        lugar: "Plaza de Toros",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/0601_visita_plaza_toros.jpg",
        visible: true,
      )
    ],
  ),
  //7 de Julio
  ItemPrograma(
    fecha: "7 de Julio",
    url_background:
    "https://cdn.pixabay.com/photo/2022/05/23/18/45/bee-7216939_960_720.jpg",
    listaActos: [
      Acto(
        icono: "icono_toro.png",
        titulo: "Visita al Museo y Plaza de Toros",
        hora: "19:00",
        descripcion: "Visita al Museo de la Vaquilla y la plaza de toros, en la que se podrá conocer la historia y la tradición de la fiesta, así como los secretos de la plaza.",
        lugar: "Plaza de Toros",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/0701_visita_museo.JPG",
        visible: true,
      )
    ],
  ),
  //8 de Julio
  ItemPrograma(
    fecha: "8 de Julio",
    url_background:
    "https://cdn.pixabay.com/photo/2022/02/23/14/50/houses-7030773_960_720.jpg",
    listaActos: [
      Acto(
        icono: "icono_toro.png",
        titulo: "Visita al Museo y Plaza de Toros",
        hora: "19:00",
        descripcion: "Visita al Museo de la Vaquilla y la plaza de toros, en la que se podrá conocer la historia y la tradición de la fiesta, así como los secretos de la plaza.",
        lugar: "Plaza de Toros",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/0801_visita_museo.JPG"
            "",
        visible: true,
      )
    ],
  ),
  //9 de Julio
  ItemPrograma(
    fecha: "9 de Julio",
    url_background:
    "https://cdn.pixabay.com/photo/2022/06/11/06/33/frog-7255741_960_720.jpg",
    listaActos: [
      Acto(
        icono: "icono_gigantes.png",
        titulo: "Comparsa de Gigantes y Cabezudos de Teruel",
        hora: "11:20",
        descripcion:
        "La Comparsa de Cabezudos acompañada por el grupo de música tradicional de la Banda de Música Santa Cecilia de Teruel saldrá desde la Escuela de Música de la Carretera de Alcañíz y recorrerá las calles del barrio",
        lugar: "Centro histórico",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/0901_comparsa_gigantes.JPG",
        visible: activarActos,
        fechaAparicion: DateTime.parse("2020-07-09 11:19:59"),
        listaVideos: [
          "https://www.youtube.com/watch?v=xxqe8n2T_nw&feature=youtu.be"

        ],
      ),
      Acto(
        icono: "icono_toro.png",
        titulo: "Visita al Museo y Plaza de Toros",
        hora: "19:00",
        descripcion: "Visita al Museo de la Vaquilla y la plaza de toros, en la que se podrá conocer la historia y la tradición de la fiesta, así como los secretos de la plaza.",
        lugar: "Plaza de Toros",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/0902_visita_plaza.JPG",
        visible: true,
      ),
    ],
  ),
  //10 de Julio
  ItemPrograma(
    fecha: "10 de Julio",
    url_background:
    "https://cdn.pixabay.com/photo/2022/05/13/10/35/flower-7193390_960_720.jpg",
    listaActos: [
      Acto(
          icono: "icono_cartel.png",
          titulo: "Colocación de Pancartas en Plaza del Torico",
          hora: "11:30",
          descripcion: "Colocación de las pancartas en todas las peñas vaquilleras, ya que debido a esta situación anómala no es posible realizar sus actividades",
          lugar: "Centro histórico",
          precio: "",
          url_imagen_cabecera:
          "http://www.starglob.com/AppVaquilla/1001_colocacion.JPG",
          visible: true
      ),

      Acto(
        icono: "icono_musica.png",
        titulo: "Pasodoble banda",
        hora: "18:00",
        descripcion: "Tradicional pasodoble a manos de la Banda de Música",
        lugar: "Centro histórico",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1002_pasodoblebanda.JPG",
        visible: activarActos,
        fechaAparicion: DateTime.parse("2020-07-10 17:59:59"),
        listaVideos: [
          "https://www.youtube.com/watch?v=M-hxlho9jT8&feature=youtu.be"
        ],
      ),
      Acto(
        icono: "icono_toro.png",
        titulo: "Visita al Museo y Plaza de Toros",
        hora: "19:00",
        descripcion: "Visita al Museo de la Vaquilla y la plaza de toros, en la que se podrá conocer la historia y la tradición de la fiesta, así como los secretos de la plaza.",
        lugar: "Plaza de Toros",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1003_visita_plaza.JPG",
        visible: true,
      ),
      Acto(
          icono: "icono_traca.png",
          titulo: "Fuegos artificiales",
          hora: "23:30",
          descripcion: "Prendido de los tradicionales fuegos de artificio",
          lugar: "Viaducto Fernando Hué",
          precio: "",
          url_imagen_cabecera:
          "http://www.starglob.com/AppVaquilla/1004_fuegos_aritificiales.jpg",
          visible: true
      ),
    ],
  ),
  //11 de Julio
  ItemPrograma(
    fecha: "11 de Julio",
    url_background:
    "https://cdn.pixabay.com/photo/2022/06/07/08/48/wall-7247831_960_720.jpg",
    listaActos: [
      Acto(
        icono: "icono_misa.png",
        titulo: "Salve al Ángel Custodio",
        hora: "11:20",
        descripcion: "Rezo de la Salve antes del nombramiento del vaquillero del año en el salón de plenos del Ayuntamiento de Teruel",
        lugar: "Salón de Plenos del Excmo. Ayuntamiento",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1101_salve.JPG",
        visible: true,
      ),

      Acto(
          icono: "icono_award.png",
          titulo: "Nombramiento del Vaquillero del año",
          hora: "11:30",
          descripcion: "Imposición de la casaca con todos los escudos de las peñas a la persona que haya sido designada como vaquillero del año",
          lugar: "Salón de Plenos del Excmo. Ayuntamiento",
          precio: "",
          url_imagen_cabecera:
          "http://www.starglob.com/AppVaquilla/1101_salve.JPG", //Cambiar aqui la foto
          visible: true,
          fechaAparicion: DateTime.parse("2020-07-11 11:19:19")
      ),


      Acto(
        icono: "icono_subasta.png",
        titulo: "Subasta de Palcos",
        hora: "12:00",
        descripcion:
        "Tradicional subasta de palcos de la plaza de toros para la merienda del domingo.",
        lugar: "Salón de Plenos del Excmo. Ayuntamiento",
        precio: "",
        url_imagen_cabecera: "http://www.starglob.com/AppVaquilla/1102_subasta_palcos.JPG",
        visible: true,
      ),
      Acto(
        icono: "icono_campana.png",
        titulo: "Toque del Campanico",
        hora: "16:30",
        descripcion:
        "Concentración de las peñas vaquilleras para asistir al popular TOQUE DEL CAMPANICO DEL ÁNGEL",
        lugar: "Plaza de la Catedral",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1103_toque_campanico.JPG",
        visible: true,
      ),
      Acto(
        icono: "icono_panuelo.png",
        titulo: "Puesta del Pañuelico",
        hora: "16:45",
        descripcion: "Puesta del pañuelico al Torico",
        lugar: "Plaza del Torico",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1104_puesta_panuelo.JPG",
        visible: true,
      ),
      Acto(
        icono: "icono_musica.png",
        titulo: "Charanga",
        hora: "18:00",
        descripcion: "Pasacalles de las charangas de las peñas con sus típicos remojones para apaciguar el calor.",
        lugar: "Centro de Histórico",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1105_charanga.jpg", //Cambiar aqui la foto
        visible: activarActos,
        fechaAparicion: DateTime.parse("2020-07-11 17:59:59"),
        listaVideos: [
          "https://www.youtube.com/watch?v=4i2F_TCsCGE&feature=youtu.be"
        ],
      ),
      Acto(
        icono: "icono_toro.png",
        titulo: "Visita al Museo y Plaza de Toros",
        hora: "19:00",
        descripcion: "Visita al Museo de la Vaquilla y la plaza de toros, en la que se podrá conocer la historia y la tradición de la fiesta, así como los secretos de la plaza.",
        lugar: "Plaza de Toros",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1106_visita_plaza.JPG",
        visible: true,
      ),
      Acto(
        icono: "icono_musica.png",
        titulo: "Peñas",
        hora: "23:30",
        descripcion: "Actos musicales en cada una de las peñas situadas por toda la ciudad, cada una con su estilo de música para que todo el mundo pueda elegir dónde divertirse",
        lugar: "Centro histórico",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1107_penas.JPG",
        visible: activarActos,
        fechaAparicion: DateTime.parse("2020-07-11 23:29:59"),
        listaVideos: [
          "https://www.youtube.com/watch?v=t5HtvW0ucRA&feature=youtu.be"
        ],
      ),
    ],
  ),
  //12 de Julio
  ItemPrograma(
    fecha: "12 de Julio",
    url_background:
    "https://cdn.pixabay.com/photo/2022/04/09/18/21/rocky-coast-7122028_960_720.jpg",
    listaActos: [
      Acto(
        icono: "icono_musica.png",
        titulo: "Pasacalles Banda",
        hora: "17:45",
        descripcion: "Pasacalles de la corporación municipal hasta la plaza de toros para ver los toros ensogados de la madrugada y celebrar la tradicional merienda",
        lugar: "Centro histórico",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1201_pasacalles.JPG",
        visible: activarActos,
        fechaAparicion: DateTime.parse("2020-07-12 17:44:59"),
        listaVideos: [
          "https://www.youtube.com/watch?v=8qG3Ot2KMUg&feature=youtu.be"
        ],
      ),
      Acto(
        icono: "icono_merienda.png",
        titulo: "Merienda",
        hora: "18:00",
        descripcion: "Celebración de la tradicional merienda con gente de todo tipo disfrazada",
        lugar: "Plaza de Toros",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1202_merienda.JPG",
        visible: activarActos,
        fechaAparicion: DateTime.parse("2020-07-12 17:59:59"),
        listaVideos: [
          "https://www.youtube.com/watch?v=KeXdEz-WJTI&feature=youtu.be"
        ],
      ),
      Acto(
        icono: "icono_toro.png",
        titulo: "Visita al Museo y Plaza de Toros",
        hora: "19:00",
        descripcion: "Visita al Museo de la Vaquilla y la plaza de toros, en la que se podrá conocer la historia y la tradición de la fiesta, así como los secretos de la plaza.",
        lugar: "Plaza de Toros",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1203_visita_plaza.JPG",
        visible: true,
      ),
      Acto(
        icono: "icono_musica.png",
        titulo: "Peñas",
        hora: "23:30",
        descripcion: "Actos musicales en cada una de las peñas situadas por toda la ciudad, cada una con su estilo de música para que todo el mundo pueda elegir dónde divertirse",
        lugar: "Centro histórico",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1204_penas.jpg",
        visible: activarActos,
        fechaAparicion: DateTime.parse("2020-07-12 23:29:59"),
        listaVideos: [
          "https://www.youtube.com/watch?v=t5HtvW0ucRA&feature=youtu.be"
        ],
      ),
    ],
  ),
  //13 de Julio
  ItemPrograma(
    fecha: "13 de Julio",
    url_background:
    "https://cdn.pixabay.com/photo/2022/06/02/18/20/knitting-7238657_960_720.jpg",
    listaActos: [
      Acto(
        icono: "icono_merienda.png",
        titulo: "Reparto de Regañaos en las Residencias",
        hora: "12:00",
        descripcion: "Reparto de Regañaos a las distintas residencias de Teruel.",
        lugar: "Residencias",
        precio: "",
        url_imagen_cabecera: "http://www.starglob.com/AppVaquilla/1202_merienda.JPG",
        visible: true,
      ),
      Acto(
        icono: "icono_traca.png",
        titulo: "Disparo de Cohetes desde la nevera",
        hora: "18:00",
        descripcion: "Anuncio del inicio de los toros ensogados de la tarde del lunes por las calles del centro de Teruel.",
        lugar: "La Nevera",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1302_disparo_cohetes.jpg",
        visible: true,
      ),
      Acto(
        icono: "icono_traca.png",
        titulo: "Traca Fin de Fiestas",
        hora: "24:00",
        descripcion: "Prendido de la traca que anuncia el final de las fiestas.",
        lugar: "Centro histórico",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1303_traca_fin_fiestas.JPG",
        visible: activarActos,
        fechaAparicion: DateTime.parse("2020-07-13 23:54:59"),
        listaVideos: [
          "https://www.youtube.com/watch?v=rpi4BU9owbc&feature=youtu.be"
        ],

      ),
      Acto(
        icono: "icono_panuelo.png",
        titulo: "Quitada del Pañuelico",
        hora: "24:00",
        descripcion: "Retirada del pañuelo al Torico, para ser devuelto al Ayuntamiento de Teruel.",
        lugar: "Plaza del Tórico",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1304_quitada_panuelo.JPG",
        visible: true,
      ),
      Acto(
        icono: "icono_musica.png",
        titulo: "Peñas",
        hora: "24:00",
        descripcion: "Actos musicales en cada una de las peñas situadas por toda la ciudad, cada una con su estilo de música para que todo el mundo pueda elegir dónde divertirse",
        lugar: "Centro histórico",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1305_penas.JPG",
        visible: activarActos,
        fechaAparicion: DateTime.parse("2020-07-13 23:59:59"),
        listaVideos: [
          "https://www.youtube.com/watch?v=t5HtvW0ucRA&feature=youtu.be"
        ],
      ),
      Acto(
        icono: "icono_youtube.png",
        titulo: "Video Vaquillas 2021",
        hora: "24:00",
        descripcion: "Tras un año inusual, esperaremos con ansia e ilusión la celebración de las vaquillas del próximo año, con las ganas acumuladas de este año atípico.",
        lugar: "Teruel",
        precio: "",
        url_imagen_cabecera:
        "http://www.starglob.com/AppVaquilla/1306_vaquillas_2021.JPG",
        visible: activarActos,
        fechaAparicion: DateTime.parse("2020-07-14 00:04:59"),
        listaVideos: [
          "https://www.youtube.com/watch?v=wYNtAtRlDJg&feature=youtu.be"
        ],
      ),
    ],
  ),
];