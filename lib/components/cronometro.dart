import 'package:flutter/material.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '25:00',
            style: TextStyle(
              fontSize: 80,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
