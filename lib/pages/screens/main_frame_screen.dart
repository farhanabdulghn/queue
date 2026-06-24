import 'package:example/pages/screens/home_screen.dart';
import 'package:example/pages/screens/profile_screen.dart';
import 'package:example/pages/screens/queue_screen.dart';
import 'package:flutter/material.dart';

class MainFrameScreen extends StatefulWidget {
  const MainFrameScreen({super.key});

  @override
  State<MainFrameScreen> createState() => _MainFrameScreenState();
}

class _MainFrameScreenState extends State<MainFrameScreen> {
  int _selected = 0;

  final _items = [HomeScreen(), QueueScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.queue), label: 'Antrian'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
        onTap: (value) => setState(() => _selected = value),
      ),
      body: _items[_selected],
    );
  }
}
