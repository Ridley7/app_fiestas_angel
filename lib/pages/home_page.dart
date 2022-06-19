import 'package:app_fiestas_angel/common/HttpHandler.dart';
import 'package:app_fiestas_angel/models/programa.dart';
import 'package:app_fiestas_angel/widgets/home_page/carousel_superior.dart';
import 'package:app_fiestas_angel/widgets/home_page/section_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("La Vaquilla del Angel"),
      ),

      body: SafeArea(
        child: FutureBuilder(
          future: HttpHandler().getPrograma(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(!snapshot.hasData){
              return SizedBox(
                height: MediaQuery.of(context).hashCode * 0.4,
                child: Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              );
            }else{
              //Extraemos los datos del api aqui
              Programa programa = snapshot.data as Programa;
              return StaggeredGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                children: [
                  //Carrusel superior
                  CarouselSuperior(size: size, programa: programa),

                  //Seccion historia
                  SectionHome(
                    size: size,
                    cells: 2,
                    section_name: "Historia",
                    background_image: "secion_historia_vaquilla.jpg",
                  ),

                  //Seccion penas
                  SectionHome(
                      size: size,
                      cells: 1,
                      section_name: "Peñas",
                      background_image: 'seccion_penas.JPG'
                  ),

                  //Seccion notificaciones
                  SectionHome(
                      size: size,
                      cells: 1,
                      section_name: "Notificaciones",
                      background_image: 'seccion_notificaciones.JPG'
                  ),

                ],
              );
            }
          },
        )
      ),
    );
  }
}


/*
const _defaultColor = Color(0xFF34568B);

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    required this.index,
    this.extent,
    this.backgroundColor,
    this.bottomSpace,
  }) : super(key: key);

  final int index;
  final double? extent;
  final double? bottomSpace;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      color: backgroundColor ?? _defaultColor,
      height: extent,
      child: Center(
        child: CircleAvatar(
          minRadius: 20,
          maxRadius: 20,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          child: Text('$index', style: const TextStyle(fontSize: 20)),
        ),
      ),
    );

    if (bottomSpace == null) {
      return child;
    }

    return Column(
      children: [
        Expanded(child: child),
        Container(
          height: bottomSpace,
          color: Colors.green,
        )
      ],
    );
  }
}

class ImageTile extends StatelessWidget {
  const ImageTile({
    Key? key,
    required this.index,
    required this.width,
    required this.height,
  }) : super(key: key);

  final int index;
  final int width;
  final int height;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      //'https://picsum.photos/$width/$height?random=$index',
      //"https://cdn.pixabay.com/photo/2022/05/12/12/55/sunset-7191546_960_720.jpg",
      "https://cdn.pixabay.com/photo/2022/02/17/04/54/animal-7017939_960_720.jpg",
      width: width.toDouble(),
      height: height.toDouble(),
      fit: BoxFit.cover,
    );
  }
}

class InteractiveTile extends StatefulWidget {
  const InteractiveTile({
    Key? key,
    required this.index,
    this.extent,
    this.bottomSpace,
  }) : super(key: key);

  final int index;
  final double? extent;
  final double? bottomSpace;

  @override
  _InteractiveTileState createState() => _InteractiveTileState();
}

class _InteractiveTileState extends State<InteractiveTile> {
  Color color = _defaultColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (color == _defaultColor) {
            color = Colors.red;
          } else {
            color = _defaultColor;
          }
        });
      },
      child: Tile(
        index: widget.index,
        extent: widget.extent,
        backgroundColor: color,
        bottomSpace: widget.bottomSpace,
      ),
    );
  }
}
 */