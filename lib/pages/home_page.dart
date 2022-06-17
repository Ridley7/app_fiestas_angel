import 'package:app_fiestas_angel/common/HttpHandler.dart';
import 'package:app_fiestas_angel/models/programa.dart';
import 'package:app_fiestas_angel/widgets/home_page/carousel_superior.dart';
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
                  CarouselSuperior(size: size, programa: programa),

                  StaggeredGridTile.extent(
                      mainAxisExtent: (size.height * 0.9) / 3,
                      crossAxisCellCount: 1,
                      child: Tile(index: 1,)
                  ),

                  StaggeredGridTile.extent(
                      mainAxisExtent: (size.height * 0.9) / 3,
                      crossAxisCellCount: 1,
                      child: Tile(index: 2)
                  ),

                  StaggeredGridTile.extent(
                      mainAxisExtent: (size.height * 0.9) / 3,
                      crossAxisCellCount: 1,
                      child: Tile(index: 3)
                  ),

                  StaggeredGridTile.extent(
                      mainAxisExtent: (size.height * 0.9) / 3,
                      crossAxisCellCount: 1,
                      child: ImageTile(index: 4, width: 100, height: 100)
                  ),
                ],
              );
            }
          },
        )

            /*
        StaggeredGrid.count(
            crossAxisCount: 2,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
          children: [

            //Seccion programa
            Stack(
              children: [
                Positioned(
                  bottom: 0,
                    left: 0,
                    right: 0,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        enableInfiniteScroll: false,
                        initialPage: 0,
                        autoPlay: false
                      ),

                      items: ProgramaActos.map((item) {
                        return Container(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Stack(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  print("Pulsando sobre ${ProgramaActos.indexOf(item)}");
                                },

                                child: Container(
                                  child: Image.network(
                                    //item.url_background,
                                    "https://cdn.pixabay.com/photo/2022/05/12/12/55/sunset-7191546_960_720.jpg",
                                    fit: BoxFit.cover,
                                    width: 1000.0,
                                  ),
                                ),
                              ),

                              Positioned(
                                bottom: 0.0,
                                  left: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(200, 0, 0, 0),
                                          Color.fromARGB(0, 0, 0, 0)
                                        ],
                                        begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter
                                      ),
                                    ),

                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0
                                    ),
                                    child: const Text(
                                      //item.fecha,
                                      "3 de Julio",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                              )


                            ],
                          ),
                        ),
                      );
                      }).toList()
                    ),
                ),

                Positioned(
                  top: 50.0,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.red),
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      child: const Text(
                        'Programa',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                )

              ],
            )

          ],

        ),

        */
      ),
    );
  }
}



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