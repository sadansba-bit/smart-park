import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// بيانات الألعاب
    final List<Map<String, String>> games = [
      {'name': 'Cars', 'type': 'Motion Game'},
      {'name': 'Train', 'type': 'Motion Game'},
      {'name': 'Horses', 'type': 'Motion Game'},
      {'name': 'Flying Ride', 'type': 'Extreme Game'},
      {'name': 'Management', 'type': 'Park Admin'},
      {'name': 'Exhibit', 'type': 'Culture / Show'},
      {'name': 'AR Games', 'type': 'Tech Game'},
      {'name': 'Circus', 'type': 'Live Show'},
      {'name': 'Restaurants', 'type': 'Services'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wasam Map'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Stack(
          children: [
// الخلفية
            Positioned.fill(
              child: Container(
                color: Colors.lightBlueAccent.shade100,
              ),
            ),

// الجهة اليسرى
            Positioned(
              left: 20,
              top: 200,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    _gameWidget(games[0], Colors.red),
                    _gameWidget(games[1], Colors.orange),
                    _gameWidget(games[2], Colors.purple),
                    _gameWidget(games[3], Colors.green),
                  ],
                ),
              ),
            ),

// الجهة اليمنى
            Positioned(
              right: 20,
              top: 200,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    _gameWidget(games[4], Colors.blue),
                    _gameWidget(games[5], Colors.teal),
                    _gameWidget(games[6], Colors.brown),
                  ],
                ),
              ),
            ),

// الجزء العلوي
            Positioned(
              left: 100,
              top: 50,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    _gameWidget(games[7], Colors.pink),
                    _gameWidget(games[8], Colors.amber),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gameWidget(Map<String, String> game, Color color) {
    IconData icon;

    switch (game['name']) {
      case 'Cars':
        icon = Icons.directions_car;
        break;
case 'Train':
  icon = Icons.train;
  break;
case 'Horses':
  icon = Icons.pets;
  break;
case 'Flying Ride':
  icon = Icons.air;
  break;
case 'Management':
  icon = Icons.business;
  break;
case 'Exhibit':
  icon = Icons.museum;
  break;
case 'AR Games':
  icon = Icons.vrpano;
  break;
case 'Circus':
  icon = Icons.emoji_people;
  break;
case 'Restaurants':
  icon = Icons.restaurant;
  break;
default:
  icon = Icons.toys;
 }
 return Container(
   margin: const EdgeInsets.symmetric(vertical: 6),
   padding: const EdgeInsets.all(6),
   decoration: BoxDecoration(
     color: Colors.white,
     borderRadius: BorderRadius.circular(8),
     boxShadow: [
       BoxShadow(
         color: Colors.grey.withOpacity(0.3),
         blurRadius: 4,
         offset: const Offset(2, 2),
        ),
      ],
    ),
    child: Column(
      children: [
        Icon(icon, size: 40, color: color),
        const SizedBox(height: 4),
        Text(
          game['name'] ?? '',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          game['type'] ?? '',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade700,
          ),
        ),
      ],
    ),
  );
 }
}

