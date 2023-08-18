import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class CustomStyle<T> {
  T? height;
  T? width;

  CustomStyle(this.height, this.width);
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
              _buildBottomBarItem(
                  '流水1', 'static/images/bottom1.svg', CustomStyle(26, 26)),
              _buildBottomBarItem(
                  '流水1', 'static/images/bottom2.svg', CustomStyle(26, 26)),
              _buildBottomBarItem(
                  '流水1', 'static/images/bottom3.svg', CustomStyle(26, 26)),
              _buildBottomBarItem(
                  '流水1', 'static/images/bottom4.svg', CustomStyle(24, 24)),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildBottomBarItem(
      String label, String sourcePath, CustomStyle<double>? style) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: SvgPicture.asset(
            sourcePath,
            height: style?.height ?? 26,
            width: style?.width ?? 26,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
