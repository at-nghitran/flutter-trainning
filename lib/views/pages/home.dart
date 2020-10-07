import 'package:flutter/material.dart';
import 'package:flutter_driving/utils/constants/index.dart';
import 'package:flutter_driving/views/pages/search.dart';
import 'package:flutter_driving/views/widgets/home/index.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Numbers.appPadding,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                bottom: 15,
                top: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Popular Movie',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    padding: const EdgeInsets.all(0.0),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => SearchPage()),
                      );
                    },
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (_, index) => MovieItem(),
                separatorBuilder: (_, index) => SizedBox(height: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
