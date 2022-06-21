import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SectionHome extends StatelessWidget {
  const SectionHome({
    Key? key,
    required this.size,
    required this.cells,
    required this.section_name,
    required this.background_image,
    required this.ruta,

  }) : super(key: key);

  final Size size;
  final int cells;
  final String section_name;
  final String background_image;
  final String ruta;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.extent(
        mainAxisExtent: (size.height * 0.9) / 3,
        crossAxisCellCount: cells,
        child: GestureDetector(
          onTap: (){
            //Ruta a la seccion de historia.
            Navigator.pushNamed(context, ruta);
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/${background_image}')
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                    top: 50,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.red),
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Text(
                        section_name,
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
          ),
        )
    );
  }
}

