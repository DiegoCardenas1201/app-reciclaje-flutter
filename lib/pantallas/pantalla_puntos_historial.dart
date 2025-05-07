import 'package:flutter/material.dart';

class PantallaPuntosHistorial extends StatelessWidget {
  const PantallaPuntosHistorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Puntos e Historial')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Text(
                      'Puntos acumulados',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '320',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _crearInfoPuntos('Ganados', '350'),
                        _crearInfoPuntos('Canjeados', '30'),
                        _crearInfoPuntos('Disponibles', '320'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Historial de reciclaje',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _crearItemHistorial(
                    '15/05/2023',
                    'Plástico',
                    '5 kg',
                    '50 pts',
                  ),
                  _crearItemHistorial('10/05/2023', 'Vidrio', '3 kg', '30 pts'),
                  _crearItemHistorial('05/05/2023', 'Papel', '7 kg', '70 pts'),
                  _crearItemHistorial('28/04/2023', 'Metal', '4 kg', '40 pts'),
                  _crearItemHistorial(
                    '20/04/2023',
                    'Plástico',
                    '6 kg',
                    '60 pts',
                  ),
                  _crearItemHistorial(
                    '15/04/2023',
                    'Electrónicos',
                    '2 kg',
                    '100 pts',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearInfoPuntos(String etiqueta, String valor) {
    return Column(
      children: [
        Text(
          etiqueta,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 5),
        Text(
          valor,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _crearItemHistorial(
    String fecha,
    String material,
    String peso,
    String puntos,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fecha,
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
                const SizedBox(height: 5),
                Text(
                  material,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(peso, style: const TextStyle(fontSize: 14)),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.green.withAlpha(51),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                puntos,
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
