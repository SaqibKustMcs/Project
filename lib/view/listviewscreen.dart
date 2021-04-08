import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('dashboard'),
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Users',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Card(
                          elevation: 5,
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage:
                                  AssetImage('assets/listview/logo7.jpg'),
                            ),
                            title: Row(
                              children: [
                                Text(
                                  'Muhammad Saqib',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: SmoothStarRating(
                                      allowHalfRating: false,
                                      onRated: (v) {},
                                      starCount: 5,
                                      rating: 5,
                                      size: 13.0,
                                      isReadOnly: true,
                                      color: Colors.green,
                                      borderColor: Colors.green,
                                      spacing: 0.0),
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('(5)'))
                              ],
                            ),
                            subtitle: Text('My full name is Muhammad Saqib'),
                          ),
                        ),
                      );
                    }))
          ],
        ));
  }
}
