import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MovieLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[500],
      highlightColor: Colors.grey[100],
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (_, index) => Container(
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
                  color: Colors.black12,
                ),
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.3 + 30,
                  right: 10,
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
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (_, index) => SizedBox(height: 20),
      ),
    );
  }
}
