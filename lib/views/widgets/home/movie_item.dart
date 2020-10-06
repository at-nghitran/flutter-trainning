import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  final _textStyle = TextStyle(
    fontSize: 15,
    color: Colors.white54,
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        height: MediaQuery.of(context).size.width * 0.4,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF1e2022),
              ),
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.3 + 30,
                right: 10,
              ),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Spies in Disguise',
                      style: _textStyle.copyWith(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Action Advanture',
                            style: _textStyle,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Animation Comedy',
                            style: _textStyle,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                    Text(
                      '⭐ 7.2 | 30-09-2020 dsfdfdsf sdfsdf',
                      style: _textStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 15,
              top: 0,
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/en/4/45/Bloodshot_-_official_film_poster.jpeg'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
