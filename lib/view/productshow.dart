import 'package:flutter/material.dart';
import 'package:foodapp/constants/colors.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Productshow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: MyAppColors.appColor,
          elevation: 0,
          title: Center(
            child: Text(
              'Product',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.more_vert_outlined,
                    size: 20, color: Colors.black),
                onPressed: () {})
          ],
        ),
        body: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
            ),
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black26)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Icon(Icons.more_vert)],
                      ),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: Image.asset(
                          'assets/images/logo8.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Burger",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                                SmoothStarRating(
                                    allowHalfRating: false,
                                    onRated: (v) {},
                                    starCount: 5,
                                    rating: 5,
                                    size: 15.0,
                                    isReadOnly: true,
                                    color: Colors.yellow,
                                    // borderColor: Colors.yellow,
                                    spacing: 0.0)
                              ],
                            ),
                            Text(
                              "\$15",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
