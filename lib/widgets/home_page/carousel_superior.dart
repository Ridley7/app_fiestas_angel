import 'package:app_fiestas_angel/models/programa.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CarouselSuperior extends StatelessWidget {
  const CarouselSuperior({
    Key? key,
    required this.size,
    required this.programa,
  }) : super(key: key);

  final Size size;
  final Programa programa;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.extent(
        mainAxisExtent: (size.height * 0.85) / 3 ,
        crossAxisCellCount: 2,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  initialPage: 0,
                  autoPlay: false,
                ),
                items: programa.lista_programa.map((item) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Stack(
                    children: [
                      GestureDetector(
                        child: Image.network(
                          item.url_background,
                        ),
                        onTap: (){
                          print("Pulsando la imagen numero ${programa.lista_programa.indexOf(item)}");
                        },
                      ),

                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0
                            ),
                            child: Text(
                              item.fecha,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                )).toList(),
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
    );
  }
}