import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_driving/models/movie.dart';
import 'package:flutter_driving/utils/constants/index.dart';
import 'package:flutter_driving/views/widgets/movie_detail/cast_list.dart';

class MovieDetailPage extends StatelessWidget {
  final Movie movie;
  MovieDetailPage({this.movie});
  @override
  Widget build(BuildContext context) {
    Movie _movie = Movie(
      id: 12321312312,
      title: 'Joker',
      overview:
          'The film also features insights from commentators and thinkers on the wider implications and importance of this understanding for society, and our relationship to the environment.',
      backdropPath:
          'https://upload.wikimedia.org/wikipedia/en/4/45/Bloodshot_-_official_film_poster.jpeg',
    );
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      child: CachedNetworkImage(
                        imageUrl: _movie.backdropPath,
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                Shimmer.fromColors(
                          baseColor: Colors.grey[500],
                          highlightColor: Colors.grey[100],
                          child: Container(
                            height: double.infinity,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        errorWidget: (context, url, error) => Icon(
                          Icons.error,
                          color: AppColors.dark_red,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      top: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.6),
                              Colors.transparent,
                            ],
                            tileMode: TileMode.repeated,
                            stops: [
                              0.2,
                              0.4,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: HeaderText(
                              text: _movie.title,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite_outline,
                                  color: AppColors.dark_red,
                                  size: 18,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '1245',
                                  style: TextStyle(color: Colors.white60),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      HeaderText(
                        text: 'Storyline',
                      ),
                      Text(
                        _movie.overview,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                      HeaderText(
                        text: 'Cast & Crue',
                      ),
                      CastList()
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            child: InkWell(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              onTap: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  final String text;
  const HeaderText({
    Key key,
    @required String text,
  })  : text = text,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
