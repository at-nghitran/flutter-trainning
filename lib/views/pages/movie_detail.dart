import 'package:flutter/material.dart';

class MovieDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Detail'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text('Detail'),
        ),
      ),
    );
  }
}
