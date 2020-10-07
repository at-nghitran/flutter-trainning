import 'package:flutter/material.dart';
import 'package:flutter_driving/views/widgets/home/index.dart';

class SearchPage extends StatelessWidget {
  final TextStyle _inputTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 19,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 25.0,
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff222323),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      style: _inputTextStyle,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                          top: 8,
                          bottom: 8,
                          left: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Search',
                        hintStyle:
                            _inputTextStyle.copyWith(color: Colors.white30),
                        suffixIcon: InkWell(
                          onTap: () {},
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 15,
                itemBuilder: (_, index) => MovieItem(),
                separatorBuilder: (_, index) => SizedBox(height: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
