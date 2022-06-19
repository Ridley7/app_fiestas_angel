import 'package:app_fiestas_angel/models/acto.dart';
import 'package:flutter/material.dart';

class DetalleActo extends StatelessWidget {
  const DetalleActo({required this.acto, Key? key}) : super(key: key);

  final Acto acto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              foregroundDecoration: const BoxDecoration(color: Colors.black26),
              height: 400,
              child: Image.network(
                  acto.url_imagen_cabecera,
              fit: BoxFit.fill,),
            )
          ],
        ),
      ),
    );
  }
}
