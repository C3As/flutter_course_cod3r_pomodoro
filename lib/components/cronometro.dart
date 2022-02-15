import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro_botao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            '25:00',
            style: TextStyle(
              fontSize: 80,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CronometroBotao(texto: 'Iniciar', icone: Icons.play_arrow),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CronometroBotao(texto: 'Parar', icone: Icons.stop),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CronometroBotao(texto: 'Reiniciar', icone: Icons.refresh),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
