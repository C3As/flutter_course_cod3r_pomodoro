import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final Function()? ativar;
  const CronometroBotao(
      {Key? key, required this.texto, required this.icone, this.ativar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        textStyle: const TextStyle(
          fontSize: 15,
        ),
      ),
      onPressed: ativar,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(
              icone,
              size: 25,
            ),
          ),
          Text(texto),
        ],
      ),
    );
  }
}
