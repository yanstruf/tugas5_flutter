import 'package:flutter/material.dart';

class StateDay12 extends StatefulWidget {
  const StateDay12({super.key});

  @override
  State<StateDay12> createState() => _State2Day12State();
}

class _State2Day12State extends State<StateDay12> {
  bool showName = false;
  bool showFavorite = false;
  String name = 'Sofyan Alamsyah';
  String favorite = 'Disuka';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Interaksi')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(showName ? 'Nama Saya: $name' : ''),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  setState(() {
                    showName = !showName;
                  });
                },
                onLongPress: () {
                  print('Nama Saya: Sofyan Alamsyah');
                },
                child: Text(
                  'Tampilkan Nama',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            GestureDetector(
              onTap: () {
                setState(() {
                  showFavorite = !showFavorite;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.favorite,
                    color: showFavorite ? Colors.red : Colors.grey,
                    size: 30,
                  ),
                  const SizedBox(height: 5),

                  if (showFavorite)
                    const Text(
                      '',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 175, 172, 172),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
            ),
            Text(showFavorite ? 'Disuka' : ''),
          ],
        ),
      ),
    );
  }
}
