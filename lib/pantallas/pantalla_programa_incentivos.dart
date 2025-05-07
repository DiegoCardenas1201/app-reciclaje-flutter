import 'package:flutter/material.dart';
import 'pantalla_puntos_historial.dart';

class PantallaProgramaIncentivos extends StatelessWidget {
  const PantallaProgramaIncentivos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Programa de Incentivos')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Gana puntos por reciclar',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Intercambia tus puntos por recompensas',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.stars, color: Colors.amber, size: 30),
                        SizedBox(width: 10),
                        Text(
                          'Tus puntos',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      '320',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Puntos disponibles',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => const PantallaPuntosHistorial(),
                          ),
                        );
                      },
                      child: const Text(
                        'Consultar puntos e historial',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Recompensas disponibles',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: [
                  _crearTarjetaRecompensa(
                    'Descuento 20%',
                    '150 pts',
                    Icons.local_offer,
                  ),
                  _crearTarjetaRecompensa(
                    'Producto gratis',
                    '250 pts',
                    Icons.card_giftcard,
                  ),
                  _crearTarjetaRecompensa(
                    'Entrada cine',
                    '300 pts',
                    Icons.movie,
                  ),
                  _crearTarjetaRecompensa(
                    'Cupón restaurante',
                    '200 pts',
                    Icons.restaurant,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearTarjetaRecompensa(String titulo, String puntos, IconData icono) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icono, size: 40, color: Colors.green),
            const SizedBox(height: 15),
            Text(
              titulo,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              puntos,
              style: const TextStyle(fontSize: 14, color: Colors.green),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 30),
              ),
              onPressed: () {},
              child: const Text('Canjear'),
            ),
          ],
        ),
      ),
    );
  }
}
