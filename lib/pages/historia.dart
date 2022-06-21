import 'package:app_fiestas_angel/widgets/historia/texto_historia.dart';
import 'package:flutter/material.dart';

class Historia extends StatelessWidget {
  const Historia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Historia"),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    child: Image.network("https://cdn.pixabay.com/photo/2022/06/18/18/05/skateboard-7270418_960_720.jpg"),
                  )
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              const TextoHistoria(
                texto: "La Vaquilla del Ángel es la fiesta tradicional de mayor arraigo en la ciudad de Teruel cuyo origen se pierde en la noche de los tiempos.",
              ),

              const SizedBox(
                height: 10,
              ),

              const TextoHistoria(
                texto: "Hay diferentes teorías sobre la misma. Lo que parece que está claro es que hunde sus raíces en época medieval y que ha ido transformándose a lo largo de la historia. Desde las fiestas de toros que se hicieron para el 18 de junio de 1397 con motivo de la visita a Teruel del rey martín I el Humano, a el toro que pagaba una acaudalada familia de la localidad que compraba un toro, se corría por las calles y después se comía en hermandad. También tiene su origen la fiesta en motivos religiosos, así en el Libro Verde o Alcorán, nos da las pautas de las celebraciones religiosas, con la Salve al Ángel Custodio y misa celebrada por el capítulo de Racioneros.",
              ),

              const SizedBox(
                height: 10,
              ),

              const TextoHistoria(
                  texto: "Con esos antecedentes y diversas épocas de prohibición a lo largo de la historia, llegamos a nuestros días en el que La Vaquilla del Ángel es una fiesta variable en el calendario y se desarrolla el segundo domingo después de San Pedro, o el más próximo a San Cristóbal, en el mes de julio, desde el sábado al lunes."
              ),

              const SizedBox(
                height: 10,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

