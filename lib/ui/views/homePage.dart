import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Increment Counter',
        backgroundColor: Colors.orange,
        child: SvgPicture.asset(
          'static/images/plus.svg',
          height: 28,
          width: 28,
        ),
      ),
      body: Column(children: [
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                '默认账单',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '2023年12月22日',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: const Color(0xFFEEEEE4),
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                child: Text(
                  '收支日历',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
        Card(
          margin: const EdgeInsets.only(top: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('123'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
