import 'package:flutter/material.dart';
import 'package:flutter_driving/utils/constants/colors.dart';
import 'package:flutter_driving/views/widgets/home/index.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex;
  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  _changePage(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> _bodyList = [
    MovieList(),
    SearchList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentIndex == 0 ? 'Popular Movie' : 'Search Result'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _changePage,
        selectedItemColor: AppColors.dark_red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
      body: _bodyList[_currentIndex],
    );
  }
}
