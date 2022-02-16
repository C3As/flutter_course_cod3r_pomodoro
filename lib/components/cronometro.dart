import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/cronometro_botao.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Observer(
      builder: (_) => Container(
        color: store.estaTrabalhando() ? Colors.red : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              store.estaTrabalhando()
                  ? 'Hora de Trabalho'
                  : 'Hora de Descansar',
              style: const TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}',
              style: const TextStyle(
                fontSize: 80,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (!store.iniciado)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CronometroBotao(
                        texto: 'Iniciar',
                        icone: Icons.play_arrow,
                        ativar: store.iniciar),
                  ),
                if (store.iniciado)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CronometroBotao(
                      texto: 'Parar',
                      icone: Icons.stop,
                      ativar: store.parar,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CronometroBotao(
                      texto: 'Reiniciar',
                      icone: Icons.refresh,
                      ativar: store.reiniciar),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
