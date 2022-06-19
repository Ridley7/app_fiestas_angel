import 'package:app_fiestas_angel/models/item_programa.dart';
import 'package:app_fiestas_angel/pages/detalle_acto.dart';
import 'package:flutter/material.dart';

class ListaActos extends StatelessWidget {
  const ListaActos({
    Key? key,
    required this.programa,
  }) : super(key: key);

  final ItemPrograma programa;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
          child: ListView.builder(
              itemCount: programa.listaActos.length,
              itemBuilder: (context, index){
                var acto = programa.listaActos[index];

                //Si el acto no es visible, debemos hacer la distincion aqui
                return Column(
                  children: [
                    ListTile(
                      leading: Image.asset('assets/images/${acto.icono}'),
                      title: Text(acto.titulo),
                      subtitle: Text(acto.hora),
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetalleActo(acto: acto)
                            )
                        );
                      },
                    ),

                    const Divider(
                      thickness: 5.0,
                    )
                  ],
                );

              }
          )
      ),
    );
  }
}
