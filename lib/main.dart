import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:coinkeeper/ui/views/homePage.dart';
import 'package:coinkeeper/ui/views/recordPage.dart';
import 'package:coinkeeper/ui/views/settingPage.dart';
import 'package:coinkeeper/ui/views/reportPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainApp createState() => _MainApp();
}

class _MainApp extends State<MainApp> {
  int _selectedIndex = 0;

  static const List<Widget> _router = <Widget>[
    HomePage(),
    RecordPage(),
    ReportPage(),
    SettingPage(),
  ];

  BottomNavigationBarItem _buildBottomBarItem(
      String label, String sourcePath, CustomStyle<double>? style) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        sourcePath,
        height: style?.height ?? 26,
        width: style?.width ?? 26,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        highlightColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 80, left: 40, right: 40),
          child: _router.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            _buildBottomBarItem(
                '账单', 'static/images/bottom1.svg', CustomStyle(26, 26)),
            _buildBottomBarItem(
                '流水', 'static/images/bottom2.svg', CustomStyle(26, 26)),
            _buildBottomBarItem(
                '成员', 'static/images/bottom3.svg', CustomStyle(26, 26)),
            _buildBottomBarItem(
                '设置', 'static/images/bottom4.svg', CustomStyle(24, 24)),
          ],
          selectedItemColor: Colors.amber[800],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class CustomStyle<T> {
  T? height;
  T? width;

  CustomStyle(this.height, this.width);
}
