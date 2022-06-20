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
              fit: BoxFit.fill,
              ),
            ),

            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 16, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 210,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5.0),
                    child: Text(
                      acto.titulo,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.all(32),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children:[
                                          const WidgetSpan(
                                              child: Icon(
                                                Icons.location_on,
                                                size: 20.0,
                                                color: Colors.red,
                                              )
                                          ),
                                          TextSpan(text: acto.lugar)
                                        ]
                                      ),
                                      style: const TextStyle(
                                        color: Colors.black, fontSize: 16
                                      ),
                                    ),
                                  ],
                                ),
                            ),

                            acto.precio != "" ?
                            Column(
                              children: [
                                Text(
                                  "${acto.precio}€",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0
                                  ),
                                ),
                              ],
                            ) :
                            Container()
                          ],
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            onPressed: (){

                            },
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20
                              ),
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15)
                            ),

                            child: const Text(
                              "Compartir",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                                color: Colors.white
                              ),
                            ),
                          )
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        const Text(
                          "DESCRIPCIÓN",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        Text(
                          acto.descripcion,
                          style: const TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14
                          ),
                          textAlign: TextAlign.left,
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        //Aqui vendrian lista de videos

                        //Aqui vendria lista de imagenes



                      ],
                    ),
                  )
                ],
              ),
            ),

            Positioned(
              top: 0,
                left: 0,
                right: 0,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  centerTitle: true,
                  title: const Text(
                    "Detalles",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                )
            )

          ],
        ),
      ),
    );
  }
}
