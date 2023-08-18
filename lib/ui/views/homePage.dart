import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(40),
        child: const Text('123'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildBottomBarItem('流水'),
              _buildBottomBarItem('流水'),
              _buildBottomBarItem('流水'),
              _buildBottomBarItem('流水'),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildBottomBarItem(String label) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(label),
        )
      ],
    );
  }
}
