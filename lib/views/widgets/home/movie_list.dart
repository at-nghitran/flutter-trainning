import 'package:flutter/material.dart';

import 'package:flutter_driving/utils/constants/index.dart';
import 'package:flutter_driving/views/widgets/home/index.dart';

class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Numbers.appPadding),
      color: Color(0xff000000),
      child: ListView.separated(
        itemCount: 15,
        itemBuilder: (_, index) => MovieItem(),
        separatorBuilder: (_, index) => SizedBox(height: 20),
      ),
    );
  }
}
