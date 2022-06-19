import 'package:app_fiestas_angel/models/acto.dart';
import 'package:app_fiestas_angel/models/item_programa.dart';
import 'package:app_fiestas_angel/widgets/detalle_programa/lista_actos.dart';
import 'package:flutter/material.dart';

class DetallePrograma extends StatelessWidget {

  final ItemPrograma programa;

  const DetallePrograma({Key? key, required this.programa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(programa.fecha),
      ),

      body: SafeArea(
        child: Column(
          children: [
            //Imagen de cabecera
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Image.network(
                  programa.url_background,
                fit: BoxFit.contain,
              ),
            ),

            //Lista del programa
            ListaActos(programa: programa)
          ],
        ),
      )
    );
  }
}

