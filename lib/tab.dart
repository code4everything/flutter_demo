import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final List<Widget> _pageList = [
    const HomePage(),
    const StatisticsPage(),
    const MyPage(),
  ];

  final List<BottomNavigationBarItem> _barItem = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
    const BottomNavigationBarItem(icon: Icon(Icons.list), label: '统计'),
    const BottomNavigationBarItem(icon: Icon(Icons.people), label: '我的'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pageList[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int idx) {
            setState(() {
              _currentIndex = idx;
            });
          },
          currentIndex: _currentIndex,
          items: _barItem,
          fixedColor: Colors.pink,
          selectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageContent("首页");
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageContent("我的");
  }
}

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageContent("统计");
  }
}

class PageContent extends StatelessWidget {
  final String title;

  const PageContent(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}
