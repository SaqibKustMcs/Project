import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebaseproject/constants/colors.dart';
import 'package:firebaseproject/view/helper.dart';
import 'package:firebaseproject/view/ownerdashboard.dart';
import 'package:flutter/material.dart';

class UserDashboard extends StatefulWidget {
  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  int _currentIndex = 0;
  int _counter = 0;
  List<DocumentSnapshot> myProducts = [];

  ///function definition
  getProducts() {
    FirebaseFirestore.instance
        .collection('productData')
        .where('uid', isEqualTo: getUserID())
        .get()
        .then((value) => value.docs.map((product) {
              myProducts.add(product);
              setState(() {});
            }).toList());
  }

  @override
  void initState() {
    getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OwnerDashboard()));
                      },
                    ),
                    Text(
                      "Hello Saqib!",
                      style: TextStyle(fontSize: 25, color: Colors.grey),
                    ),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.grey,
                      child: CircleAvatar(
                        child: Image.asset(
                          "assets/images/logo7.jpg",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Row(
                  children: [
                    Text(
                      "Todays",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [
                    Text(
                      "Special For You",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Container(
                      height: 50,
                      width: 270,
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Search",
                            disabledBorder: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: MyAppColors.appColor,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 10),
                    child: Container(
                      height: 50,
                      width: 65,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.menu,
                          color: MyAppColors.appColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 45,
                    width: 75,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'food',
                          style: TextStyle(
                            color: MyAppColors.appColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 75,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Fruits',
                          style: TextStyle(
                            color: MyAppColors.appColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 75,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Drinks',
                          style: TextStyle(
                            color: MyAppColors.appColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 75,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(),
                      child: Center(
                        child: Text(
                          'Others',
                          style: TextStyle(
                            color: MyAppColors.appColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('productData')
                      .where('uid', isEqualTo: getUserID())
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                        height: 270,
                        child: GridView.builder(
                            itemCount: myProducts.length,
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 240,
                            ),
                            itemBuilder: (context, i) {
                              return Container(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Card(
                                    elevation: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.grey[350],
                                            ),
                                            child: Image.asset(
                                              "assets/images/logo8.jpg",
                                              height: 50,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                  child: Text(snapshot
                                                      .data.docs[i]
                                                      .data()['productName']),
                                                ),
                                                Text(snapshot.data.docs[i]
                                                        .data()[
                                                    'productDescription']),
                                                Text(
                                                  "Price: \$${snapshot.data.docs[i].data()['productPrice']}",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          MyAppColors.appColor),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
