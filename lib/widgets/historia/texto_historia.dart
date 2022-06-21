import 'package:flutter/material.dart';

class TextoHistoria extends StatelessWidget {
  const TextoHistoria({
    required this.texto,
    Key? key,
  }) : super(key: key);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                texto,
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            )
        )
      ],
    );
  }
}
